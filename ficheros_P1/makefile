# Compilación
main:
	@echo "Compilando ficheros..."
	iverilog cl_tb.v cl.v mux4_1.v -o cl
	iverilog ul4_tb.v ul4.v cl.v mux4_1.v -o ul4

.PHONY: clean

# Eliminar archivos
clean:
	@echo "Eliminando ficheros compilados..."
	rm -f cl
	rm -f ul4