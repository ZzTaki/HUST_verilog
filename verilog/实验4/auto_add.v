module auto_add(clk,rst,start,DONE,sum_out);
	input clk,rst,start;
	output DONE;
	output [31:0] sum_out;

	wire LD_SUM,LD_NEXT,SUM_SEL,NEXT_SEL,A_SEL,NEXT_ZERO;

	FSM		dut1(clk,rst,start,NEXT_ZERO,LD_SUM,LD_NEXT,SUM_SEL,NEXT_SEL,A_SEL,DONE);
	datapath	dut2(clk,rst,SUM_SEL,NEXT_SEL,A_SEL,LD_SUM,LD_NEXT,NEXT_ZERO,sum_out);

endmodule