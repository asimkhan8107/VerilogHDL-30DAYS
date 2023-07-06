`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2023 21:47:08
// Design Name: 
// Module Name: tb_tri_state_buffer
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


module tb_tri_state_buffer();
    reg in,enable;     
    wire out;
    
    tri_state_buffer dut(.in(in), .enable(enable), .out(out));
    
    initial
    begin
        $display("Result\tin\tout");
        in = 0;
        enable = 0;
        
        #100
        if( out === 1'bz)
            $display("PASS\t%0d\t%0d",in,out);
        else
            $display("FAIL\t%0d\t%0d",in,out);
        in = 0; 
        enable = 1;   
        
        #100
        if( out === 1'b0)
            $display("PASS\t%0d\t%0d",in,out);
        else
            $display("FAIL\t%0d\t%0d",in,out);
        in = 1; 
        enable = 0; 
        
        #100
        if( out === 1'bz)
            $display("PASS\t%0d\t%0d",in,out);
        else
            $display("FAIL\t%0d\t%0d",in,out);
        in = 1; 
        enable = 1; 
        
        #100
        if( out === 1'b1)
            $display("PASS\t%0d\t%0d",in,out);
        else
            $display("FAIL\t%0d\t%0d",in,out);     
        $finish;   
    end
endmodule
