  $ ls
$ ./gas2nasm.exe tests/tuple1.s -o tuple1.nasm.S
  $ ls tests
$ ./gas2nasm.exe tests/tuple1.exe.startup.s -o tuple1.startup.nasm.S
$ ls
  $ tests/tuple1.nasm.exe
$ nasm -g -F dwarf -f elf64 -o tuple1.nasm.o tuple1.nasm.S
$ nasm -g -F dwarf -f elf64 -o tuple1.startup.nasm.o tuple1.startup.nasm.S
$ gcc -o tuple1.exe tuple1.nasm.o tuple1.startup.nasm.o -L`ocamlc -where` -lasmrun -lm
