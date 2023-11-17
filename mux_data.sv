module mux_data #(parameter width = 32) (mem_data_out,alu_data_out,mem_to_reg,data_final);

input [width-1:0] mem_data_out;
input [width-1:0] alu_data_out;
input mem_to_reg;
output reg [width-1:0] data_final;

assign data_final=mem_to_reg?mem_data_out:alu_data_out;
endmodule
