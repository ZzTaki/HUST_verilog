module datapath(clk,rst,SUM_SEL,NEXT_SEL,A_SEL,LD_SUM,LD_NEXT,NEXT_ZERO,sum_out);
	input clk,rst,SUM_SEL,NEXT_SEL,A_SEL,LD_SUM,LD_NEXT;    
	output  NEXT_ZERO;
	output  [31:0] sum_out;
	wire [3:0] read_addr;
	wire [31:0] next1,next2,data,add_out,sum_in,NEXT_IN,ad_data;
    
	mux2_1 #(32) m1(32'h0000,data,NEXT_SEL,NEXT_IN);
	compare #(32) com(NEXT_IN,32'h0000,NEXT_ZERO);
	register #(32) NEXT(clk,rst,LD_NEXT,NEXT_IN,next1);
	add #(32) a1(32'h0001,next1,next2);
	mux2_1 #(32) m2(next1,next2,A_SEL,ad_data);
	assign read_addr=ad_data[3:0];
	ram #(32,4) Memory(read_addr,data);
	add #(32) a2(data,sum_out,add_out);
	mux2_1 #(32) m3(32'h0000,add_out,SUM_SEL,sum_in);
	register #(32) SUM(clk,rst,LD_SUM,sum_in,sum_out);

endmodule