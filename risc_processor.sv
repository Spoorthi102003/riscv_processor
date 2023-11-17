module risc_processor #(parameter data_width = 32, addr_width = 5)(input clk,reset,output [data_width-1:0]alu_data_out);

wire [data_width-1:0]pcaddr_out,pc_out,inst_out,write_data,data_rs1,data_rs2;
wire [addr_width-1:0]add_rs1,add_rs2,add_rd;
wire [6:0]func7,opcode;
wire [2:0]func3;
wire [3:0]alu_in;
wire regwrite; 

pc #(data_width)p1(clk,pc_next,pc_out);
pcaddr #(data_width)p2(pc_out,pcaddr_out);
instr_mem #(data_width)p3(clk,pc_out,inst_out);
dectoreg #(addr_width,data_width)p4(inst_out,add_rs1,add_rs2,add_rd,func7,func3,opcode,imm_value);
regfile #(addr_width,data_width)p5(clk,add_rs1,add_rs2,add_rd,data_final,regwrite,data_rs1,data_rs2);
sign_extension #(data_width)p6(imm_value,imm_thirtytwo_value);
alucontrol #(data_width)p7(func7,func3,opcode,alusrc,mem_to_reg,regwrite,mem_read,mem_write,branch,alu_op);
ALU12control #(data_width)p8(alu_op,func7,func3,control_line);
mux_imm_or_reg #(data_width)p9(data_rs2,imm_thirtytwo_value,alusrc,operand_two);
alu #(data_width)p10(data_rs1,operand_two,control_line,write_data_alu,zero);
pc_plus_offset #(data_width)p11(imm_thirtytwo_value,pc_out,pc_plus_signed_offset);
branch_and #(data_width)p12(branch,zero,branch_select);
mux_pc #(data_width)p13(pcaddr_out,pc_plus_signed_offset,branch_select,pc_next);
data_mem #(data_width)p14(clk,write_data_alu,mem_read,mem_write,data_rs2,data_read);
mux_data #(data_width)p15(data_read,write_data_alu,mem_to_reg,data_final);
assign alu_data_out = data_final;

endmodule
