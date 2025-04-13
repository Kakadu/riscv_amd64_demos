(* open Lib *)

let testp p s pp =
  match Angstrom.(parse_string ~consume:Consume.All) p s with
  | Result.Ok x -> Format.printf "%a\n" pp x
  | Error s -> Format.printf "Error: %s" s
(*
let%expect_test _ =
  testp parg "1" pp_arg;
  [%expect ""] *)

(* let%expect_test _ = print_endline "asdf" *)

let%test _ = true
