`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2023 13:28:07
// Design Name: 
// Module Name: tb_Multiplexer
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


module tb_Multiplexer();
    reg [3:0] a_in, b_in, c_in, d_in;
    reg [1:0] sel;
    wire [3:0] out;
    
    Multiplexer dut(.a_in(a_in), .b_in(b_in), .c_in(c_in), .d_in(d_in), .sel(sel), .out(out));
    
    initial
    begin
        $monitor("[%0t]\t\t sel = 0x%0h a_in=0x%0h b_in=0x%0h c_in=0x%0h d_in=0x%0h out=0x%0h", $time,sel, a_in, b_in, c_in, d_in, out); 
        sel = 2'b00;
        a_in = $random;
        b_in = $random;
        c_in = $random;
        d_in = $random;
        
        for(integer i = 1; i < 4; i=i+1)
        begin
            #20 sel = i;
        end
        
        #20
        $finish;
    end
endmodule
