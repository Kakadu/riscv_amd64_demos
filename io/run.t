  $ ./amd64.exe
  Some very lo
$ export QEMU_STRACE=1
  $ qemu-riscv64 -cpu rv64 -L /usr/riscv64-linux-gnu ./demo_in_c.exe # 2>&1 | grep -v -e set_tid_address -e mprotect | cut -f 2- -d' '
  Some very lo
  $ unset QEMU_STRACE
  $ qemu-riscv64 -cpu rv64 -L /usr/riscv64-linux-gnu ./rv64.exe
  Some very lo
