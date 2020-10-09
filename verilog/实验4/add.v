module add(a,b,sum);
	parameter	WIDTH = 8;
	input [WIDTH-1 : 0] a,b;
	output reg [WIDTH-1 : 0] sum;
	always @(*) begin
		sum=a+b;
	end
endmodule