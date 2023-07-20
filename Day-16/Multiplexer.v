`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2023 13:03:55
// Design Name: 
// Module Name: Multiplexer
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


module Multiplexer(
    input [3:0] a_in,b_in,c_in,d_in,
    input [1:0] sel,
    output [3:0] out
    );
    
    //reg [3:0] out;
    /*
    // using else if block
    always@(a_in,b_in,c_in,d_in,sel)
    begin
    if(sel == 2'b00)
        out <= a_in;
    else if(sel == 2'b01)
        out <= b_in;
    else if(sel == 2'b10)
        out <= c_in;
    else
        out <= d_in;               
    end 
    */
    /*
    // using case construct
    //always@(a_in,b_in,c_in,d_in,sel) // or
    always@(*)
    begin
    case(sel)
        2'b00 : out <= a_in;
        2'b01 : out <= b_in;
        2'b10 : out <= c_in;
        default: out <= d_in;
    endcase
    end
    */
    
    // using ternary operator
    assign out = sel[1] ? (sel[0] ? d_in : c_in) : (sel[0] ? b_in : a_in);
endmodule
