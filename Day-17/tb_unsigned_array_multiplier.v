`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2023 15:52:10
// Design Name: 
// Module Name: tb_unsigned_array_multiplier
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


module tb_unsigned_array_multiplier();
    wire [7:0] Y;
    reg [3:0] A,B;

    unsigned_array_multiplier dut(Y,A,B);
    initial
    begin
        $display("Result\tA x B = Y");
        A = 2;
        B = 2;
        #10
        if( Y === 4 )
            $display("PASS\t%0p x %0p = %0p",A,B,Y);
        else
            $display("FAIL\t%0p x %0p = %0p",A,B,Y);
            
        A = 3; 
        B = 3; 
        #10
        if( Y === 9 )
            $display("PASS\t%0p x %0p = %0p",A,B,Y);
        else
            $display("FAIL\t%0p x %0p = %0p",A,B,Y);
            
        A = 3; 
        B = 4;
        #10
        if( Y === 12 )
            $display("PASS\t%0p x %0p = %0p",A,B,Y);
        else
            $display("FAIL\t%0p x %0p = %0p",A,B,Y);    
            
        A = 3; 
        B = 6;
        #10
        if( Y === 18 )
            $display("PASS\t%0p x %0p = %0p",A,B,Y);
        else
            $display("FAIL\t%0p x %0p = %0p",A,B,Y);    
            
        A = 0; 
        B = 0;
        #10
        if( Y === 0 )
            $display("PASS\t%0p x %0p = %0p",A,B,Y);
        else
            $display("FAIL\t%0p x %0p = %0p",A,B,Y);    
            
        A = 14; 
        B = 4;
        #10
        if( Y === 56 )
            $display("PASS\t%0p x %0p = %0p",A,B,Y);
        else
            $display("FAIL\t%0p x %0p = %0p",A,B,Y);    
            
        A = 15; 
        B = 15;
        #10
        if( Y === 225 )
            $display("PASS\t%0p x %0p = %0p",A,B,Y);
        else
            $display("FAIL\t%0p x %0p = %0p",A,B,Y);           
        #10
        $finish;    
    end
endmodule
