module alu(output wire [3:0] R, output wire zero, c_out, sign, input wire [3:0] A, B, input wire c_in, input wire [1:0] ALUOP, input wire l);
  output wire [3:0] out_add1, OP1, out_op2_B, OP2, out_sum4, out_ul4;
  input wire add1, op1_A, op2_B, cpl;

  // Funciones de entrada
  assign add1 = ALUOP[0];
  assign op1_A = l | (ALUOP[1] & ~ALUOP[0]);
  assign op2_B = l | (ALUOP[1] & ~ALUOP[0]);
  assign cpl = ~l & ~ALUOP[1] & ALUOP[0];

  assign zero = ~R[3] & ~R[2] & ~R[1] & ~R[0];
  assign sign = R[3];
  
  // Multiplexores
  mux2_4 mux_add1(out_add1, 4'b0000, 4'b0001, add1);
  mux2_4 mux_op1_A(OP1, out_add1, A, op1_A);
  mux2_4 mux_op2_B(out_op2_B, A, B, op2_B);

  // Compl1
  compl1 compl1_cpl(OP2, out_op2_B, cpl);

  // Operaciones aritméticas
  sum4_v2 sum4_c_in(out_sum4, c_out, OP1, OP2, c_in);

  // Operaciones lógicas
  ul4 ul4_ALUOP(out_ul4, OP1, OP2, ALUOP);

  // Salida R
  mux2_4 mux_R(R, out_sum4, out_ul4, l);
endmodule