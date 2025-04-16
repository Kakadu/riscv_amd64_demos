let out = ref "out.s"
let input = ref ""

let () =
  Arg.parse
    [ ("-o", Arg.String (fun s -> out := s), "") ]
    (fun s -> input := s)
    "help";

  if not (Sys.file_exists !input) then (
    Printf.eprintf "file not found";
    exit 1)
  else
    match !out with
    | "-" ->
        Lib.translate Format.std_formatter !input;
        Format.pp_print_flush Format.std_formatter ()
    | out ->
        Out_channel.with_open_text out (fun ch ->
            let ppf = Format.formatter_of_out_channel ch in
            Lib.translate ppf !input;
            Format.pp_print_flush ppf ())
