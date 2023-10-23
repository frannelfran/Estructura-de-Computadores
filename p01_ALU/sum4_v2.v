/*
  3.3. Realiza una implementación alternativa que no utilice los “Full-Adder” de 1 bit, sino asignación
  continua y operador de concatenación. Tu profesor te pedirá en la corrección que uses uno u otro.
*/

module sum4_v2(output wire[3:0] S, output wire c_out, input wire[3:0] A, input wire[3:0] B, input wire c_in);
  assign {c_out, S} = A + B + c_in;
endmodule