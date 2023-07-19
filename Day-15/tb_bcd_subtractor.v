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


module tb_bcd_subtractor();
    reg [3:0] a,b;
    wire [3:0] sub;
    wire c_out;
    
    bcd_subtractor dut(.a(a), .b(b), .sub(sub), .c_out(c_out));
    
    initial
    begin
        a = 4'b0000;
        b = 4'b0000;
        
        #50
        a = 4'b0011;
        b = 4'b0010;
        
        #50
        a = 4'b0111;
        b = 4'b0100;
        
        #50
        a = 4'b1000;
        b = 4'b1001;
        
        #50
        a = 4'b1010;
        b = 4'b1000; 
        
        #50
        a = 4'b0100;
        b = 4'b0101; 
               
        #50 
        $finish;    
    end
endmodule
