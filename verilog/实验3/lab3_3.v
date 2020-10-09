module Serial_in_Parallel_out_enable(clk, ShiftEn, ShiftIn, ParallelOut, ShiftOut);
    input clk, ShiftIn, ShiftEn;
    output [3:0] ParallelOut;         // 4bit并行输出信号
    output ShiftOut;               // 移位输出信号

    reg [3:0] shift_reg = 4'b0000;

    always @(posedge clk)
    	if(ShiftEn) shift_reg <= {shift_reg[2:0],shiftIn};

    assign ShiftOut = shift_reg[3];
    assign ParallelOut = shift_reg;

endmodule