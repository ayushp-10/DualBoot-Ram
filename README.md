This project contains a Verilog implementation of a Dual Port RAM module named DualBoot. It allows simultaneous read and write operations through two independent ports (Port A and Port B).
 
 
 Features
1)Two separate read/write ports:
add_a, datain_a, data_out_a, en_a
add_b, datain_b, data_out_b, en_b
2)Both ports can access the memory at the same time.
3)Uses a single shared RAM block (reg [7:0] ram [15:0]) internally.\
4)Clocked write operations using posedge clk.

 Testbench Behavior
1)Performs write and read operations from both ports.
2)Demonstrates simultaneous access to different and same addresses.
3)Tests enable/disable conditions for both ports.
