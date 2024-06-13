section .text

GLOBAL print_int
print_int:
    ret

; Silence linker's warning about executable stack
section .note.GNU-stack noalloc noexec nowrite progbits
