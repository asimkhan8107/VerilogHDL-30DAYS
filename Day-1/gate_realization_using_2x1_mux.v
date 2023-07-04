`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 13:32:20
// Design Name: 
// Module Name: gate_realization_using_2x1_mux
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


module gate_realization_using_2x1_mux(
    input in1, in2,
    output out_not, out_or, out_and, out_nor, out_nand, out_xor, out_xnor
    );
    
    // NOT Gate
    assign out_not = in1 ? 1'b0 : 1'b1;
    
    // OR Gate
    assign out_or = in1 ? 1'b1 : in2;
    
    // AND Gate
    assign out_and = in1 ? in2 : 1'b0;
    
    // NOR Gate
    assign out_nor = in1 ? 1'b0 : ~in2;
    
    // NAND Gate
    assign out_nand = in1 ? ~in2 :1'b1;
    
    // XOR Gate
    assign out_xor = in1 ? ~in2 : in2;
    
    // XNOR Gate
    assign out_xnor = in1 ? in2 : ~in2;
endmodule
