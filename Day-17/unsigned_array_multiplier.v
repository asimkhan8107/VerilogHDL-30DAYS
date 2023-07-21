`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2023 14:26:46
// Design Name: 
// Module Name: unsigned_array_multiplier
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


module unsigned_array_multiplier(product, A, B);
    output [7:0] product;
    input [3:0] A, B;
    
    wire [14:0] W;
    wire [10:0] C;
    wire [5:0] S;
    
    and and00 (W[0], A[0], B[1]);
    and and01 (W[1], A[0], B[2]);
    and and02 (W[2], A[0], B[3]);
    and and03 (W[3], A[1], B[0]);
    and and04 (W[4], A[1], B[1]);
    and and05 (W[5], A[1], B[2]);
    and and06 (W[6], A[1], B[3]);
    and and07 (W[7], A[2], B[0]);
    and and08 (W[8], A[2], B[1]);
    and and09 (W[9], A[2], B[2]); 
    and and10 (W[10], A[2], B[3]);
    and and11 (W[11], A[3], B[0]);
    and and12 (W[12], A[3], B[1]);
    and and13 (W[13], A[3], B[2]);
    and and14 (W[14], A[3], B[3]);
    // LSB is calculated here
    and and15 (product[0], A[0], B[0]);
    
    // first row - bit 1 of the product
    half_adder ha01(product[1], C[0], W[0], W[3]);
    full_adder fa01(S[0], C[1], W[1], W[4], C[0]);
    full_adder fa02(S[1], C[2], W[2], W[5], C[1]);
    half_adder ha02(S[2], C[3], W[6], C[2]);
        
    // mext row
    half_adder ha03(product[2], C[4], W[7], S[0]);
    full_adder fa03(S[3], C[5], W[8], S[1], C[4]);
    full_adder fa04(S[4], C[6], W[9], S[2], C[5]);
    full_adder fa05(S[5], C[7], W[10], C[3], C[6]);
    
        
    // next row
    half_adder ha04(product[3], C[8], W[11], S[3]);
    full_adder fa06(product[4], C[9], W[12], S[4], C[8]);
    full_adder fa07(product[5], C[10], W[13], S[5], C[9]);
    full_adder fa08(product[6], product[7], W[14], C[7], C[10]);
    
endmodule
