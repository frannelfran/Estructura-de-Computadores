
`timescale 1 ns / 10 ps

module fa_v1_tb;
reg a, b, c_in;
wire sum, c_out;

fa_v1 f1(sum, c_out, a, b, c_in);

initial begin
  $monitor("tiempo=%0d a=%b b=%b c_in=%b sum=%b c_out=%b", $time, a, b, c_in, sum, c_out);
  $dumpfile("fa_v1_tb.vcd");
  $dumpvars;
  // Vector de test 0
  a = 1'b0;
  b = 1'b0;
  c_in = 1'b0;
  #20;

  //Vector de test 1
  a = 1'b1;
  b = 1'b1;
  c_in = 1'b0;
  #20;

  //Vector de test 2
  a = 1'b1;
  b = 1'b1;
  c_in = 1'b1;
  #20;

  $finish;
end

endmodule







