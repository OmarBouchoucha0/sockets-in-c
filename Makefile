# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -D_GNU_SOURCE

# Target executable name
TARGET = main

# Source files
SOURCES = main.c

# Object files (automatically generated from source files)
OBJECTS = $(SOURCES:.c=.o)

# Default target
all: $(TARGET)

# Build the executable
$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(TARGET)

# Build object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up generated files
clean:
	rm -f $(OBJECTS) $(TARGET)

# Rebuild everything
rebuild: clean all

# Phony targets (not actual files)
.PHONY: all clean rebuild
