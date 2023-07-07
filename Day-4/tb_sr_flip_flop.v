`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 18:05:24
// Design Name: 
// Module Name: tb_sr_flip_flop
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


module tb_sr_flip_flop();
    reg clk,rst;
    reg [1:0] sr;
    wire q,qbar;
    
    sr_flip_flop dut(.clk(clk), .rst(rst), .sr(sr), .q(q), .qbar(qbar));
    
    always #20 clk = ~clk;
    
    initial
    begin
        clk = 1'b0;
        rst = 1'b1;
        
        #50
        rst = 1'b0;
        
        #50 
        $display("Result\ts\tr\tq\tqbar");
        sr = 1'b0;
        
        #50
        if(q === 1'b0)
            $display("PASS\t%0d\t%0d\t%0d\t%0d",sr[1],sr[0],q,qbar);
        else
            $display("FAIL\t%0d\t%0d\t%0d\t%0d",sr[1],sr[0],q,qbar);
        sr = 1'b1;   
        
        #50
        if(q === 1'b0)
            $display("PASS\t%0d\t%0d\t%0d\t%0d",sr[1],sr[0],q,qbar);
        else
            $display("FAIL\t%0d\t%0d\t%0d\t%0d",sr[1],sr[0],q,qbar);
        sr = 1'd2;   
        
        #50
        if(q === 1'b1)
            $display("PASS\t%0d\t%0d\t%0d\t%0d",sr[1],sr[0],q,qbar);
        else
            $display("FAIL\t%0d\t%0d\t%0d\t%0d",sr[1],sr[0],q,qbar);
        sr = 1'd3;  
        
        #50
        if(q === 1'bx)
            $display("PASS\t%0d\t%0d\t%0d\t%0d",sr[1],sr[0],q,qbar);
        else
            $display("FAIL\t%0d\t%0d\t%0d\t%0d",sr[1],sr[0],q,qbar); 
        $finish;             
    end
endmodule
