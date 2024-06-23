set disassembly-flavor intel
layout asm
layout reg
b *(main+10)
r
printf "%s", $rdi