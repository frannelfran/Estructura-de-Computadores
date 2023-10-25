# Compilación
main:
	@echo "Compilando ficheros..."
	iverilog alu_tb.v alu2.v mux2_4.v compl1.v sum4_v2.v fa_v1.v ha_vr.v ul4.v cl.v mux4_1.v mux2_4_compl1.v -o alu2

.PHONY: clean

# Eliminar archivos
clean:
	@echo "Eliminando ficheros compilados..."
	rm -f alu
	rm -r alu2
	rm -f alu.vcd