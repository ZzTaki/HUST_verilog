`timescale 1ns/1ps

module FSM_tb();
	reg clk,rst,start,next_zero;
	wire  LD_SUM,LD_NEXT,SUM_SEL,NEXT_SEL,A_SEL,DONE;

	FSM 	dut(clk,rst,start,next_zero,LD_SUM,LD_NEXT,SUM_SEL,NEXT_SEL,A_SEL,DONE);

	always begin
		clk<=0;
		#10;
		clk<=1;
		#10;
	end

	initial begin
		rst<=1;
		#15 rst<=0;
	end

	initial begin
		start<=0;
		#35 start<=1;
		#105 start<=0;
	end

	initial begin
		next_zero<=0;
		#120 next_zero<=1;
	end
endmodule