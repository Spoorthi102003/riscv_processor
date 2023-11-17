module ALU12control #(parameter data_width = 32)(alu_op,func7,func3,control_line);

input [1:0] alu_op;
input [6:0] func7;
input [2:0] func3;
output reg [3:0] control_line;

always_ff@(*)
begin
case (alu_op)
2'b10: case(func7)
7'b0000000 : case(func3)
3'b000: control_line <= 4'b0010;
3'b110: control_line <= 4'b0001;
3'b111: control_line <= 4'b0000;
endcase
7'b0100000 : control_line <= 4'b0110;
endcase

2'b01: control_line <= 4'b0110;

2'b00: control_line <= 4'b0010;
default: control_line <=4'bxxxx;
endcase 
end 
endmodule
