#set trace-commands on
set logging on
set history save
set architecture riscv:rv64
set sysroot /usr/riscv64-linux-gnu
target remote :1234
tui new-layout example {-horizontal regs 1 asm 1} 2 status 0 cmd 1
tui layout example
focus cmd
b _start
c
# x/8xg $sp

