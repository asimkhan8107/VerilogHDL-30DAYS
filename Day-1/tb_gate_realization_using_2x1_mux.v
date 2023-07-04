`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 13:33:06
// Design Name: 
// Module Name: tb_gate_realization_using_2x1_mux
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


module tb_gate_realization_using_2x1_mux();

    reg in1, in2;
    wire out_not, out_or, out_and, out_nor, out_nand, out_xor, out_xnor;
    
    gate_realization_using_2x1_mux dut(.in1(in1), .in2(in2), .out_not(out_not), .out_or(out_or), .out_and(out_and),
                                       .out_nor(out_nor), .out_nand(out_nand), .out_xor(out_xor), .out_xnor(out_xnor));
                        
    initial
    begin
        in1 = 1'b0;
        in2 = 1'b0;
        
        #20 
        in1 = 1'b0;
        in2 = 1'b1;
        
        #20 
        in1 = 1'b1;
        in2 = 1'b0;
        
        #20 
        in1 = 1'b1;
        in2 = 1'b1;
        
        #20
        $finish;
    end                     
endmodule

