`timescale 1ns/1ps

module lab3_1(D,Clock,Qa,Qb,Qc);
	input D,Clock;
	output wire Qa,Qb,Qc;

	D_latch		h1(Clock,D,Qa);
	D_ff 		h2(Clock,D,Qb);
	D_ff_n 		h3(Clock,D,Qc);

endmodule
	