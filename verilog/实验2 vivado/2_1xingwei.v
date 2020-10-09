`timescale 1ns/100ps

module mux2_1xingwei(a,b,sel,out1);
	input a,b,sel;
	output reg out1;
	reg sel_,a1,b1;

	always
		@(a or b or sel) begin
			sel_<= ~ sel;
			a1<=a & sel_;
			b1<=sel & b;
			out1<= a1 | b1;
		end
endmodule


