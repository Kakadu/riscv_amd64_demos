type cfg = { mutable mainname : string }

let cfg = { mainname = "MAIN" }
let out = ref "-"
let input = ref ""
let is_startup = ref false

let () =
  Arg.parse
    [
      ("-o", Arg.String (fun s -> out := s), "");
      ("-startup", Arg.Unit (fun () -> is_startup := true), "");
      ("-main", Arg.String (fun s -> cfg.mainname <- s), "");
    ]
    (fun s -> input := s)
    "help";

  if not (Sys.file_exists !input) then (
    Printf.eprintf "file not found";
    exit 1)
  else
    let is_startup = !is_startup in
    match !out with
    | "-" ->
        Lib.translate Format.std_formatter ~is_startup ~main:cfg.mainname !input;
        Format.pp_print_flush Format.std_formatter ()
    | out ->
        Out_channel.with_open_text out (fun ch ->
            let ppf = Format.formatter_of_out_channel ch in
            Lib.translate ppf ~is_startup ~main:cfg.mainname !input;
            Format.pp_print_flush ppf ())
