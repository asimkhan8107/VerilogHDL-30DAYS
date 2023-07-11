`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2023 14:47:39
// Design Name: 
// Module Name: tb_t_flip_flop
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


module tb_t_flip_flop();
    reg clk,rst;
    reg t_in;
    wire t_out, tbar_out;
    
    t_flip_flop dut(.clk(clk), .rst(rst), .t_in(t_in), .t_out(t_out), .tbar_out(tbar_out));
      
    always #20 clk = ~clk;
   
    initial
    begin
        clk = 1'b0;
        rst = 1'b1;
        #50 
        rst = 1'b0;
        #50 
        $display("Case\tt_in\tt_out\ttbar_out");
        t_in = 1'b0;
        
        #50 
        if( t_out === 1'b0)
            $display("PASS\t%0d\t%0d\t%0d",t_in,t_out,tbar_out);
        else
            $display("PASS\t%0d\t%0d\t%0d",t_in,t_out,tbar_out); 
        
        #50 
        if( t_out === 1'b0)
            $display("PASS\t%0d\t%0d\t%0d",t_in,t_out,tbar_out);
        else
            $display("PASS\t%0d\t%0d\t%0d",t_in,t_out,tbar_out);
        
        #50 
        if( t_out === 1'b0)
            $display("PASS\t%0d\t%0d\t%0d",t_in,t_out,tbar_out);
        else
            $display("PASS\t%0d\t%0d\t%0d",t_in,t_out,tbar_out);
        t_in = 1'b1;
        
        #50 
        if( t_out === 1'b1)
            $display("PASS\t%0d\t%0d\t%0d",t_in,t_out,tbar_out);
        else
            $display("PASS\t%0d\t%0d\t%0d",t_in,t_out,tbar_out);
        
        #50 
        if( t_out === 1'b0)
            $display("PASS\t%0d\t%0d\t%0d",t_in,t_out,tbar_out);
        else
            $display("PASS\t%0d\t%0d\t%0d",t_in,t_out,tbar_out);
        
        #50 
        if( t_out === 1'b1)
            $display("PASS\t%0d\t%0d\t%0d",t_in,t_out,tbar_out);
        else
            $display("PASS\t%0d\t%0d\t%0d",t_in,t_out,tbar_out);
        $finish;      
    end
endmodule
