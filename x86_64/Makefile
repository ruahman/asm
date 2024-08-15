
SOURCES = $(wildcard *.asm)
OBJECTS = $(SOURCES:.asm=.o)
TARGETS = $(SOURCES:.asm=)

# NASM compiler flags
# elf is object file format for Linux
NASM_FLAGS = -f elf

# Linker flags
# elf_i386 is object file format for 32-bit x86 architecture
LD_FLAGS = -m elf_i386 

all: $(TARGETS)

$(TARGETS): % : %.o
	ld $(LD_FLAGS) -o $@ $<

%.o: %.asm
	nasm $(NASM_FLAGS) -o $@ $<

# Clean up generated files
clean:
	rm -f $(TARGETS) $(OBJECTS)

# PHONY targets to prevent conflict with files named 'clean' or 'all'
.PHONY: all clean

