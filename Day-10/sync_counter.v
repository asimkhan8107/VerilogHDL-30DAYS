`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2023 10:29:38
// Design Name: 
// Module Name: sync_counter
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


module sync_counter(
    input clk,rst,
    output reg [3:0] count
    );
    
    always@(posedge clk)    // rising edge with synchronous reset
    begin
        if(rst)
            count <= 4'b0000;
        else
            count <= count + 1;
    end
endmodule
