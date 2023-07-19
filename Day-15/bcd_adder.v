`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2023 11:10:47
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(
    input [3:0] a,b,
    input c_in,
    output reg [3:0] sum,
    output reg c_out
    );
    
    // temporary storage to store extra bit
    reg [4:0] temp_sum;
    
    always@(a or b or c_in)
    begin
        temp_sum = a + b + c_in;
        if(temp_sum > 9)
        begin
            c_out = 1'b1;
            temp_sum = temp_sum + 6;
            sum = temp_sum[3:0];
        end
        else
        begin
            c_out = 1'b0;  
            sum = temp_sum[3:0];
        end
    end    
endmodule
