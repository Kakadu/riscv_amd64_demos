  $ ocamlopt -o tuple1.exe -S -dstartup tests/tuple1.ml  -nopervasives  -ccopt -lasmrun -ccopt -lm -S
  $ ./tuple1.exe

$ ls
  $ ./gas2nasm.exe tests/tuple1.s