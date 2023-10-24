# Compilación
main:
	@echo "Compilando ficheros..."
	iverilog alu_tb.v alu.v mux2_4.v compl1.v sum4_v2.v fa_v1.v ha_vr.v ul4.v cl.v mux4_1.v -o alu

.PHONY: clean

# Eliminar archivos
clean:
	@echo "Eliminando ficheros compilados..."
	rm -f alu
	rm -f alu.vcd