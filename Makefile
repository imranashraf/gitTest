CC=gcc
CFLAGS=-O2
EXEC=exec
CSRCS=main.c
#extension replacement rule
OBJS=$(CSRCS:%.c=%.o)

#default 
all: $(EXEC)

#some comments
$(EXEC): $(OBJS)
	$(CC) -o $(EXEC) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

#run rule
run: $(EXEC)
	./$(EXEC)

clean:
	rm -f $(EXEC) $(OBJS) *~

#add phony

