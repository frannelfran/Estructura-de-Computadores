//Sumador completo (full-adder) de tres entradas de 1 bit realizado a partir de puertas l�gicas 
module fa(output wire sum, output wire c_out, input wire a, input wire b, input wire c_in);

  assing sum = a ^ b;
  assing c_out = a & b;

endmodule

module full_adder(output wire sum, output wire carry_out, input wire a, input wire b, input wire carry_in);

  wire s1, c1, c2;

  // Semisumador 1: a + b
  semisum u1(s1, c1, a, b);

  // Semisumador 2: s1 + carry_in
  semisum u2(sum, c2, s1, carry_in);

  // Carry Out del Full Adder
  assign carry_out = c1 | c2; // OR de los acarreos generados por los semisumadores

endmodule