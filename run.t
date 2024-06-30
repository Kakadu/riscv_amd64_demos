$ riscv64-linux-gnu-as -march=rv64imac print_int.s -o hello.o
$ riscv64-linux-gnu-ld hello.o -o program.exe
$ qemu-riscv64 -L /usr/riscv64-linux-gnu -cpu rv64 ./program.exe

$ riscv64-linux-gnu-as -march=rv64imac print.s -o hello.o
$ riscv64-linux-gnu-ld hello.o -o program.exe
$ qemu-riscv64 -L /usr/riscv64-linux-gnu -cpu rv64 ./program.exe

  $ qemu-riscv64 -L /usr/riscv64-linux-gnu -cpu rv64 ./print.exe
  Hello, World!
  01234567012345670123456701234567
  varname                    65536
