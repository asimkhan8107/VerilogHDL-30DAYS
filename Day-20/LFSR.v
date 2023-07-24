`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2023 23:36:07
// Design Name: 
// Module Name: LFSR
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


module LFSR(
    input clk, rst,
    output reg [3:0] q
    );
    
    always@(posedge clk)
    begin
        if(rst)
            q <= 4'b1111;
        else
            q <= { q[2:0], (q[3] ^ q[0])};
    end
endmodule
