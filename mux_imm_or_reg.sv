module mux_imm_or_reg #(parameter width = 32) (reg_input,imm_generated_input,alu_src,operand_two);

input [width-1:0] imm_generated_input;
input [width-1:0] reg_input;
input alu_src;
output reg [width-1:0] operand_two;

assign operand_two=alu_src?imm_generated_input:reg_input;
endmodule
