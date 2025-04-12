set logging on
set history save
set disassembly-flavor intel
#tui new-layout example {-horizontal regs 1 asm 1} 2 status 0 cmd 1
tui new-layout example regs 2 asm 2 status 0 cmd 1
tui layout example
focus cmd
b _start
b camlMini__output_string_28
b camlMini__entry
r
# x/8xg $sp