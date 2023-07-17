module tb_Carry_look_ahead_adder;
  wire [3:0]Y;
  wire carryout;
  reg [3:0]A,B;
  reg carryin;
  
  Carry_look_ahead_adder dut(Y,carryout,A,B,carryin);
  
  initial
  begin
    A = 4'd0; 
    B = 4'd0; 
    carryin = 1'b0;
    
    #50; 
    A = 4'd3; 
    B = 4'd2; 
    carryin = 1'b1; 
    
    #50; 
    A = 4'd7; 
    B = 4'd10; 
    carryin = 1'b0; 
    
    #50; 
    A = 4'd15; 
    B = 4'd15; 
    carryin = 1'b1; 
    
    #50;
    $finish;
    
  end
endmodule : tb_Carry_look_ahead_adder