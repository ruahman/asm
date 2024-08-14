# Makefile for compiling an assembly program with NASM

# Target executable name
TARGET = hello_world

# Source file(s)
SRC = $(TARGET).asm

# Object file(s)
OBJ = $(TARGET).o

# NASM compiler flags
NASM_FLAGS = -f elf

# Linker flags
LD_FLAGS = -m elf_i386 

# Default rule
all: $(TARGET)

# Rule to assemble the .asm file to an object file
$(OBJ): $(SRC)
	nasm $(NASM_FLAGS) -o $(OBJ) $(SRC)

# Rule to link the object file to create the executable
$(TARGET): $(OBJ)
	ld $(LD_FLAGS) -o $(TARGET) $(OBJ)

# Clean up generated files
clean:
	rm -f $(OBJ) $(TARGET)

# PHONY targets to prevent conflict with files named 'clean' or 'all'
.PHONY: all clean

