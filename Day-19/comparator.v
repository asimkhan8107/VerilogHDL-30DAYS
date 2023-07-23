`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2023 09:24:01
// Design Name: 
// Module Name: comparator
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


module comparator(
    input [3:0] A,
    input [3:0] B,
    output AgreaterB, AequalB, AlessB
    );
    
    assign AgreaterB = (A > B);
    assign AequalB = (A == B);
    assign AlessB = (A < B);
    
endmodule
