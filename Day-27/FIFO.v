`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2023 18:34:48
// Design Name: 
// Module Name: FIFO
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

module FIFO(DATAOUT, full, empty, clock, reset, wn, rn, DATAIN);
  output reg [7:0] DATAOUT;
  output full, empty;
  input [7:0] DATAIN;
  input clock, reset, wn, rn;
  
  reg [2:0] wptr, rptr; // pointers tracking the stack
  reg [7:0] memory [7:0]; // the stack is 8 bit wide and 8 locations each
  
  assign full = ( (wptr == 3'b111) & (rptr == 3'b000) ? 1 : 0 );
  assign empty = (wptr == rptr) ? 1 : 0;
  
  always @(posedge clock)
  begin
    if (reset)
      begin
        memory[0] <= 0; memory[1] <= 0; memory[2] <= 0; memory[3] <= 0;
        memory[4] <= 0; memory[5] <= 0; memory[6] <= 0; memory[7] <= 0;
        DATAOUT <= 0; wptr <= 0; rptr <= 0;
      end
    else if (wn & !full)
      begin
        memory[wptr] <= DATAIN;
        wptr <= wptr + 1;
      end
    else if (rn & !empty)
      begin
        DATAOUT <= memory[rptr];
        rptr <= rptr + 1;
      end
  end
endmodule
