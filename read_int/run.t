  $ export QEMU_CPU=rv64,zba=true,zbb=true,v=true,vlen=256,vext_spec=v1.0,rvv_ta_all_1s=true,rvv_ma_all_1s=true
$ export QEMU_STRACE=1
  $ echo "a0123" | qemu-riscv64 -L /usr/riscv64-linux-gnu ./demo_in_c.exe
  asdf
  a
$ export QEMU_STRACE=1
  $ bash -c "echo -e '5678\n' | qemu-riscv64 -L /usr/riscv64-linux-gnu  ./rv64.exe"
                              5678

  $ bash -c "echo -e '0123\n' | qemu-riscv64 -L /usr/riscv64-linux-gnu  ./rv64.exe"
Error test
  $ bash -c "echo -e 'x\n' | qemu-riscv64 -L /usr/riscv64-linux-gnu  ./rv64.exe"