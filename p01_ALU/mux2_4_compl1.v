module mux2_4_compl1(output reg [3:0] Out, input wire [3:0] A, input wire [3:0] B, input wire
                    s, input wire cpl);
  always @(s, cpl, A, B) begin
    case(s)
      1'b0: Out = A; // Si s vale 0 asignar A
      1'b1: Out = B; // Si s vale 1 asignar B
    endcase
    Out = (cpl == 1'b1) ? ~Out : Out; // Si cpl = 1, negar
  end
endmodule