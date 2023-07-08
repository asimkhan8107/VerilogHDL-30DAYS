`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2023 19:47:42
// Design Name: 
// Module Name: jk_flip_flop
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


module jk_flip_flop(
    input clk,rst,
    input [1:0] jk,
    output reg q,
    output qbar
    );
    
    always@(posedge clk)            // synchronous reset
    begin
        if(rst)
            q <= 0;
        else
            case(jk)
                2'b00 : q <= q;
                2'b01 : q <= 0;
                2'b10 : q <= 1;
                default : q <= ~q;
            endcase
    end
    
    assign qbar = ~q;
endmodule
