set logging on
set history save
set disassembly-flavor intel
#tui new-layout example {-horizontal regs 1 asm 1} 2 status 0 cmd 1
tui new-layout example regs 2 asm 2 status 0 cmd 1
tui layout example
focus cmd

b camlFack__fac_67
b camlFack__output_string_106
b camlFack__entry
r
# x/8xg $sp