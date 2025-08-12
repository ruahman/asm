; ----------------------------------------------------------------------------------------
; Writes "Hello, World" to the console using only system calls. Runs on 64-bit Linux only.
; To assemble and run:
;
;     nasm -felf64 hello.asm && ld hello.o && ./a.out
; ----------------------------------------------------------------------------------------

          global    _start

          section   .text                   ; generaly you put your code in a section called .text
_start:   mov       rax, 1                  ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, message            ; address of string to output
          mov       rdx, 13                 ; number of bytes
          syscall                           ; invoke operating system to do the write

          mov       rax, 60                 ; system call for exit
          xor       rdi, rdi                ; exit code 0
          syscall                           ; invoke operating system to exit

          section   .data                   ; generaly you put your constant data in a section called .data
message:  db        "Hello, World", 10      ; note the newline at the end
                                            ; db is a pseudo instruction that declares bytes that will be in memory when the program runs

; NASM is line-based.
; most programs consist of directives followed by one or more sections
; lines can have an optional label.
; most lines have and instruction followed by zero or more operands
