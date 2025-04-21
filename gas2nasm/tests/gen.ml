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
 (targets MAIN.startup.yasm.s)
 (mode
  (promote (until-clean)))
 (action
  (run ../gas2yasm.exe -startup -main MAIN %{deps} -o %{targets})))

(rule
 (deps MAIN.s)
 (targets MAIN.yasm.s)
 (mode
  (promote (until-clean)))
 (action
  (run ../gas2yasm.exe -main MAIN %{deps} -o %{targets})))
|}

  let make_yasm_exe =
    {|
(rule
 (deps MAIN.startup.yasm.s)
 (targets MAIN_yasm_startup.o)
 ; (mode
 ;  (promote (until-clean)))
 (action
  (run yasm -g -F dwarf -f elf64 -o %{targets} %{deps})))

(rule
 (deps MAIN.yasm.s)
 (targets MAIN.yasm.o)
 (mode
  (promote (until-clean)))
 (action
  (run yasm -g -F dwarf -f elf64 -o %{targets} %{deps})))

(rule
 (deps MAIN_yasm_startup.o MAIN.yasm.o)
 (targets MAIN_yasm.exe)
 (mode
  (promote (until-clean)))
 (action
  (run gcc -o %{targets} %{deps} -L%{ocaml_where} -lasmrun -lm)))

(cram
 (deps MAIN_yasm.exe))
|}
end

let on_sample ppf name =
  Format.fprintf ppf "%s\n"
    (Str.global_replace (Str.regexp "MAIN") name C.make_gas);
  Format.fprintf ppf "%s\n"
    (Str.global_replace (Str.regexp "MAIN") name C.make_convert);
  Format.fprintf ppf "%s\n"
    (Str.global_replace (Str.regexp "MAIN") name C.make_yasm_exe);
  ()

let () =
  Out_channel.with_open_text "dune.samples" (fun ch ->
      let ppf = Format.formatter_of_out_channel ch in
      List.iter (on_sample ppf) samples;
      Format.pp_print_flush ppf ())
