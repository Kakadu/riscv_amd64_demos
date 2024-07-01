  $ export QEMU_CPU=rv64,zba=true,zbb=true,v=true,vlen=256,vext_spec=v1.0,rvv_ta_all_1s=true,rvv_ma_all_1s=true
  $ qemu-riscv64 -L /usr/riscv64-linux-gnu  ./rv64.exe
  01234567012345670123456701234567
                                 0
$ echo $?
$ ./amd64.exe
