# Design Specification: [Module Name]

## 1. Overview
- **Purpose**: [One-sentence purpose]
- **Scope**: What this module does (and does NOT do)
- **Owner**: [Name, email]
- **Status**: [In Progress | Review | Approved]

## 2. Functional Requirements
- [Requirement 1]
- [Requirement 2]
- ...

## 3. Interface
### Inputs
| Signal | Width | Type | Description |
|--------|-------|------|-------------|
| clk | 1 | CLK | Clock |
| rst_n | 1 | RST | Active-low reset |

### Outputs
| Signal | Width | Type | Description |
|--------|-------|------|-------------|
| ready | 1 | Logic | Module ready flag |

## 4. Architecture
[Block diagram ASCII or link to tool-generated image]

## 5. Timing Assumptions
- Input setup time: [X ns]
- Output latency: [Y cycles]
- Frequency target: [Z MHz]

## 6. Known Issues / Constraints
- [Issue 1 with mitigation]
- [Issue 2 with mitigation]

## 7. Verification Plan
- [Test scenario 1]
- [Test scenario 2]

## 8. Revision History
| Version | Date | Author | Changes |
