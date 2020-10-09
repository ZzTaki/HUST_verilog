module CNT4_synch_reset_enable(input clk, input rst, input en, output reg [3:0] Q);

	always @(posedge clk)
		if(rst) Q<=0;
		else if(en) Q<=Q+1; 

endmodule