`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2023 09:28:03
// Design Name: 
// Module Name: tb_comparator
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


module tb_comparator();
    reg [3:0] A,B;
    wire AgreaterB, AequalB, AlessB;
    
    comparator dut(.A(A), .B(B), .AgreaterB(AgreaterB), .AequalB(AequalB), .AlessB(AlessB));
    
    initial
    begin
        A = 4'd0;
        B = 4'd0;
        
        #100
        A = 4'd9;
        B = 4'd8;
      
        
        #100
        A = 4'd10;
        B = 4'd10;
       
        #100
        A = 4'd5;
        B = 4'd7;
       
        #100
        $finish;    
    end
endmodule
