# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -D_GNU_SOURCE

# Target executable names
TARGETS = listner talker
# Default target
all: $(TARGETS)

# Build the server executable
listner: listner.o
	$(CC) listner.o -o listner

# Build the client executable
talker: talker.o
	$(CC) talker.o -o talker

# Build object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up generated files
clean:
	rm -f talker.o listner.o $(TARGETS)

# Rebuild everything
rebuild: clean all

# Phony targets (not actual files)
.PHONY: all clean rebuild
