`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2023 19:06:42
// Design Name: 
// Module Name: mealy_11101_overlapping_seq
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


// Identifies the sequence 11101
// includes a overlap bit sequence as well
module mealy_11101_overlapping_seq(z, clk, rst, x);
  output reg z;
  input clk, rst, x;
  
  reg[2:0] cs, ns;
  
  parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011, s4 = 3'b100;
   
  
  always @(posedge clk)
  begin
    if(rst)
      cs <= s0;
    else
      cs <= ns;
  end

  always @(cs, x)
  begin
    case(cs)
    s0:
      begin
        if(x)
          ns <= s1;
        else
          ns <= s0;
      end
    s1:
      begin
        if(x)
          ns <= s2;
        else
          ns <= s1;
      end
    s2:
      begin
        if(x)
          ns <= s3;
        else
          ns <= s0;
      end
    s3:
      begin
        if(x)
          ns <= s3;
        else
          ns <= s4;
      end
    s4:
      begin
        if(x)
          ns <= s1; 
        else
          ns <= s0;
      end
    default:
      begin
        ns <= s0;
      end
    endcase      
  end
  
  always @(cs, x)
  begin
    if ( cs == s4 && x == 1 )
      z <= 1;
    else
      z <= 0;
  end    
endmodule
