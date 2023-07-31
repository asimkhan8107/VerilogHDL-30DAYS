`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2023 19:32:11
// Design Name: 
// Module Name: arbiter
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


module arbiter(
    input clk, rst,
    output reg [2:0] out
    );
    
    reg [2:0] count;
    
    always@(posedge clk)
    begin
        if(rst)
            count <= 3'b000;
        else if(count == 3'd6)
            count <= 3'b000;
        else
            count = count + 1;
    end
    
    always@(count)
    begin
        case(count)
            3'b000 : out <= 3'b000; 
            3'b001 : out <= 3'b001;
            3'b010 : out <= 3'b010;
            3'b011 : out <= 3'b011;
            3'b100 : out <= 3'b100;
            3'b101 : out <= 3'b101;
            3'b110 : out <= 3'b110;  
            default: out <= 3'b000; 
        endcase          
    end
endmodule
