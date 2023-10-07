// 2.2. Implementar una “unidad lógica de 4 bits” de forma estructural, utilizando las celdas lógicas descritas
// en el objetivo 2.1. El prototipo sería el siguiente:

module ul4(output wire[3:0] Out, input wire[3:0] A, input wire[3:0] B, input wire [1:0] S);
  cl c0(Out[0], A[0], B[0], 2'b00);
  cl c1(Out[1], A[1], B[1], 2'b01);
  cl c2(Out[2], A[2], B[2], 2'b10);
  cl c3(Out[3], A[3], B[3], 2'b11);
endmodule