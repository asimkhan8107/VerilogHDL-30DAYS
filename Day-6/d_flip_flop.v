`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2023 12:28:12
// Design Name: 
// Module Name: d_flip_flop
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


module d_flip_flop(
    input clk,rst,
    input d_in,
    output reg q_out,
    output qbar_out
    );
    
    always@(posedge clk)    //synchronous reset
    begin
        if(rst)
            q_out <= 0;
        else
            q_out <= d_in;
    end
    
    assign qbar_out = ~q_out;
    
endmodule: d_flip_flop
