.SUFFIXES:.c .o
CC=gcc
SRCS=main.c
OBJS=$(SRCS:.c=.o)
EXEC=main
start:$(OBJS)
	$(CC) -o $(EXEC) $(OBJS) -L. -lfunc
.cpp.o:
	$(CC) -Wall -g -o $(@) -c $<
clean:
	rm -f $(OBJS)
	rm -f core*
