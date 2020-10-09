module ram(read_addr,data);
  parameter DATA_WIDTH = 8;
  parameter ADDR_WIDTH = 3;

  input [ADDR_WIDTH-1:0] read_addr;
  output reg [DATA_WIDTH-1:0] data;

  reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];

  initial begin                              
      $readmemh("C:\Users\zzltaki\Desktop\ram_init.txt",ram); 
  end
 
  always @(*) begin
      data<=ram[read_addr];
      $display("%t: %b  %b",$time,read_addr,data);
  end

endmodule