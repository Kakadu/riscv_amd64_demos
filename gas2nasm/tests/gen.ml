[@@@ocamlformat "disable"]
#use "topfind";;
#require "str";;

let samples = [ "Tuple1"; "Facacc"; "Fack" ]

module C = struct
  let make_gas =
    {|(rule
 (deps MAIN.ml)
 (targets MAIN.s MAIN.o MAIN.exe.startup.s MAIN.exe)
 (mode
  (promote (until-clean)))
 (action
  (run
   ocamlopt
   -dstartup
   -S
   %{deps}
   -nopervasives
   -verbose
   -o
   MAIN.exe
   -ccopt
   -lasmrun
   -ccopt
   -lm)))
|}

  let make_convert =
    {|(rule
 (deps MAIN.exe.startup.s)
 (targets MAIN.startup.nasm.s)
 (mode
  (promote (until-clean)))
 (action
  (run ../gas2nasm.exe -startup -main MAIN %{deps} -o %{targets})))

(rule
 (deps MAIN.s)
 (targets MAIN.nasm.s)
 (mode
  (promote (until-clean)))
 (action
  (run ../gas2nasm.exe -main MAIN %{deps} -o %{targets})))
|}

  let make_nasm_exe =
    {|
(rule
 (deps MAIN.startup.nasm.s)
 (targets MAIN_nasm_startup.o)
 ; (mode
 ;  (promote (until-clean)))
 (action
  (run nasm -g -F dwarf -f elf64 -o %{targets} %{deps})))

(rule
 (deps MAIN.nasm.s)
 (targets MAIN.nasm.o)
 (mode
  (promote (until-clean)))
 (action
  (run nasm -g -F dwarf -f elf64 -o %{targets} %{deps})))

(rule
 (deps MAIN_nasm_startup.o MAIN.nasm.o)
 (targets MAIN_nasm.exe)
 (mode
  (promote (until-clean)))
 (action
  (run gcc -o %{targets} %{deps} -L%{ocaml_where} -lasmrun -lm)))

(cram
 (deps MAIN_nasm.exe))
|}
end

let on_sample ppf name =
  Format.fprintf ppf "%s\n"
    (Str.global_replace (Str.regexp "MAIN") name C.make_gas);
  Format.fprintf ppf "%s\n"
    (Str.global_replace (Str.regexp "MAIN") name C.make_convert);
  Format.fprintf ppf "%s\n"
    (Str.global_replace (Str.regexp "MAIN") name C.make_nasm_exe);
  ()

let () =
  Out_channel.with_open_text "dune.samples" (fun ch ->
      let ppf = Format.formatter_of_out_channel ch in
      List.iter (on_sample ppf) samples;
      Format.pp_print_flush ppf ())
