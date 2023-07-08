`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2023 19:52:00
// Design Name: 
// Module Name: tb_jk_flip_flop
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


module tb_jk_flip_flop();
    reg clk,rst;
    reg [1:0] jk;
    wire q,qbar;
    
    jk_flip_flop dut(.clk(clk), .rst(rst), .jk(jk), .q(q), .qbar(qbar));
    
    always #20 clk = ~clk;
    initial
    begin
        clk = 1'b0;
        rst = 1'b1;
        #50
        rst = 1'b0;
        
        #50
        $display("Result\tj\tk\tq\tqbar");
        jk = 2'b00;
        
        #100
        if(q === 1'b0)
            $display("PASS\t%0d\t%0d\t%0d\t%0d",jk[1],jk[0],q,qbar);
        else 
            $display("PASS\t%0d\t%0d\t%0d\t%0d",jk[1],jk[0],q,qbar);
        jk = 2'b01;  
        
        #100
        if(q === 1'b0)
            $display("PASS\t%0d\t%0d\t%0d\t%0d",jk[1],jk[0],q,qbar);
        else 
            $display("PASS\t%0d\t%0d\t%0d\t%0d",jk[1],jk[0],q,qbar);
        jk = 2'b10;
        
        #100
        if(q === 1'b1)
            $display("PASS\t%0d\t%0d\t%0d\t%0d",jk[1],jk[0],q,qbar);
        else 
            $display("PASS\t%0d\t%0d\t%0d\t%0d",jk[1],jk[0],q,qbar);
        jk = 2'b11;  
        
        #100
        if(q === 1'b0)
            $display("PASS\t%0d\t%0d\t%0d\t%0d",jk[1],jk[0],q,qbar);
        else 
            $display("PASS\t%0d\t%0d\t%0d\t%0d",jk[1],jk[0],q,qbar);
        jk = 2'b11;
        
        #120
        if(q === 1'b1)
            $display("PASS\t%0d\t%0d\t%0d\t%0d",jk[1],jk[0],q,qbar);
        else 
            $display("PASS\t%0d\t%0d\t%0d\t%0d",jk[1],jk[0],q,qbar);
        jk = 2'b11; 
        
        #150
        if(q === 1'b1)
            $display("PASS\t%0d\t%0d\t%0d\t%0d",jk[1],jk[0],q,qbar);
        else 
            $display("PASS\t%0d\t%0d\t%0d\t%0d",jk[1],jk[0],q,qbar);
        
        #100
        $finish;       
    end
endmodule
