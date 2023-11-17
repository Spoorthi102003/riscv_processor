module data_mem #(parameter width = 32)(clk,addr_in,mem_read,mem_write,data_write,data_read);

input clk;
input mem_read;
input mem_write;
input [width-1:0]addr_in;
input [width-1:0]data_write;
output reg [width-1:0]data_read;


reg [width-1:0]mem[1500:0];

initial
begin
mem[1000] = 32'h00000008;
mem[1004] = 32'h00000010;
mem[1008] = 32'h00000038;
mem[1012] = 32'h00000024;
mem[1016] = 32'h00000055;
mem[1020] = 32'h00000022;
mem[1024] = 32'h00000034;
mem[1028] = 32'h00000033;
mem[1032] = 32'h000000b3;
mem[1036] = 32'h00000033;
mem[1040] = 32'h000000b3;
end
