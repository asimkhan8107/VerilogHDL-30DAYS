`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2023 15:33:26
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(a,b,sum,c_out);
    input [7:0] a, b;
    output [7:0] sum;
    output c_out;
    
    wire c1,c2,c3;
    
    fulladder fa0 (a[0], b[0], 0, sum[0] , c1);    //initialy c_in = 0
    fulladder fa1 (a[1], b[1], c1, sum[1], c2);
    fulladder fa2 (a[2], b[2], c2, sum[2], c3);
    fulladder fa3 (a[3], b[1], c3, sum[3], c4);
    fulladder fa4 (a[4], b[4], c4, sum[4], c5);
    fulladder fa5 (a[5], b[5], c5, sum[5], c6);
    fulladder fa6 (a[6], b[6], c6, sum[6], c7);
    fulladder fa7 (a[7], b[7], c7, sum[7], c_out);
     
endmodule
