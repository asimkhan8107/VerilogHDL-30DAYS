`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2023 14:43:59
// Design Name: 
// Module Name: stimulus_block
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


module stimulus_block();
    reg clk;
    reg reset;
    wire [3:0]q;
    
    //instantiate the design module
    ripple_carry_counter r1(q, clk, reset);
    
    //control the clock signal that drives the design block. Cycle time = 10
    initial 
        clk = 1'b0;     //set clk to 0
    always 
        #5 clk = ~clk;      //toggle clk every 5 time unit
        
    //control the reset signal that drives the design block
    // reset is asserted from 0 to 20 and from 200 t0 220
    
    initial
    begin
        reset = 1'b1;
        #15 reset = 1'b0;
        #180 reset = 1'b1;    
        #10 reset = 1'b0;
        #20 $finish;
    end
    
    // Monitor the outputs
    initial
        $monitor ($time, "Output q = %0d", q);
        
endmodule
