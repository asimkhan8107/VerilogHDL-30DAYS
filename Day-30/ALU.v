`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2023 15:05:43
// Design Name: 
// Module Name: ALU
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


module ALU(A,B,ALU_Sel,ALU_Out);
    input [7:0] A,B;
    input [3:0] ALU_Sel;
    output reg [7:0] ALU_Out;
    
    always@(*)
    begin
        case(ALU_Sel)
            4'b0000 : ALU_Out = A + B;  // Addition
            4'b0001 : ALU_Out = A - B;  // Subtraction 
           // 4'b0010 : ALU_Out = A * B;  // Multiplication  [I'm comment it because here it requires 16 bit, using 8 bit not possible]
            4'b0011 : ALU_Out = A / B;  // Division 
            4'b0100 : ALU_Out = A << 1;  // Logical Shift Left
            4'b0101 : ALU_Out = A >> 1;  // Logical shift Right
            4'b0110 : ALU_Out = {A[6:0],A[7]};  // Rotate Left
            4'b0111 : ALU_Out = {A[0],A[7:1]};  // Rotate Right 
            4'b1000 : ALU_Out = A & B;  // Logical AND
            4'b1001 : ALU_Out = A | B;  // Logical OR 
            4'b1010 : ALU_Out = A ^ B;  // Logical ExOR
            4'b1011 : ALU_Out = ~(A | B);  // Logical NOR 
            4'b1100 : ALU_Out = ~(A & B);  // Logical NAND
            4'b1101 : ALU_Out = ~(A ^ B);  // Logical ExNOR
            4'b1110 : ALU_Out = (A > B) ? 8'd1 : 8'd0;  // Greater Comparision
            4'b1111 : ALU_Out = (A == B) ? 8'd1 : 8'd0;  // Equal Comparision 
            default : ALU_Out = 8'bx;
        endcase
     end
endmodule : ALU
