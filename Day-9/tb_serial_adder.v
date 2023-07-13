`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2023 14:02:01
// Design Name: 
// Module Name: tb_serial_adder
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


module tb_serial_adder();
    reg clk,rst,a,b,c_in;
    wire sum,c_out;
    
    serial_adder dut(.clk(clk), .rst(rst), .a(a), .b(b), .c_in(c_in), .sum(sum), .c_out(c_out));
    
    always #20 clk = ~clk;
    
    initial
    begin
        clk = 1'b0;
        rst = 1'b0;
        a = 1'b0;
        b = 1'b0;
        c_in = 1'b0;
        rst = 1'b1;
        
        #50
        rst = 1'b0;
        
        // Addition of 4 bit number
        // 1111 + 1101 = 11101
        a = 1'b1;
        b = 1'b1;
        c_in = 1'b1;
        
        #50
        a = 1'b1;
        b = 1'b0;
        c_in = 1'b0;
        
        #50
        a = 1'b1;
        b = 1'b1;
        c_in = 1'b0;
        
        #50
        a = 1'b1;
        b = 1'b1;
        c_in = 1'b0;
        rst = 1'b1;
        
        #20
        rst = 1'b0;
        
        // Addition of 5 bit numbers
        // 11011 + 10001 = 101101
        a = 1'b1;
        b = 1'b1;
        c_in = 1'b1;
        
        #50
        a = 1'b1;
        b = 1'b0;
        c_in = 1'b0;
        
        #50
        a = 1'b0;
        b = 1'b0;
        c_in = 1'b0;
        
        #50
        a = 1'b1;
        b = 1'b0;
        c_in = 1'b0;
        
        #50
        a = 1'b1;
        b = 1'b1;
        c_in = 1'b0;
        $finish;
    end
endmodule
