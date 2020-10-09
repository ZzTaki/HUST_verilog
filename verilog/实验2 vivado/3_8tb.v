`timescale 1ns/100ps

module decoder_38_tb;
	reg [2:0] CBA;
	wire [7:0] F;
	reg [3:0] pal;
	
	decoder3_8	M(F,CBA);
	initial	begin
			$display("$time::[CBA] [F]-------");
			for(pal = 0;pal < 8;pal = pal + 1)
			begin
			    CBA <= pal;    
				#50 $monitor("%t::",$time,"[%b]\t[%b]",CBA,F);
			end
	end
endmodule
