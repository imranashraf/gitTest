CC=gcc
CFLAGS=-O2
EXEC=exec
CSRCS=main.c

OBJS=$(CSRCS:%.c=%.o)

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) -o $(EXEC) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

run: $(EXEC)
	./$(EXEC)

clean:
	rm -f $(EXEC) $(OBJS) *~


