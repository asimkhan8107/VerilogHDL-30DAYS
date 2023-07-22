`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2023 21:54:14
// Design Name: 
// Module Name: tb_boothMultiplier
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

module tb_boothMultiplier;
  wire [7:0] Y;
  reg [3:0] A, B;
  
  boothMultiplier dut(Y, A, B);
  
  initial
  begin
    $display("RSLT\tA x B = Y");
    A = 2; B = 2; #10;
    if ( Y == 4 )
      $display("PASS\t%p x %p = %p",A,B,Y);
    else
      $display("FAIL\t%p x %p = %p",A,B,Y);
    A = 3; B = 3; #10;
    if ( Y == 9 )
      $display("PASS\t%p x %p = %p",A,B,Y);
    else
      $display("FAIL\t%p x %p = %p",A,B,Y);
    A = 3; B = 4; #10;
    if ( Y == 12 )
      $display("PASS\t%p x %p = %p",A,B,Y);
    else
      $display("FAIL\t%p x %p = %p",A,B,Y);
    A = 3; B = -4; #10;
    if ( Y == -12 )
      $display("PASS\t%p x %p = %p",A,B,Y);
    else
      $display("FAIL\t%p x %p = %p",A,B,Y);
    A = 3; B = 5; #10;
    if ( Y == 15 )
      $display("PASS\t%p x %p = %p",A,B,Y);
    else
      $display("FAIL\t%p x %p = %p",A,B,Y);
    A = 0; B = 0; #10;
    if ( Y == 0 )
      $display("PASS\t%p x %p = %p",A,B,Y);
    else
      $display("FAIL\t%p x %p = %p",A,B,Y);
    A = 1; B = 1; #10;
    if ( Y == 1 )
      $display("PASS\t%p x %p = %p",A,B,Y);
    else
      $display("FAIL\t%p x %p = %p",A,B,Y);
    A = 15; B = 15; #10;
    if ( Y == 225 )
      $display("PASS\t%p x %p = %p",A,B,Y);
    else
      $display("FAIL\t%p x %p = %p",A,B,Y);
    A = 2; B = 6; #10;
    if ( Y == 12 )
      $display("PASS\t%p x %p = %p",A,B,Y);
    else
      $display("FAIL\t%p x %p = %p",A,B,Y);
    #10
    $finish;
  end
  
    //enabling the wave dump
//  initial begin 
//    $dumpfile("dump.vcd"); $dumpvars;
//  end
endmodule