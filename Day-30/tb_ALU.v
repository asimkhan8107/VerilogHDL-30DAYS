`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2023 15:23:44
// Design Name: 
// Module Name: tb_ALU
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


module tb_ALU();
    reg [7:0] A,B;
    reg [3:0] ALU_Sel;
    wire [7:0] ALU_Out;
    
    ALU DUT(.A(A), .B(B), .ALU_Sel(ALU_Sel), .ALU_Out(ALU_Out));
    
    initial
    begin
        A = 8'd40;
        B = 8'd20;
        ALU_Sel = 4'b0000;
        
        #50
        ALU_Sel = 4'b0001;
        
        #50
        ALU_Sel = 4'b0010;
        
        #50
        ALU_Sel = 4'b0011;
        
        #50
        ALU_Sel = 4'b0100;
        
        #50
        ALU_Sel = 4'b0101;
        
        #50
        ALU_Sel = 4'b0110;
        
        #50
        ALU_Sel = 4'b0111;
        
        #50
        ALU_Sel = 4'b1000;
        
        #50
        ALU_Sel = 4'b1001;
        
        #50
        ALU_Sel = 4'b1010;
        
        #50
        ALU_Sel = 4'b1011;
        
        #50
        ALU_Sel = 4'b1100;
        
        #50
        ALU_Sel = 4'b1101;
        
        #50
        ALU_Sel = 4'b1110;
        
        #50
        ALU_Sel = 4'b1111; 
        
        #50
        $finish;
    end
endmodule : tb_ALU
