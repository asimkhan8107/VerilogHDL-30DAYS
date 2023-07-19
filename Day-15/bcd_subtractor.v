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


module bcd_subtractor(
    input [3:0] a,b,
    output reg [3:0] sub,
    output reg c_out
    );
    
    // temporary storage to store extra bit
    reg [4:0] temp_sub;
    reg [3:0] new_b;
    
    always@(a or b)
    begin
        new_b = 10 - b;
        temp_sub = a + new_b;
        if(temp_sub > 9)
        begin
            c_out = 1'b1;
            temp_sub = temp_sub + 6;
            sub = temp_sub[3:0];
        end
        else
        begin
            c_out = 1'b0;  
            sub = temp_sub[3:0];
            sub = 10 - sub;
        end
    end    
endmodule
