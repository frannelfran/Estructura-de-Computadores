# Compilación
main:
	@echo "Compilando ficheros..."
	iverilog cl_tb.v cl.v mux4_1.v -o cl
	iverilog ul4_tb.v ul4.v cl.v mux4_1.v -o ul4
	iverilog alu_tb.v alu.v mux2_4.v compl1.v sum4.v fa_v1.v ha_vr.v ul4.v cl.v mux4_1.v -o alu

.PHONY: clean

# Eliminar archivos
clean:
	@echo "Eliminando ficheros compilados..."
	rm -f cl
	rm -f ul4
	rm -f alu
	rm -f alu.vcd