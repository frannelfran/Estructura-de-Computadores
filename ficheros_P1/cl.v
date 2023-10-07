// 2.1. Implementar una “celda lógica” con el prototipo siguiente:
// Dicha celda lógica calculará sobre los bits a y b las operaciones lógicas and, or, xor e inversión del bit a
// cuando el vector de dos bits s vale 00, 01, 10 y 11 respectivamente.

module cl(output wire out, input wire a, b, input wire [1:0] S);
  assign out = (S == 2'b00) ? (a & b): // Operación AND
               (S == 2'b01) ? (a | b): // Operación OR
               (S == 2'b10) ? (a ^ b): // Operación XOR
               (S == 2'b11) ? (~a): // Operación NOT
               1'b0; // Valor por defecto
endmodule