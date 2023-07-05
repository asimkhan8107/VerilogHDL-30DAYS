`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2023 20:26:19
// Design Name: 
// Module Name: transmission_gate
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


module transmission_gate(
    input in, control,
    output out
    );
    
    wire control_bar;
    
    assign control_bar = ~control;
    
    nmos n(out,in,control);
    pmos p(out,in,control_bar);
endmodule
