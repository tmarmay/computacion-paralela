N	= 1372
CC = gcc
CFLAGS	= -O2
WFLAGS = -march=native -save-temps -std=c11 -s -Wall -Wextra -g -lglut -funsafe-math-optimizations -DN=$(N) -mavx -fopenmp
#WFLAGS = -march=native -mtune=native -O2 -DN=$(N) -funsafe-math-optimizations
LDFLAGS	= -lm -fopenmp

TARGETS	= tiny_md #viz
SOURCES	= $(shell echo *.c)
OBJECTS = core.o wtime.o

EXECUTION-HISORY = hdump

all: $(TARGETS)

viz: viz.o $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS) -lGL -lGLU -lglut -fopenmp

tiny_md: tiny_md.o $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS) -fopenmp

%.o: %.c
	$(CC) $(WFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

clean:
	rm -f $(TARGETS) *.o *.xyz *.log .depend

.depend: $(SOURCES)
	$(CC) -MM $^ > $@

-include .depend

.PHONY: clean all

run: $(TARGETS)
	@echo "************************" >> $(EXECUTION-HISORY)
	@echo "N-particulas: $(N)" >> $(EXECUTION-HISORY)
	@echo "Optimizacion: $(CFLAGS)" >> $(EXECUTION-HISORY)
	@echo "Flags: $(WFLAGS)" >> $(EXECUTION-HISORY)
	@perf stat -e fp_ret_sse_avx_ops.all -e instructions ./$(TARGETS) > /dev/null 2>> $(EXECUTION-HISORY)
	echo "Simulacion terminado, datos en $(EXECUTION-HISORY)"
