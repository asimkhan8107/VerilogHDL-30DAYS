`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2023 11:17:44
// Design Name: 
// Module Name: tb_bcd_adder
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


module tb_bcd_adder();
    reg [3:0] a,b;
    reg c_in;
    wire [3:0] sum;
    wire c_out;
    
    bcd_adder dut(.a(a), .b(b), .c_in(c_in), .sum(sum), .c_out(c_out));
    
    initial
    begin
        a = 4'b0000;
        b = 4'b0000;
        c_in = 1'b0;
        
        #50
        a = 4'b0010;
        b = 4'b0011;
        
        #50
        a = 4'b0100;
        b = 4'b0101;
        
        #50
        a = 4'b1000;
        b = 4'b1000;
        c_in = 1'b1;
        
        #50
        a = 4'b0100;
        b = 4'b0001; 
        
        #50 
        $finish;    
    end
endmodule
