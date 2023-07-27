`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2023 12:35:58
// Design Name: 
// Module Name: mealy_10110_overlapping_seq
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


module mealy_10110_overlapping_seq(
    input x,
    input clk, rst,
    output reg z
    );
    
    reg [2:0] state, ns;
    
    parameter s0 = 3'd0, s1 = 3'd1, s2 = 3'd2, s3 = 3'd3, s4 = 3'd4;
    
    always@(posedge clk)
    begin   
        if(rst)
            state <= 0;
        else
            state <= ns;
    end
    
    always@(x or state)
    case(state)
       s0 : if(x) 
             begin
                ns = s1; 
                z = 1'b0;
             end   
             else
             begin
                ns = s0;
                z = 1'b0;
             end
       s1 : if(x) 
             begin
                ns = s1; 
                z = 1'b0;
             end   
             else
             begin
                ns = s2;
                z = 1'b0;
             end   
       s2 : if(x) 
             begin
                ns = s3; 
                z = 1'b0;
             end   
             else
             begin
                ns = s0;
                z = 1'b0;
             end
       s3 : if(x) 
             begin
                ns = s4; 
                z = 1'b0;
             end   
             else
             begin
                ns = s2;
                z = 1'b0;
             end
       s4 : if(x) 
             begin
                ns = s1; 
                z = 1'b1;
             end   
             else
             begin
                ns = s2;
                z = 1'b0; 
             end 
       default: 
             begin
                ns = s0;
                z = 1'b0;
             end                              
    endcase 
endmodule
