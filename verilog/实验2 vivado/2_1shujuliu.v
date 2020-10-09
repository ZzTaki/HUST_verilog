`timescale 1ns/100ps

module mux2_1shujuliu(a,b,sel,out1);
	input a,b,sel;
	output out1;
	wire sel_,a1,b1;

	assign sel_= ~ sal;
	assign a1= a & sel_;
	assign b1= sel & b'
	assign out1= a1 | b1;
endmodule