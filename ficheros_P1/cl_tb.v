`timescale 1ns/1ns

module cl_tb;
  // Definición de señales
  reg a;
  reg b;
  reg [1:0] S;
  wire out;

  // Instancia del módulo bajo prueba
  cl u1 (
    .out(out),
    .a(a),
    .b(b),
    .S(S)
  );

  // Generación de señal de reloj
  reg clk = 0;
  always begin
    #5 clk = ~clk;
  end

  // Establecer valores iniciales para las entradas
  initial begin
    // Caso 1: Operación AND (S=00)
    a = 1'b1;
    b = 1'b0;
    S = 2'b00;
    $display("Caso 1: S=00, a=%b, b=%b", a, b);
    $monitor("Resultado: out=%b", out);
    #20;

    // Caso 2: Operación OR (S=01)
    a = 1'b1;
    b = 1'b0;
    S = 2'b01;
    $display("Caso 2: S=01, a=%b, b=%b", a, b);
    $monitor("Resultado: out=%b", out);
    #20;

    // Caso 3: Operación XOR (S=10)
    a = 1'b1;
    b = 1'b0;
    S = 2'b10;
    $display("Caso 3: S=10, a=%b, b=%b", a, b);
    $monitor("Resultado: out=%b", out);
    #20;

    // Caso 4: Operación NOT (S=11)
    a = 1'b1;
    S = 2'b11;
    $display("Caso 4: S=11, a=%b", a);
    $monitor("Resultado: out=%b", out);
    #20;

    // Finalizar la simulación
    $finish;
  end

endmodule
