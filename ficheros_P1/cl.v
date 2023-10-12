/* 
  2.1. Implementar una “celda lógica” con el prototipo siguiente:
  Dicha celda lógica calculará sobre los bits a y b las operaciones lógicas and, or, xor e inversión del bit a
  cuando el vector de dos bits s vale 00, 01, 10 y 11 respectivamente.
*/

module cl(output wire out, input wire a, b, input wire [1:0] S);
  input wire and_, or_, xor_, not_;
  assign and_ = a && b; // Operador AND
  assign or_ = a | b; // OPERADOR OR
  assign xor_ = a ^ b; // OPERADOR XOR
  assign not_ = ~a; // OPERADOR NOT
  mux4_1 mux_(out, and_, or_, xor_, not_, S);
endmodule