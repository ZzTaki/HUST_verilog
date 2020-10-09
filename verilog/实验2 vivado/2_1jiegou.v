`timescale 1ns/100ps

module mux2_1jiegou(a,b,sel,out1);
	input	a,b,sel;
	output	out1;
	wire	sel_,a1,b1;

	not		
		RTL_INV(sel_,sel);
	and
		RTL_AND1(a1,a,sel_),
		TRL_AND2(b1,sel,b);
	or
		RTL_OR(out1,a1,b1);
endmodule