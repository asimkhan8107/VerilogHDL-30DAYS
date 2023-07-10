`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2023 12:31:58
// Design Name: 
// Module Name: tb_d_flip_flop
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


module tb_d_flip_flop();
    reg clk, rst;
    reg d_in;
    wire q_out,qbar_out;
    
    d_flip_flop dut(.clk(clk), .rst(rst), .d_in(d_in), .q_out(q_out), .qbar_out(qbar_out));
    
    always #20 clk = ~clk;
    
    initial
    begin
        clk = 1'b0;
        rst = 1'b1;
        
        #50 
        rst = 1'b0;
        $display("TESTCASE\td_in\tq_out\tqbar_out");
        d_in = 1'b0;
        
        #50
        if( q_out === 1'b0)
            $display("PASS \t\t%0d \t\t%0d \t\t%0d",d_in,q_out,qbar_out);
        else
            $display("FAIL \t\t%0d \t\t%0d \t\t%0d",d_in,q_out,qbar_out);
        d_in = 1'b1;    
        
        #50
        if( q_out === 1'b1)
            $display("PASS \t\t%0d \t\t%0d \t\t%0d",d_in,q_out,qbar_out);
        else
            $display("FAIL \t\t%0d \t\t%0d \t\t%0d",d_in,q_out,qbar_out); 
        
        #50
        $finish;         
    end
endmodule
