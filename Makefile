CC = gcc
TARGET = main
SRC = $(wildcard *.c)
OBJ = $(patsubst *.c, *.o, $(SRC))

CFLAGS = -Wall

ALL : $(TARGET)

$(TARGET) : $(OBJ)
	$(CC) -o $@ $^

%.o : %.c
	$(CC) $(CFLAGS) $< -o $@

.PHONY : clean
clean : 
	rm -f *.o $(TARGET)
