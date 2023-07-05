`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2023 20:32:09
// Design Name: 
// Module Name: tb_transmission_gate
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


module tb_transmission_gate();
    reg in, control;
    wire out;
    
    transmission_gate dut(.in(in), .control(control), .out(out));
    
    initial
    begin
        $display("Result \t in \t out");
        in = 0; 
        control = 0;
        
        #50
        if(out === 1'bz)
            $display("PASS \t%d \t%d",in,out);
        else
            $display("FAIL \t%d \t%d",in,out);
        control = 1;
        #50 
        control = 0;
        #50 
        control = 1;
        #50 
        control = 0;
        #50
        in = 0;
        control = 1;
        
        #50
        if(out === 0)
            $display("PASS \t%d \t%d",in,out);
        else
            $display("FAIL \t%d \t%d",in,out);
        in = 1;
        control = 0;
            
        #50
        if(out === 1'bz)
            $display("PASS \t%d \t%d",in,out);
        else
            $display("FAIL \t%d \t%d",in,out);
        control = 1;
        #50 
        control = 0;
        #50 
        control = 1;
        #50 
        control = 0;
        #50
        in = 1;
        control = 1;
        
        #50
        if(out === 0)
            $display("PASS \t%d \t%d",in,out);
        else
            $display("FAIL \t%d \t%d",in,out);         
    end
endmodule
