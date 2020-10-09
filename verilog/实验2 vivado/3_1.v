`timescale 1ns/100ps
module mux3_1(u,v,w,s,m);
	input u,v,w;
	input [1:0] s;
	output reg m;
	reg t1;

	always
		@(u or v or w or s) begin
			t1<= s[0]==0 ? u : v;
			m<= s[1]==0 ? t1 : w;
		end
endmodule