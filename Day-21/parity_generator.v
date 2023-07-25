`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2023 12:10:50
// Design Name: 
// Module Name: parity_generator
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


module parity_generator(
    input [3:0] d_in,
    output [3:0] d_out,
    output parity
    );
    
    assign parity = d_in[0] ^ d_in[1] ^ d_in[2] ^ d_in[3];
    assign d_out = {d_in, parity};
    
endmodule
