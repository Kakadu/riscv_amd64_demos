open Format

include struct
  open Angstrom

  let conde xs = List.fold_left ( <|> ) (fail "") xs

  type reg = R [@@deriving show { with_path = false }]

  type arg = AReg of reg | ADeref of reg | AConst of int
  [@@deriving show { with_path = false }]

  type op = CMP [@@deriving show { with_path = false }]

  type t =
    | CFI
    | Section of string list
    | Align of int
    | Label of string
    | Global of string
    | DQ of string
    | DQ_int of string  (** accepts HEX string *)
    | Subq of arg * arg
    | Binop of op * arg * arg
    | Jbe of string
  [@@deriving show { with_path = false }]

  let cmpq a b = Binop (CMP, a, b)
  let is_sep = function ' ' | '\t' | '\n' | '\r' -> true | _ -> false
  let ws = skip_while is_sep

  let psection =
    conde
      [
        (let* _ = ws *> string ".section" <* ws in
         let* args =
           sep_by (char ',')
             ( many1 (satisfy (fun c -> c <> ',' && c <> '\n')) >>| fun xs ->
               String.of_seq (List.to_seq xs) )
         in
         return (Section args));
        (ws *> string ".data" <* ws >>| fun _ -> Section [ ".data" ]);
        (ws *> string ".text" <* ws >>| fun _ -> Section [ ".text" ]);
      ]

  let string_cond cond =
    many1 (satisfy cond) >>| fun xs -> String.of_seq (List.to_seq xs)

  let nat =
    many1 (satisfy (function '0' .. '9' -> true | _ -> false))
    >>| List.fold_left (fun acc x -> (acc * 10) + Char.code x - Char.code '0') 0

  let palign = ws *> string ".align" *> ws *> nat >>| fun n -> Align n

  let is_hex_char = function
    | '0' .. '9' | 'A' .. 'F' | 'a' .. 'f' -> true
    | _ -> false

  let is_ident_char = function
    | 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' -> true
    | _ -> false

  let label_ident = string_cond (function '.' -> true | x -> is_ident_char x)
  let plabel = label_ident <* char ':' >>| fun s -> Label s

  let pdq =
    ws *> string ".quad" *> ws
    *> conde
         [
           (string "0x" *> string_cond is_hex_char >>| fun s -> DQ s);
           (char '0' <* ws >>| fun _ -> DQ "0");
           (char '-' *> nat >>| fun n -> DQ_int (string_of_int (-n)));
           (nat >>| fun n -> DQ_int (string_of_int n));
           (string_cond is_ident_char >>| fun s -> DQ s);
         ]

  let pglobl =
    ws *> string ".globl" *> ws *> string_cond is_ident_char >>| fun s ->
    Global s

  let pcfi =
    conde
      [
        (ws *> string ".cfi_startproc" >>| fun _ -> CFI);
        (ws *> string ".cfi_adjust_cfa_offset" *> ws *> nat >>| fun _ -> CFI);
      ]

  let preg =
    conde
      [
        string "%rsp" *> return R;
        string "%r14" *> return R;
        string "%r15" *> return R;
        fail "preg";
      ]

  let parg =
    conde
      [
        (preg >>| fun r -> AReg r);
        (char '(' *> preg <* char ')' >>| fun r -> ADeref r);
        (char '$' *> nat >>| fun r -> AConst r);
        fail "";
      ]

  let pinstr =
    let binin =
      let* op =
        ws *> string_cond (function 'a' .. 'z' -> true | _ -> false) <* ws
      in
      printf "Got %s\n%!" op;
      let* make =
        match op with
        | "subq" -> return (fun a b -> Subq (a, b))
        | "cmpq" -> return (fun a b -> cmpq a b)
        | _ -> fail "Bad mnemonic"
      in
      let* a1 = parg in
      let* a2 = char ',' *> ws *> parg in
      return (make a1 a2)
    in
    conde
      [ binin; (ws *> string "jbe" <* ws *> label_ident >>| fun s -> Jbe s) ]

  let p =
    conde
      [
        psection; fail "unsupported"; palign; plabel; pdq; pglobl; pcfi; pinstr;
      ]

  let study s =
    match Angstrom.parse_string ~consume:Consume.All p s with x -> x
end

let translate filename =
  let lines =
    In_channel.with_open_text filename In_channel.input_all
    |> String.split_on_char '\n'
  in
  let ppf = Format.std_formatter in
  let printfn fmt = kasprintf (fun s -> fprintf ppf "%s\n%!" s) fmt in
  let rec loop lines =
    match lines with
    | "\t.file \"\"" :: tl -> loop tl
    | h :: tl -> (
        match study h with
        | Result.Error s ->
            eprintf "line: %s\n" h;
            eprintf "perror: %s\n" s;

            exit 1
        | Ok x ->
            (match x with
            | Section (".rodata.cst16" :: _) -> ()
            | Section (".data" :: []) -> printfn "SECTION DATA ; ???"
            | Section (".text" :: []) -> printfn "SECTION TEXT ; ???"
            | Global s -> printfn "%s: ; Global was here" s
            | Align n -> printfn "ALIGN %d" n
            | Label s -> printfn "%s:" s
            | DQ s -> printfn ".dq 0x%s" s
            | DQ_int s -> printfn ".dq %s" s
            | Subq (_, _) -> printfn "sub ?, ?"
            | (Jbe _ | Binop _) as b -> printfn "  ; %a" pp b
            | CFI -> ()
            | _ ->
                eprintf "%a\n%!" pp x;
                failwith "not implemented");
            loop tl)
    | [] -> assert false
  in
  loop lines

let () = translate Sys.argv.(1)
