/*
  Es interesante que podamos complementar o no a voluntad, en función de una señal de control cpl, de
  forma que podamos dejar pasar un dato sin modificar o hacer su complemento a uno. Elabora el módulo
  con el prototipo siguiente:
*/

module compl1(output wire [3:0] Out, input wire [3:0] Inp, input wire cpl);
assign Out = (cpl == 1'b1) ? ~Inp : Inp;
endmodule