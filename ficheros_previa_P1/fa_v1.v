//Sumador completo (full-adder) de tres entradas de 1 bit realizado a partir de puertas l�gicas 
module fa(output wire sum, output wire c_out, input wire a, input wire b, input wire c_in);

sum = a ^ b ^ c_in;
c_out = (a & b) c_in & ( ^ b);

endmodule