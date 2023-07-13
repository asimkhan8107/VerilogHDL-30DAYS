`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2023 13:53:34
// Design Name: 
// Module Name: serial_adder
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


module serial_adder(
    input clk,rst,
    input a,b,c_in,
    output reg sum,c_out
    );
    
    reg c, flag;
    
    always@(posedge clk, posedge rst)           // rising edge of clk and asynchronous reset
    begin
        if(rst)
        begin
            sum = 0;
            c_out = 0;
            flag = 0;
        end
        else
        begin
            if(flag == 0)
            begin
               // c = c_in;
                flag = 1;
            end
            //c_out = 0;
            sum = a ^ b ^ c_in;
            c_out = (a&b) | (b&c_in) | (a&c_in);
        end
    end
endmodule
