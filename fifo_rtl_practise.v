// ✅ GOOD: Clear, maintainable, synthesizable
module fifo (
  input clk, rst_n,
  input [WIDTH-1:0] data_in,
  input wr_en, rd_en,
  output [WIDTH-1:0] data_out,
  output full, empty
);
  // Registered outputs
  reg [WIDTH-1:0] data_out;
  reg full, empty;
  
  // Internal state with clear naming
  reg [PTR_WIDTH-1:0] wr_ptr, rd_ptr;
  
  // Comments for non-obvious logic
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      wr_ptr <= 0;
      rd_ptr <= 0;
    end else begin
      // Increment write pointer on write
      if (wr_en && !full) wr_ptr <= wr_ptr + 1;
      // Increment read pointer on read
      if (rd_en && !empty) rd_ptr <= rd_ptr + 1;
    end
  end
  
  // Empty/full generation (example)
  assign empty = (wr_ptr == rd_ptr);
  assign full = (wr_ptr[PTR_WIDTH-1:0] == rd_ptr[PTR_WIDTH-1:0]) &&
                (wr_ptr[PTR_WIDTH] != rd_ptr[PTR_WIDTH]);
endmodule
