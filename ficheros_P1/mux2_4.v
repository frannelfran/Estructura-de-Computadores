// 1.2. Realiza ahora un multiplexor de 2 entradas a una salida en el que las entradas son de 4 bits. Como ya
// sabes, la línea de selección s determina cuál de las entradas pasa a la salida. El prototipo del módulo es el
// siguiente:

module mux2_4(output wire [3:0] Out, input wire [3:0] A, input wire [3:0] B, input wire s);
  assign Out = (s == 1'b0) ? A : B; // Si la entrada s es 0 asignar A, si no B
endmodule