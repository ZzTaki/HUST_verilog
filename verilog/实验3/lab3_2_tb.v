`timescale 1ns/1ps

module lab3_2_tb();
	reg clk;
	reg [3:0] D;
	wire [3:0] Q;

	initial begin
		clk =0;
		rst =0;
		en =0;
		#200 $stop;
	end

	always begin
		#10 clk=!clk;
		#80 rst=!rst;
		#40 en=!en;
	end

	initial begin
		D=4'b0;
		#20 D=4'b0101;
		#40 D=4'b1001;
	end

	Register_synch_reset_load		h1(D,clk,rst,en,Q);
endmodule

