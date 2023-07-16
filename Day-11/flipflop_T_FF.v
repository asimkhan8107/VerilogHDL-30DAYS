module T_ff (q, clk, reset);
    input clk, reset;
    output q;
    
    wire d;
    
    D_ff dff0(q, d, clk, reset);
    not n1(d, q);
endmodule