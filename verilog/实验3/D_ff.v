module D_ff(input clk, input D, output reg Q);
    always @ (posedge clk)    // 时钟上升沿触发
            Q <= D;
endmodule