`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2023 14:42:28
// Design Name: 
// Module Name: t_flip_flop
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


module t_flip_flop(
    input clk, rst,
    input t_in,
    output reg t_out,
    output tbar_out
    );
    
    always@(posedge clk)    // positive edge and synchronous reset
    begin
        if(rst)
            t_out <= 0;
        else
            case(t_in)
                1'b0: t_out <= t_out;
                default: t_out <= ~t_out;
            endcase
    end
    
    assign tbar_out = ~t_out;
endmodule
