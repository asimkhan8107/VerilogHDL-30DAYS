module cs_block(Y,carryout,A,B,carryin);
  output [3:0]Y;
  output carryout;
  input [3:0]A,B;
  input carryin;

  wire [3:0]g,p;// generate and propogate  
  wire [4:0]c;// intermediate carry of adders
  wire z;// for the mux
  
  assign c[0] = carryin; 
  genvar i;
  for (i=0; i<=3; i=i+1)
  begin
    assign p[i] = A[i] ^ B[i];
    assign c[i+1] = ( A[i] & B[i] ) | ( A[i] & c[i] ) | ( B[i] & c[i] );
    assign Y[i] = A[i] ^ B[i] ^ c[i];
  end
  
  assign z = p[0] & p [1] & p[2] & p[3];
  assign carryout = z ? carryin : c[4];

endmodule

module Carry_skip_adder(Y,carryout,A,B,carryin);
  output [7:0]Y;
  output carryout;
  input [7:0]A,B;
  input carryin;

  wire c4; // intermediate carry obtained from first block
  
  cs_block cs1 (Y[3:0],c4,A[3:0],B[3:0],carryin);
  cs_block cs2 (Y[7:4],carryout,A[7:4],B[7:4],c4); // pass the intermediate carry here
  
endmodule
