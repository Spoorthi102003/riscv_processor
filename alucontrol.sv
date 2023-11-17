module alucontrol #(parameter data_width = 32)(func7,func3,opcode,alusrc,mem_to_reg,regwrite,mem_read,mem_write,branch,alu_op);


input [6:0]func7,opcode;
input [2:0]func3;
output reg[1:0]alu_op;
output reg alusrc,mem_to_reg,regwrite,mem_read,mem_write,branch;

always@(*)
	begin
      if(opcode == 7'b0110011)
					begin alu_op = 2'b10;alusrc=0 ;mem_to_reg=0 ;regwrite=1 ;mem_read=0 ;mem_write=0 ;branch=0 ; end
      if(opcode == 7'b0000011)
					begin alu_op = 2'b00;alusrc=1 ;mem_to_reg=1 ;regwrite=1 ;mem_read=1 ;mem_write=0 ;branch=0 ; end
      if(opcode == 7'b0100011)
					begin alu_op = 2'b00;alusrc=1 ;mem_to_reg=0 ;regwrite=0 ;mem_read=0 ;mem_write=1 ;branch=0 ; end
      if(opcode == 7'b1100011)
					begin alu_op = 2'b01;alusrc=0 ;mem_to_reg=0 ;regwrite=0 ;mem_read=0 ;mem_write=0 ;branch=1 ; end

	end
endmodule
