.PHONY: clean
.SUFFIXES: .c .o

vpath %.c src
vpath %.h include

%.o: %.c
	gcc -c $<
%: %.o 
	gcc -o $@ $^
hello: hello.o print.c
hello.o: hello.c print.h
print.o: print.c
clean:
	rm -f hello *.o 
