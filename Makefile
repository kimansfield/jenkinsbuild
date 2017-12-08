CC=gcc
CFLAGS=-I.
DEPS = ./

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomake: main.o 
	gcc -o hellomake main.o -I.