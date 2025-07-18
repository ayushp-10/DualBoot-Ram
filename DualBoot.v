`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2025 02:00:26 AM
// Design Name: 
// Module Name: DualBoot
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DualBoot (
    input wire clk,
    input wire [3:0] add_a, add_b,
    input wire [7:0] datain_a, datain_b,
    input wire en_a, en_b,
    output reg [7:0] data_out_a,
    output reg [7:0] data_out_b
);

    reg [7:0] ram [15:0];

   
    always @(posedge clk) begin
        if (en_a)
            ram[add_a] <= datain_a;
        else
            data_out_a <= ram[add_a];
    end

always @(posedge clk) begin
        if (en_b)
            ram[add_b] <= datain_b;
        else
            data_out_b <= ram[add_b];
    end

endmodule

