
SRC = hello.asm
OBJS = $(SRC:.asm=.o)
TARGETS = $(OBJS:%.o=%)

all: build

.PHONEY: build
build: $(TARGETS)

$(TARGETS): 
	@nasm -felf64 $@.asm;
	@ld $@.o -o $@
	
.PHONEY: clean 
clean:
	@rm -f $(OBJS) 
	@rm -f $(TARGETS) 
