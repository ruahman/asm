
SOURCES = $(wildcard *.asm)
OBJECTS = $(SOURCES:.asm=.o)
TARGETS = $(SOURCES:.asm=)

# NASM compiler flags
# elf is object file format for Linux
NASM_FLAGS = -f elf64

# Linker flags
# elf_i386 is object file format for 32-bit x86 architecture
# elf_x86_64 is object file format for 64-bit x86 architecture
LD_FLAGS = -m elf_x86_64 

all: $(TARGETS)

# create the targets
# $@ is the target 
# $< is the first dependency 
# $^ is all dependencies
$(TARGETS): % : %.o
	ld $(LD_FLAGS) -o $@ $<

# create the object files
# $@ is the target 
# $< is the first dependency 
# $^ is all dependencies
%.o: %.asm
	nasm $(NASM_FLAGS) -o $@ $<

# Clean up generated files
clean:
	rm -f $(TARGETS) $(OBJECTS)

# PHONY targets to prevent conflict with files named 'clean' or 'all'
.PHONY: all clean

