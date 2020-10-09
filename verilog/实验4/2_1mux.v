module mux2_1(a,b,sel,q);
	parameter WIDTH = 8;
	input [WIDTH-1:0] a,b;
	input sel;
	output reg [WIDTH-1:0] q;
	always @(*) begin
		if(sel==0) q=a;
		else q=b;
	end
endmodule