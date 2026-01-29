// ✅ GOOD: Organized testbench with clear phases
class my_test extends uvm_test;
  `uvm_component_utils(my_test)
  
  my_env env;
  my_config cfg;
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    cfg = my_config::type_id::create("cfg");
    env = my_env::type_id::create("env", this);
  endfunction
  
  virtual task run_phase(uvm_phase phase);
    my_sequence seq;
    phase.raise_objection(this);
    
    seq = my_sequence::type_id::create("seq");
    seq.start(env.agent.sequencer);
    
    #1000; // Wait for stimulus to complete
    phase.drop_objection(this);
  endtask
endclass
