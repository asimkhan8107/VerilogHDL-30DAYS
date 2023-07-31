`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2023 19:38:38
// Design Name: 
// Module Name: tb_arbiter
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


module tb_arbiter();
    reg clk,rst;
    wire [2:0] out;
    
    arbiter dut(.out(out), .clk(clk), .rst(rst));
    
    always #20 clk = ~clk;
    
    initial
    begin
        clk = 0;
        rst = 1;
        
        #40 
        rst = 0;
        
        #500
        $finish;
    end    
endmodule
