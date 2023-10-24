module alu(output wire [3:0] R, output wire zero, c_out, sign, input wire [3:0] A, B, input wire c_in, input wire [1:0] ALUOP, input wire l);
  input wire add1, opp1_A, opp2_B, cpl; // Entradas de los multiplexores
  output wire [3:0] out_add1, out_opp1_A, out_opp2_B; // Salidas de los multiplexores
  output wire [3:0] out_cpl; // Salidas de cpl
  output wire [3:0] out_sum4, out_ul4; // Salidas para las operaciones aritméticas y lógicas

  // Entrada de los multiplexores
  assign add1 = ALUOP[0];
  assign opp1_A = l | (ALUOP[1] & ~ALUOP[0]);
  assign opp2_B = l | (ALUOP[1] & ~ALUOP[0]);
  assign cpl = (l & ALUOP[1] & ALUOP[0]) | (~l & ~ALUOP[1] & ALUOP[0]);

  // Creo los multiplexores de la ALU
  mux2_4 mux_add1(out_add1, 4'b0000, 4'b0001, add1);
  mux2_4 mux_op1_A(out_opp1_A, out_add1, A, opp1_A);
  mux2_4 mux_op2_B(out_opp2_B, A, B, opp2_B);

  //Creo el complemento a 1
  compl1 compl1_cpl(out_cpl, out_opp2_B, cpl);

  // Realizo las operaciones aritméticas
  sum4 sum4_cin(out_sum4, c_out, out_opp1_A, out_opp2_B, c_in);

  // Realizo las opoeraciones lógicas
  ul4 ul4_aluop(out_ul4, out_opp1_A, out_cpl, ALUOP);

  // Multiplexor para R
  mux2_4 mux_R(R, out_sum4, out_ul4, l);
endmodule