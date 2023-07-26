`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2023 16:41:25
// Design Name: 
// Module Name: tb_Universal_Shift_Register
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


module tb_Universal_Shift_Register();
    reg clk,reset;
    reg [1:0] control;
    reg [7:0] data_in;
    wire [7:0] data_out;
    
    Universal_Shift_Register DUT(.clk(clk), .reset(reset), .control(control), .data_in(data_in), .data_out(data_out));
    
    always #5 clk = ~clk;
    
    initial
    begin
        clk = 0;
        reset = 1;
        #10
        
        reset = 0;
        data_in = 8'b11010011;
        control = 2'b11;
        #10
        
        control = 2'b01;
        #30 
        
        control = 2'b10;
        data_in[7] = 0; 
        #30
        
        $finish;
    end
    
endmodule : tb_Universal_Shift_Register
