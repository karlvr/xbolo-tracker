CC = gcc
LFLAGS = -pthread 
CFLAGS = -g -Wall -pedantic 
OUTPUT = tracker

all: tracker

clean:
	rm -f *.o
	rm -f ${OUTPUT}

tracker: tracker.o io.o list.o errchk.o
	${CC} ${CFLAGS} ${LFLAGS} -o $@ tracker.o io.o list.o errchk.o

%.o: %.c
	${CC} ${CFLAGS} -c $<
