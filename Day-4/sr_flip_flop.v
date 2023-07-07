`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 17:57:45
// Design Name: 
// Module Name: sr_flip_flop
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


module sr_flip_flop(
    input clk, rst,
    input [1:0] sr,
    output reg q,
    output qbar
    );
    
    always@(posedge clk)        // Rising edge with synchronous reset
    begin
        if(~rst)
            q <= 0;
        else
            case(sr)
                2'b00 : q <= q;
                2'b01 : q <= 0;
                2'b10 : q <= 1;
                default : q <= 1'bx;
            endcase
    end
    assign qbar = ~q;   
endmodule : sr_flip_flop
            
  
