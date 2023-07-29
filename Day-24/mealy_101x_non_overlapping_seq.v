`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2023 10:07:30
// Design Name: 
// Module Name: mealy_11101_non_overlapping_seq
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


module mealy_101x_non_overlapping_seq(z, clk, rst, x);
  output reg z;
  input clk, rst, x;
  
  reg[2:0] cs, ns;
  
  parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;
   
  
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
          ns <= s1;
        else
          ns <= s2;
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
    if ( cs == s3 && (x == 1 || x == 0))
      z <= 1;
    else
      z <= 0;
  end    
endmodule
