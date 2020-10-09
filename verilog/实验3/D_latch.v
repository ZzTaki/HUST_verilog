module D_latch(input clk, input D, output reg Q);
    always @ (clk or D)
        if (clk) begin
            Q <= D;
        end
endmodule