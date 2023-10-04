//Sumador completo (full-adder) de tres entradas de 1 bit realizado a partir de puertas l�gicas 
module fa(output wire sum, output wire c_out, input wire a, input wire b, input wire c_in);

  assing sum = a ^ b ^ c_in; // Calcular la suma
  assing c_out = (a & b) | (c_in & (a ^ b)); // Calcular el carry_out

endmodule