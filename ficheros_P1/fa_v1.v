/*
  3.1. Implementar un “Full-Adder” de la manera más simple posible (operador concatenación ‘{…}’), con el
  prototipo
*/

module fa(output wire sum, output wire c_out, input wire a, input wire b, input wire c_in);
  wire sum1, carry1, carry2;

  ha_vr ha1(sum1, carry1, a, b);
  ha_vr ha2(sum, carry2, c_in, sum1);
  or o1(c_out, carry1, carry2);
endmodule