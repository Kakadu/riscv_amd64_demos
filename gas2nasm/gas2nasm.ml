let out = ref "out.s"
let input = ref ""

let () =
  Arg.parse
    [ ("-o", Arg.String (fun s -> out := s), "") ]
    (fun s -> input := s)
    "help";
  if Sys.file_exists !input then Lib.translate !input
  else (
    Printf.eprintf "file not found";
    exit 1)
