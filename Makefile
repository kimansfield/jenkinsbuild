CC=gcc
CFLAGS=-I.
DEPS = ./

%.o: %.c $(DEPS)
	@echo $(CC) -c -o $@ $< $(CFLAGS)
	$(CC) -c -o $@ $< $(CFLAGS)

main: main.o 
	gcc -o main main.o -I.