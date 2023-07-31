`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2023 19:15:06
// Design Name: 
// Module Name: LIFO
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

module LIFO(DATAOUT, full, empty, clock, reset, wn, rn, DATAIN);
  output reg [7:0] DATAOUT;
  output full, empty;
  input [7:0] DATAIN;
  input clock, reset, wn, rn; 
  
  reg [3:0] sp; // pointers tracking the stack
  reg [7:0] memory [7:0]; // the stack is 8 bit wide and 8 locations each
  
  assign full = (sp == 4'b1000) ? 1 : 0;
  assign empty = (sp == 4'b0000) ? 1 : 0;
  
  always @(posedge clock)
  begin
    if (reset)
      begin
        memory[0] <= 0; 
        memory[1] <= 0; 
        memory[2] <= 0; 
        memory[3] <= 0;
        memory[4] <= 0; 
        memory[5] <= 0; 
        memory[6] <= 0; 
        memory[7] <= 0;
        DATAOUT <= 0; 
        sp <= 1;
      end
    else if (wn & !full)
      begin
        memory[sp] <= DATAIN;
        sp <= sp + 1;
      end
    else if (rn & !empty)
      begin
        sp <= sp - 1;
        DATAOUT <= memory[sp];
      end
  end
endmodule
