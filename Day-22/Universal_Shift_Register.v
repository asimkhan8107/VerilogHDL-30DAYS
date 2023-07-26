`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2023 16:27:56
// Design Name: 
// Module Name: Universal_Shift_Register
// Project Name: 8 Bit Universal shif register
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


module Universal_Shift_Register(clk,reset,control,data_in,data_out);
    input clk,reset;
    input [1:0] control;
    input [7:0] data_in;
    output [7:0] data_out;
    
    reg[7:0] r_reg;  //r_reg => current state, 
    reg[7:0] r_next; //r_next => next state
    
    always@(posedge clk, posedge reset)
    begin
        if(reset)
            r_reg <= 0;
        else
            r_reg <= r_next;
    end
    
    //next state logic
    always@(*)
        case(control)
            2'b00 : r_next = r_reg; //no operation
            2'b01 : r_next = {r_reg[6:0],data_in[0]};  // shift left
            2'b10 : r_next = {data_in[7], r_reg[7:1]};  // right shift
            default : r_next = data_in;  // load operation
        endcase
    
    // output logic
    assign data_out = r_reg;
    
endmodule : Universal_Shift_Register 
