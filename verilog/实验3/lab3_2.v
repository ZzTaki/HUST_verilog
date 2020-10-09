module Register_synch_reset_load(input [3:0] D, input clk, input rst, input en, output reg [3:0] Q);
	always @(posedge clk) begin
		if(rst) Q <= 4'b0;
		else if(en) Q <= D;
	end
endmodule