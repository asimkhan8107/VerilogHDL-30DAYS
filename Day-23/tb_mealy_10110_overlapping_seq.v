`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2023 13:00:32
// Design Name: 
// Module Name: tb_mealy_10110_overlapping_seq
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


module tb_mealy_10110_overlapping_seq();
    reg x,clk,rst;
    wire z;
    
    mealy_10110_overlapping_seq test (.x(x), .clk(clk), .rst(rst), .z(z));
    
    always #20 clk = ~clk;
    
    initial
    begin
        $display("=============================================");
        $monitor("%0t: x = %0b, z = %0b",$time,x,z);
        clk = 0;
        rst = 1;
        x = 0;
        #10
        rst = 0; 
        
        #40 x = 1;
        #40 x = 0;
        #40 x = 1;
        #40 x = 1;
        #40 x = 0;
        #40 x = 1;
        #40 x = 0;
        #40 x = 1;
        #40 x = 0;
        #40 x = 1;
        #40 x = 1;
        #40 x = 0;
        #40 $finish;
        $display("============================================");
    end
    
endmodule
