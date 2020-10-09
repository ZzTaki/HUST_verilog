`timescale 1ns / 1ps

module lab3_3_tb();
	reg clk,ShiftIn,ShiftEn;
	wire ShiftOut;
	wire [3:0] ParallelOut;

	initial begin
		clk=0;
		ShiftIn=0;
		ShiftEn=0;
		#300 $stop;
	end

	always	begin
		#10 clk=!clk;
	end

	initial begin
		#10 ShiftIn=!ShiftIn;
		#50 ShiftIn=!ShiftIn;
		#40 ShiftIn=!ShiftIn;
		#60 ShiftIn=!ShiftIn;
		#20 ShiftIn=!ShiftIn;
		#40 ShiftIn=!ShiftIn;
	end

	initial begin
		#40 ShiftEn=!ShiftEn;
		#60 ShiftEn=!ShiftEn;
		#40 ShiftEn=!ShiftEn;
	end

	Serial_in_Parallel_out_enable	h1(clk,ShiftEn,ShiftIn,ParallelOut,ShiftOut);
endmodule