`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2023 15:59:53
// Design Name: 
// Module Name: stimulus
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


module stimulus();
    reg [7:0] a;
    reg [7:0] b;
    wire [7:0] sum;
    wire c_out;
    
    
    ripple_carry_adder r1(.a(a), .b(b), .sum(sum), .c_out(c_out));
    
    initial
    begin
             a = 8'd2;
             b = 8'd3;
            
        #100 a = 8'd2;
             b = 8'd8;
            
        #100 a = 8'd12;
             b = 8'd14;  
            
        #100 a = 8'd27;
             b = 8'd13;   
         
        #100 a = 8'd18;
             b = 8'd32;
            
        #100 a = 8'd112;
             b = 8'd20;  
            
        #100 a = 8'd200;
             b = 8'd100;         
    
        #100
            $finish;
   end     
   
   initial
        $monitor($time, "a = %0d, b = %0d, sum = %0d, c_out = %0d" , a, b, sum, c_out);     
endmodule
