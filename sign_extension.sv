module sign_extension #(parameter width = 32)(imm_12_bit,imm_32_bit);
input signed [11:0] imm_12_bit;
output reg signed [width-1:0] imm_32_bit;
  
assign imm_32_bit = {{20{imm_12_bit[11]}}, imm_12_bit};

endmodule


