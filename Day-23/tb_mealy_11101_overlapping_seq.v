`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2023 19:05:45
// Design Name: 
// Module Name: tb_mealy_11101_overlapping_seq
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


module tb_mealy_11101_overlapping_seq();
  wire z;
  reg clk, rst, x;
  mealy_11101_overlapping_seq dut(z, clk, rst, x);
  initial
  begin
    rst = 1; x = 0; 
    clk = 1; #5; clk = 0; #5;
    rst = 0;
    clk = 1; #5; clk = 0; #5;
    
    $display("Starting input sequence");

    // we now make the 5 transistions and check the dataout to see if it is detected
    x = 1; clk = 1; #5; clk = 0; #5;
    x = 1; clk = 1; #5; clk = 0; #5;
    x = 1; clk = 1; #5; clk = 0; #5;
    x = 0; clk = 1; #5; clk = 0; #5;
    x = 1; clk = 1; #5; clk = 0; #5;
    if ( z === 1 )
      $display("PASS %b", z);
    else
      $display("FAIL %b", z);
    
    // we now make the ONLY 4 transistions and check the dataout to see if it is detected
    //datain = 1; clock = 1; #5; clock = 0; #5;
    x = 1; clk = 1; #5; clk = 0; #5;
    x = 1; clk = 1; #5; clk = 0; #5;
    x = 0; clk = 1; #5; clk = 0; #5;
    x = 1; clk = 1; #5; clk = 0; #5;
    if ( z === 1 )
      $display("PASS %b", z);
    else
      $display("FAIL %b", z);
    
    // we now make a wrongsequence the 5 transistions and check the dataout to see if it is detected
    x = 0; clk = 1; #5; clk = 0; #5;
    x = 0; clk = 1; #5; clk = 0; #5;
    if ( z === 0 )
      $display("PASS %b", z);
    else
      $display("FAIL %b", z);
    #5
    $finish;
  end

endmodule
