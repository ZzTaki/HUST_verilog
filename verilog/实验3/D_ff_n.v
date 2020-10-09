module D_ff_n(input clk, input D, output reg Q);
always @(negedge clk)  //时钟下降沿触发
Q <=D;
endmodule