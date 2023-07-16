`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2023 15:24:23
// Design Name: 
// Module Name: fulladder
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


module fulladder(a,b,c_in,sum,c_out);
    input a, b, c_in;
    output sum, c_out;

    reg sum, c_out;
    always @ (a,b,c_in)
    begin
        {c_out,sum} = a + b + c_in;
    end    
endmodule
