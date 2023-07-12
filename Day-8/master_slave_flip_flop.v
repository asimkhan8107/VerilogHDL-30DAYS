module ms_d_flip_flop(q,qbar,clk,rst,d);
        output reg q;
        output qbar;
        input clk, rst;
        input d;

        assign qbar = ~q;

        always @(posedge clk)
        begin
                if (rst)
                        q <= 0;
                else
                        q <= d;
        end
endmodule

module master_slave_flip_flop(q,qbar,clk,rst,d);
	output q;
	output qbar;
	input clk, rst;
	input d;
    
    // inverted clock and intermediate q output of Master
	wire iclk, q1, q1bar;

	assign iclk = ~clk;
	assign qbar = ~q;

    ms_d_flip_flop master(q1,q1bar,clk,rst,d);
	ms_d_flip_flop slave(q,qbar,iclk,rst,q1);

endmodule