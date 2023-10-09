`timescale 1ns/1ns

module ul4_tb;
  // Definición de señales
  reg [3:0] A;
  reg [3:0] B;
  reg [1:0] S;
  wire [3:0] Out;

  // Instancia del módulo bajo prueba
  ul4 u1 (
    .Out(Out),
    .A(A),
    .B(B),
    .S(S)
  );

  // Generación de señal de reloj
  reg clk = 0;
  always begin
    #5 clk = ~clk;
  end

  // Establecer valores iniciales para las entradas
  initial begin
    // Caso 1: AND
    A = 4'b1010;
    B = 4'b1100;
    S = 2'b00;
    $display("Caso 1: AND, A=%b, B=%b, S=%b", A, B, S);
    $monitor("Resultado: Out=%b", Out);
    #20;

    // Caso 2: OR
    A = 4'b1010;
    B = 4'b1100;
    S = 2'b01;
    $display("Caso 2: OR, A=%b, B=%b, S=%b", A, B, S);
    $monitor("Resultado: Out=%b", Out);
    #20;

    // Caso 3: XOR
    A = 4'b1010;
    B = 4'b1100;
    S = 2'b10;
    $display("Caso 3: XOR, A=%b, B=%b, S=%b", A, B, S);
    $monitor("Resultado: Out=%b", Out);
    #20;

    // Caso 4: NOT
    A = 4'b1010;
    S = 2'b11;
    $display("Caso 4: NOT, A=%b, S=%b", A, S);
    $monitor("Resultado: Out=%b", Out);
    #20;

    // Finalizar la simulación
    $finish;
  end

endmodule
