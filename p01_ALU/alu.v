module alu(output wire [3:0] R, output wire zero, c_out, sign, input wire [3:0] A, B, input wire c_in,
          input wire [1:0] ALUOP, input wire l);
  wire [3:0] sum_result;
  wire sum_carry_out;

  // Sumador de 4 bits
  sum4 sum_unit(sum_result, sum_carry_out, A, B, ci_in);
  // Realizar la operación según lo que marque la ALUOP
  reg operacion;
  always @(*) begin
    case(ALUOP)
      2'b00: operacion = sum_result; // Suma de A + B
      2'b01: operacion = A & B; // A AND B
      2'b10: operacion = A | B; // A OR B
      2'b11: operacion = A ^ B; // A XOR B
      default: operacion = 4'b0; // Valor por defecto
    endcase
  end
  assign R = operacion;
  // Detectar si la salida es igual a zero
  assign zero = (R == 4'b0);
  // Bit de acarreo de salida
  assign c_out = sum_carry_out;
  // Determinar el bit de signo
  assign sign = R[3];
endmodule