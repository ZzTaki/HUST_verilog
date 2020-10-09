`timescale 1ns/1ps

module auto_add_tb();
	reg clk,rst,start;
	wire DONE;
	wire [31:0] sum_out;

	auto_add 	h1(clk,rst,start,DONE,sum_out);

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
		#20 start<=1;
	end
endmodule