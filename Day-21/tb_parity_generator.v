`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2023 12:15:45
// Design Name: 
// Module Name: tb_parity_generator
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


module tb_parity_generator();
    reg [3:0] d_in;
    wire [3:0] d_out;
    wire parity;
    
    parity_generator dut (.d_in(d_in), .d_out(d_out), .parity(parity));
    
    initial
    begin
        d_in = 4'b0011;
        
        #10
        d_in = 4'b1011;
        
        #10
        d_in = 4'b1111;
        
        #10
        $finish;
    end
endmodule
