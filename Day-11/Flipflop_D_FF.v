`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name: Flipflop_D_FF
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


module D_ff(q, d, clk, reset);
    input d, clk, reset;
    output q;
    reg q;
    always@(negedge clk, posedge reset)
    if(reset)
        q <= 1'b0;
    else
        q <= d;     
endmodule
