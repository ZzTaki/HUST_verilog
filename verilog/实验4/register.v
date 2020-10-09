module register(clk, rst, load, D, Q);
  parameter WIDTH = 8;
  input clk, rst, load;
  input [WIDTH-1:0] D;
  output reg [WIDTH-1:0] Q;
  always @(posedge clk) begin
    if (rst) Q <=0;
    else if (load) Q <= D;
  end    
endmodule