CC = gcc

CFLAGS = -Wall

objects = $(patsubst, %.c,%.o,$(wildcard, *.o))

edit : $(objects)
	CC -o $


.PHONY : clean
clean :
	rm -f *.o