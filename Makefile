CC = gcc
CFLAGS = -Wall -Wextra -std=c11
SRCS = main.c metrican.c utilidades.c
OBJS = $(SRCS:.c=.o)
EXEC = app1

# Regla por defecto
all: $(EXEC)

# Cómo construir el ejecutable
$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) -o $(EXEC) $(OBJS)

# Limpiar archivos temporales
clean:
	rm -f $(EXEC) $(OBJS)

# Ejecutar con datos de ejemplo
run: all
	@echo "Ejecutando con métricas de prueba..."
	./$(EXEC) ventas.csv pms pls dms apd ims hp
