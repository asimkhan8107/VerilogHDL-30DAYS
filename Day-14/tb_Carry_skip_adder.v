module tb_Carry_skip_adder;
  wire [7:0]Y;
  wire carryout;
  reg [7:0]A,B;
  reg carryin;
  Carry_skip_adder dut(Y,carryout,A,B,carryin);
  initial
  begin
    A = 0; 
    B = 0; 
    carryin = 0; 
    
    #50 
    A = 3; 
    B = 2; 
    carryin = 1; 
    
    #50 
    A = 7; 
    B = 10; 
    carryin = 0; 
    
    #50
    A = 15; 
    B = 15; 
    carryin = 1; 
    
    #50 
    A = 255; 
    B = 55; 
    carryin = 0; 
    
    #50 
    A = 255; 
    B = 255; 
    carryin = 1; 
    
    #50
    $finish; 
  end
endmodule