dule branch_and #(parameter width = 32) (branch_in,zero,branch);

input branch_in;
input zero;
output reg branch;

assign branch=branch_in & zero;
endmodule
