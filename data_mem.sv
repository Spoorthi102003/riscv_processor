module data_mem #(parameter width = 32)(clk,addr_in,mem_read,mem_write,data_write,data_read);

input clk;
input mem_read;
input mem_write;
input [width-1:0]addr_in;
input [width-1:0]data_write;
output reg [width-1:0]data_read;


reg [width-1:0]mem[255:0];

initial
begin
mem[0] = 32'h00000008;
mem[4] = 32'h00000010;
mem[8] = 32'h00000038;
mem[12] = 32'h00000024;
mem[16] = 32'h00000055;
mem[20] = 32'h00000022;
mem[24] = 32'h00000034;
mem[28] = 32'h00000033;
mem[32] = 32'h000000b3;
mem[36] = 32'h00000033;
mem[40] = 32'h000000b3;
end


always@(posedge clk) begin
if(mem_write)
	mem[addr_in] <= data_write; end
	
always@(posedge clk) begin
if(mem_read)
	data_read <= mem[addr_in]; end

endmodule
