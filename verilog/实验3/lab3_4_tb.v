`timescale 1ns / 1ps

module lab3_4_tb();
	reg clk,rst,en;
	wire [3:0] Q;

	initial begin
		clk=0;
		rst=0;
		en=0;
		#300 $stop;
	end

	always 
		#5 clk=!clk;

	initial begin
		#40 rst=!rst;
		#20 rst=!rst;
	end

	initial begin
		#20 en=!en;
		#150 en=!en;
		#40 en=!en;
	end

	CNT4_synch_reset_enable		h1(clk,rst,en,Q);
endmodule