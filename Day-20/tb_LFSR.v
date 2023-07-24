`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2023 23:42:25
// Design Name: 
// Module Name: tb_LFSR
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


module tb_LFSR();
    reg clk, rst;
    wire [3:0] q;
    
    LFSR dut(.clk(clk), .rst(rst), .q(q));
    
    always #20 clk = ~clk;
    initial
    begin
        clk = 0;
        rst = 1;
        
        #40 rst = 0;
        #100
        $finish;
    end
endmodule
