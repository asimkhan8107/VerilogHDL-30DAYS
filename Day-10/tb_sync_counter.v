`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2023 10:32:20
// Design Name: 
// Module Name: tb_sync_counter
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


module tb_sync_counter();
    reg clk,rst;
    wire [3:0] count; 
    
    sync_counter dut(.clk(clk), .rst(rst), .count(count));
    
    always #10 clk = ~clk;
    
    initial
    begin
        clk = 1'b0;
        rst = 1'b1;
        
        #100
        rst = 1'b0;
        
        #1000
        $finish;
    end
    
    always@(posedge clk)
    begin
        $display(" value count = %0h",count);
    end
endmodule
