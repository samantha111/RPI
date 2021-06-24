CC = gcc

SRCS = $(wildcard *.c)

OBJS = $(SRCS:.c=.o)

main.exe : $(OBJS)
	$(CC) $(OBJS) -o main.exe
	@echo $(OBJS)
%.o : %.c
	$(CC) -c $<

clean: 
	rm *.o *.exe

