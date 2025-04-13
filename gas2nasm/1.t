  $ ocamlopt -o tuple1.exe -S -dstartup tests/tuple1.ml  -nopervasives  -ccopt -lasmrun -ccopt -lm -S
  $ ./tuple1.exe
  110
  1000

  $ ls
  $ ./gas2nasm.exe tests/tuple1.s
  ALIGN 16
  caml_negf_mask:
  .dq 0x8000000000000000
  .dq 0x0
  ALIGN 16
  caml_absf_mask:
  .dq 0x7fffffffffffffff
  .dq -1
  SECTION DATA ; ???
  camlTuple1__data_begin: ; Global was here
  camlTuple1__data_begin:
  SECTION TEXT ; ???
  camlTuple1__code_begin: ; Global was here
  camlTuple1__code_begin:
  SECTION DATA ; ???
  ALIGN 8
  SECTION DATA ; ???
  ALIGN 8
  .dq 3063
  camlTuple1__string_of_int_98: ; Global was here
  camlTuple1__string_of_int_98:
  camlTuple1__string_of_int_21_closure: ; Global was here
  camlTuple1__string_of_int_21_closure:
  .dq 0xcamlTuple1__string_of_int_21
  .dq 0x100000000000005
  SECTION DATA ; ???
  ALIGN 8
  .dq 3063
  camlTuple1__print_endline_193: ; Global was here
  camlTuple1__print_endline_193:
  camlTuple1__print_endline_43_closure: ; Global was here
  camlTuple1__print_endline_43_closure:
  .dq 0xcamlTuple1__print_endline_43
  .dq 0x100000000000005
  SECTION DATA ; ???
  ALIGN 8
  .dq 4087
  camlTuple1__output_string_99: ; Global was here
  camlTuple1__output_string_99:
  camlTuple1__output_string_31_closure: ; Global was here
  camlTuple1__output_string_31_closure:
  .dq 0xcaml_curry2
  .dq 0x200000000000007
  .dq 0xcamlTuple1__output_string_31
  SECTION DATA ; ???
  ALIGN 8
  .dq 7159
  camlTuple1__foo_100: ; Global was here
  camlTuple1__foo_100:
  camlTuple1__foo_58_closure: ; Global was here
  camlTuple1__foo_58_closure:
  .dq 0xcamlTuple1__foo_58
  .dq 0x10000000000000d
  .dq 3321
  camlTuple1__foo_74_closure: ; Global was here
  camlTuple1__foo_74_closure:
  .dq 0xcaml_curry2
  .dq 0x200000000000007
  .dq 0xcamlTuple1__foo_74
  SECTION DATA ; ???
  ALIGN 8
  .dq 5888
  camlTuple1: ; Global was here
  camlTuple1:
  .dq 1
  .dq 0xcamlTuple1__string_of_int_21_closure
  .dq 0xcamlTuple1__output_string_31_closure
  .dq 0xcamlTuple1__print_endline_43_closure
  .dq 0xcamlTuple1__foo_58_closure
  SECTION DATA ; ???
  ALIGN 8
  .dq 1792
  camlTuple1__apply_arg_112: ; Global was here
  camlTuple1__apply_arg_112:
  .dq 1
  SECTION DATA ; ???
  ALIGN 8
  .dq 1792
  camlTuple1__apply_arg_115: ; Global was here
  camlTuple1__apply_arg_115:
  .dq 1
  SECTION DATA ; ???
  ALIGN 8
  .dq 1792
  camlTuple1__Pccall_120: ; Global was here
  camlTuple1__Pccall_120:
  .dq 1
  SECTION DATA ; ???
  ALIGN 8
  camlTuple1__gc_roots: ; Global was here
  camlTuple1__gc_roots:
  .dq 0xcamlTuple1__Pccall_120
  .dq 0xcamlTuple1__apply_arg_115
  .dq 0xcamlTuple1__apply_arg_112
  .dq 0xcamlTuple1
  .dq 0x0
  SECTION TEXT ; ???
  ALIGN 16
  camlTuple1__foo_58: ; Global was here
  camlTuple1__foo_58:
  Got subq
  sub ?, ?
  .L100:
  Got cmpq
    ; (Binop (CMP, (ADeref R), (AReg R)))
  Got jbe
    ; (Jbe "jbe")
  .L102:
  Got movq
    ; (Binop (MOV, (AReg_off1 (56, R)), (AReg R)))
  Got movq
    ; (Binop (MOV, (ADeref R), (AReg R)))
  Got addq
    ; (Binop (ADD, (AConst 8), (AReg R)))
  Got jmp
    ; (Jmp "jmp")
  .L101:
  Got call
    ; (Call "call")
  .L103:
  Got jmp
    ; (Jmp "jmp")
    ; (Type ["camlTuple1__foo_58"; "@function"])
    ; Size
  SECTION TEXT ; ???
  ALIGN 16
  camlTuple1__string_of_int_21: ; Global was here
  camlTuple1__string_of_int_21:
  Got subq
  sub ?, ?
  .L104:
  Got movq
    ; (Binop (MOV, (ALab_pcrel "camlTuple1__const_immstring_25"), (AReg R)))
  Got movq
    ; (Binop (MOV, (AReg R), (AReg R)))
  Got movq
    ; (Binop (MOV, (ALab_pcrel "caml_format_int"), (AReg R)))
  Got call
    ; (Call "call")
  .L105:
  Got movq
    ; (Binop (MOV, (AReg_off1 (56, R)), (AReg R)))
  Got addq
    ; (Binop (ADD, (AConst 8), (AReg R)))
  Got ret
    ; Ret
    ; (Type ["camlTuple1__string_of_int_21"; "@function"])
    ; Size
  SECTION TEXT ; ???
  ALIGN 16
  camlTuple1__output_string_31: ; Global was here
  camlTuple1__output_string_31:
  Got subq
  sub ?, ?
  .L106:
  Got movq
    ; (Binop (MOV, (AReg_off1 (-56, R)), (AReg R)))
  Got shrq
    ; (Binop (SHR, (AConst 10), (AReg R)))
  Got leaq
    ; (Binop (LEA, (AReg_off2 (-49, R, 8)), (AReg R)))
  Got movzbq
    ; (Binop (MOVZB, (AReg_off3 (None, R, R)), (AReg R)))
  Got subq
  sub ?, ?

  [1]
  $ ./gas2nasm.exe tuple1.exe.startup.s