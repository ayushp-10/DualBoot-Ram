`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module DualBoot_tb;

    reg clk;
    reg [3:0] add_a;
    reg [3:0] add_b;
    reg [7:0] datain_a;
    reg [7:0] datain_b;
    reg en_a;
    reg en_b;
    wire [7:0] data_out_a;
    wire [7:0] data_out_b;

    DualBoot dut(
        .clk(clk),
        .add_a(add_a),
        .add_b(add_b),
        .datain_a(datain_a),
        .datain_b(datain_b),
        .en_a(en_a),
        .en_b(en_b),
        .data_out_a(data_out_a),
        .data_out_b(data_out_b)
    );

    always #5 clk = ~clk;

    initial begin
       

        clk = 0;
        en_a = 0; en_b = 0;
        datain_a = 0; datain_b = 0;
        add_a = 0; add_b = 0;


        #10;
        add_a = 4'd2; datain_a = 8'd21; en_a = 1;
        add_b = 4'd3; datain_b = 8'd34; en_b = 1;
        #10;

        
        en_a = 0; en_b = 0;
        #10;
        add_a = 4'd2;
        add_b = 4'd3;
        #10;

        
        add_a = 4'd5; datain_a = 8'hAA; en_a = 1;
        add_b = 4'd5; datain_b = 8'hBB; en_b = 1;
        #10;
        en_a = 0; en_b = 0;

       
        add_a = 4'd5;
        add_b = 4'd5;
        #10;

       
        add_a = 4'd7;
        add_b = 4'd8;
        #10;

       
        add_a = 4'd9; datain_a = 8'd99; en_a = 1;
        #10;
        en_a = 0;
        add_b = 4'd9; en_b = 0; 
        #10;


        add_a = 4'd10; datain_a = 8'd111; en_a = 1;
        #10;
        en_a = 0;
        add_b = 4'd10; datain_b = 8'd222; en_b = 1;
        #10;
        en_b = 0;

        
        add_a = 4'd10;
        add_b = 4'd10;
        #10;

      
        add_a = 4'd2;
        add_b = 4'd3;
        #10;

        $finish;
    end

endmodule

