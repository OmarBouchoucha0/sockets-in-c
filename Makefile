# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -D_GNU_SOURCE

# Target executable names
TARGETS = server client

# Default target
all: $(TARGETS)

# Build the server executable
server: server.o
	$(CC) server.o -o server

# Build the client executable
client: client.o
	$(CC) client.o -o client

# Build object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up generated files
clean:
	rm -f server.o client.o $(TARGETS)

# Rebuild everything
rebuild: clean all

# Phony targets (not actual files)
.PHONY: all clean rebuild
