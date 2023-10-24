/* 
  1.1. Basándonos en los ejemplos vistos en las sesiones tutorizadas, implementar un multiplexor de 4
  entradas de un bit con el siguiente prototipo:
*/

module mux4_1(output reg out, input wire a, b, c, d, input wire [1:0] S);
  always @(S, a, b, c, d) begin
    case(S) // Dependiendo de la entrada S
      2'b00: out = a;
      2'b01: out = b;
      2'b10: out = c;
      2'b11: out = d;
    endcase 
  end
endmodule