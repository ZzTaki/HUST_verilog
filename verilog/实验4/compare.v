module compare(a,b,NEXT_ZERO);
	parameter	WIDTH=8;
	input [WIDTH-1:0] a,b;
	output reg NEXT_ZERO;
	always @(*) begin
		if(a==b) NEXT_ZERO=1;
		else NEXT_ZERO=0;
	end
endmodule