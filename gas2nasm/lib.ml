open Format

include struct
  open Angstrom

  let conde xs = List.fold_left ( <|> ) (fail "") xs

  type reg = R of string

  let pp_reg ppf (R s) = Format.fprintf ppf "%s" s
  let show_ref (R s) = s

  type arg =
    | Star_rdx
    | AReg of reg
    | AReg_off1 of int * reg
    | AReg_off2 of int * reg * int
    | AReg_off3 of int option * reg * reg  (** [(%rbx,%rdi)], [1(%rdi,%rdi)]  *)
    | ADeref of reg
    | AConst of int
    | ALab_pcrel of string
  [@@deriving show { with_path = false }]

  type op =
    | CMP
    | MOV
    | MOVABS
    | ADD
    | SUB
    | IMUL
    | SHR
    | SAR
    | LEA
    | MOVZB
    | DEC
    | INC
  [@@deriving show { with_path = false }]

  type t =
    | CFI
    | Size
    | Ascii of string
    | Space of int
    | Section of string list
    | Align of int
    | Label of string
    | Global of string
    | Type of string list
    | DB of int
    | DW_int of int
    | DL of string * int  (** [.long	(.L121 - .) + -67108864] *)
    | DL2 of int
    | DQ of string  (** for labels *)
    | DQ_hex of string
    | DQ_int of int
    | Binop of op * arg * arg
    | Jb of string
    | Jbe of string
    | Jle of string
    | Jne of string
    | Jmp of string
    | Jmp_reg of reg
    | Inc of reg
    | Dec of reg
    | Call of string
    | Call_reg of reg
    | Ret
  [@@deriving show { with_path = false }]

  let cmpq a b = Binop (CMP, a, b)
  let movq a b = Binop (MOV, a, b)
  let movabsq a b = Binop (MOVABS, a, b)
  let addq a b = Binop (ADD, a, b)
  let subq a b = Binop (SUB, a, b)
  let imulq a b = Binop (IMUL, a, b)
  let shrq a b = Binop (SHR, a, b)
  let sarq a b = Binop (SAR, a, b)
  let leaq a b = Binop (LEA, a, b)
  let movzbq a b = Binop (MOVZB, a, b)

  let comment =
    let helper =
      fix (fun self ->
          let* c = any_char in
          match c with
          | '*' ->
              let* next = peek_char_fail in
              if next = '/' then any_char *> return () else self
          | _ -> self)
    in
    string "/*" *> helper

  let is_sep = function ' ' | '\t' | '\n' | '\r' -> true | _ -> false
  let ws = skip_while is_sep <* option () comment <* skip_while is_sep

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

  let is_label_char = function '.' | '_' -> true | x -> is_ident_char x

  let label_ident =
    let* lab = string_cond is_label_char in
    if String.starts_with ~prefix:".L" lab then
      return @@ String.sub lab 1 (String.length lab - 1)
    else return lab

  let plabel = label_ident <* char ':' <* ws >>| fun s -> Label s
  let pdw = ws *> string ".word" *> ws *> conde [ (nat >>| fun n -> DW_int n) ]

  let pdl =
    let* () = ws *> string ".long" *> ws in
    conde
      [
        (let* lab = char '(' *> label_ident <* string " - .) + " in
         let* rhs = conde [ char '-' *> nat; nat ] in
         return (DL (lab, rhs)));
        (nat >>| fun n -> DL2 n);
      ]

  let pdq =
    ws *> string ".quad" *> ws
    *> conde
         [
           (string "0x" *> string_cond is_hex_char >>| fun s -> DQ_hex s);
           (char '0' <* ws >>| fun _ -> DQ "0");
           (char '-' *> nat >>| fun n -> DQ_int (-n));
           (nat >>| fun n -> DQ_int n);
           (label_ident >>| fun s -> DQ s);
         ]

  let ptype =
    ws *> string ".type" *> ws
    *> sep_by1 (char ',') (conde [ string "@function"; label_ident ])
    >>| fun xs -> Type xs

  let pspace = ws *> string ".space" *> ws *> nat >>| fun n -> Space n

  let pascii =
    let* () = ws *> string ".ascii" *> ws in
    char '"' *> string_cond (function '"' -> false | _ -> true) <* char '"'
    >>| fun s -> Ascii s

  let psize =
    let* _ = ws *> string ".size" <* ws <* many1 any_char in
    return Size

  let pglobl =
    ws *> string ".globl" *> ws *> string_cond is_ident_char >>| fun s ->
    Global s

  let pcfi =
    conde
      [
        (ws *> string ".cfi_startproc" >>| fun _ -> CFI);
        (ws *> string ".cfi_endproc" >>| fun _ -> CFI);
        (ws *> string ".cfi_adjust_cfa_offset" *> ws *> nat >>| fun _ -> CFI);
        ( ws *> string ".cfi_adjust_cfa_offset" *> ws *> char '-' *> nat
        >>| fun _ -> CFI );
      ]

  let preg =
    let mkr s = return (R s) in
    conde
      [
        string "%" *> string "rsp" >>= mkr;
        string "%" *> string "r14" >>= mkr;
        string "%" *> string "r15" >>= mkr;
        string "%" *> string "rax" >>= mkr;
        string "%" *> string "eax" >>= mkr;
        string "%" *> string "rbx" >>= mkr;
        string "%" *> string "rcx" >>= mkr;
        string "%" *> string "rdx" >>= mkr;
        string "%" *> string "edx" >>= mkr;
        string "%" *> string "rdi" >>= mkr;
        string "%" *> string "edi" >>= mkr;
        string "%" *> string "rsi" >>= mkr;
        string "%" *> string "esi" >>= mkr;
        fail "preg";
      ]

  let parg =
    ws
    *> conde
         [
           (label_ident <* string "@GOTPCREL(%rip)" >>| fun s -> ALab_pcrel s);
           (preg >>| fun r -> AReg r);
           (char '(' *> preg <* char ')' >>| fun r -> ADeref r);
           return (fun n r -> AReg_off1 (n, r))
           <*> nat
           <*> (char '(' *> preg <* char ')');
           string "*%rdx" *> return Star_rdx;
           return (fun n r -> AReg_off1 (-n, r))
           <*> char '-' *> any_uint8
           <*> (char '(' *> preg <* char ')');
           return (fun n (l, r) -> AReg_off2 (-n, l, r))
           <*> char '-' *> any_uint8
           <*> (char '('
                *> conde
                     [
                       return (fun a b -> (a, b))
                       <*> char ',' *> preg
                       <*> char ',' *> nat;
                     ]
               <* char ')');
           return (fun off l r -> AReg_off3 (off, l, r))
           <*> conde
                 [
                   (char '-' *> nat >>| fun n -> Some (-n));
                   (nat >>| fun n -> Some n);
                   return None;
                 ]
           <*> (char '(' *> preg <* char ',')
           <*> (preg <* char ')');
           (char '$' *> nat >>| fun r -> AConst r);
           fail "parg";
         ]

  let pinstr =
    let binin =
      let* op =
        ws *> string_cond (function 'a' .. 'z' -> true | _ -> false) <* ws
      in
      (* printf "Got %s\n%!" op; *)
      let* make =
        match op with
        | "cmpq" -> return cmpq
        | "movabsq" -> return movabsq
        | "movl" | "movq" -> return movq
        | "addq" -> return addq
        | "subq" -> return subq
        | "imulq" -> return imulq
        | "shrq" -> return shrq
        | "sarq" -> return sarq
        | "leaq" -> return leaq
        | "movzbq" -> return movzbq
        | _ -> fail "Bad mnemonic"
      in
      let* a1 = parg in
      let* a2 = char ',' *> ws *> parg in
      return (make a1 a2)
    in
    ws
    *> conde
         [
           binin;
           (ws *> string "decq" *> ws *> preg >>| fun r -> Dec r);
           (ws *> string "incq" *> ws *> preg >>| fun r -> Inc r);
           (ws *> string "jbe" *> ws *> label_ident >>| fun s -> Jbe s);
           (ws *> string "jb" *> ws *> label_ident >>| fun s -> Jb s);
           (ws *> string "jle" *> ws *> label_ident >>| fun s -> Jle s);
           (ws *> string "jne" *> ws *> label_ident >>| fun s -> Jne s);
           ( ws *> string "jmp" *> ws *> label_ident <* string "@PLT"
           >>| fun s -> Jmp s );
           (ws *> string "jmp" *> ws *> char '*' *> preg >>| fun r -> Jmp_reg r);
           (ws *> string "jmp" *> ws *> label_ident >>| fun s -> Jmp s);
           ( ws *> string "call" *> ws *> label_ident <* string "@PLT"
           >>| fun s -> Call s );
           ( ws *> string "call" *> ws *> char '*' *> preg >>| fun r ->
             Call_reg r );
           (string "ret" *> ws >>| fun _ -> Ret);
         ]

  let p =
    conde
      [
        psection;
        palign;
        plabel;
        pdw;
        pdl;
        pdq;
        (ws *> string ".byte" *> ws *> nat >>| fun n -> DB n);
        pglobl;
        pcfi;
        string "\t\t\t\t/* relocation table start */" *> return CFI;
        string "\t\t\t\t/* relocation table end */" *> return CFI;
        pinstr;
        ptype;
        psize;
        pascii;
        pspace;
        string "" *> return CFI;
        fail "unsupported";
      ]

  let study s =
    match Angstrom.parse_string ~consume:Consume.All p s with x -> x
end

let translate ppf ~is_startup ~main filename =
  let lines =
    In_channel.with_open_text filename In_channel.input_all
    |> String.split_on_char '\n'
  in

  let printfn fmt = kasprintf (fun s -> fprintf ppf "%s\n%!" s) fmt in
  (* predefined *)
  if is_startup then ()
  else (
    printfn "default rel\n";
    ());
  printfn "extern caml_c_call";
  printfn "extern caml_call_gc";
  printfn "extern caml_system__frametable";
  printfn "extern caml_ml_flush";
  printfn "extern caml_ml_open_descriptor_out";
  printfn "extern caml_ml_output";
  printfn "extern caml_ml_output_char";
  printfn "extern caml_format_int";
  if is_startup then (
    printfn "global  caml_curry2";
    printfn "global  caml_curry2_1";
    printfn "extern caml_globals_inited";
    printfn "extern caml%s__entry" main;
    printfn "extern caml%s__data_begin" main;
    printfn "extern caml%s__data_end" main;
    printfn "extern caml%s__code_begin" main;
    printfn "extern caml%s__code_end" main;
    printfn "extern caml%s__gc_roots" main;
    printfn "extern caml%s__frametable" main;
    ())
  else printfn "extern  caml_curry2";
  printfn "";

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
            | Section
                [
                  ".rodata.cst16"; ("\"aM\"" as flg); "@progbits"; ("16" as al);
                ] ->
                printfn "section .rodata %s progbits align=%s" flg al
            | Section [ ".note.GNU-stack"; "\"\""; "%progbits" ] ->
                printfn "section .note.GNU-stack  progbits"
            | Section (".data" :: []) -> printfn "SECTION .data"
            | Section (".text" :: []) -> printfn "SECTION .text"
            | Type _ -> printfn "  ; %a" pp x
            | Size -> ()
            | CFI -> ()
            | Ret -> printfn "\tret"
            | Global s -> printfn "GLOBAL %s:function" s
            | Binop (ADD, AConst n, ADeref rd) ->
                printfn "\tadd qword [%a], %d" pp_reg rd n
            | Binop (ADD, AConst n, AReg rd) ->
                printfn "\tadd %a, %d" pp_reg rd n
            | Binop (SUB, AConst n, AReg rd) ->
                printfn "\tsub %a, %d" pp_reg rd n
            | Binop (SUB, AReg rs, AReg rd) ->
                printfn "\tsub %a, %a" pp_reg rd pp_reg rs
            | Binop (IMUL, AReg rs, AReg rd) ->
                printfn "\timul %a, %a" pp_reg rd pp_reg rs
            | Binop (MOV, ALab_pcrel lab, AReg rd) ->
                printfn "\tmov %a, qword [%s %s wrt ..got]" pp_reg rd
                  (match lab with "caml_curry2_1" -> "" | _ -> "rel")
                  lab
            | Binop (MOV, AConst n, AReg rd) ->
                printfn "\tmov %a, %d" pp_reg rd n
            | Binop (MOV, AReg_off1 (n, r1), AReg rd) ->
                printfn "\tmov %a, [%a%+d]" pp_reg rd pp_reg r1 n
            | Binop (MOV, AReg rs, AReg_off1 (n, rd)) ->
                printfn "\tmov [%a%+d], %a" pp_reg rd n pp_reg rs
            | Binop (MOV, ADeref r1, AReg rd) ->
                printfn "\tmov %a, [%a]" pp_reg rd pp_reg r1
            | Binop (MOV, AReg rs, ADeref rd) ->
                printfn "\tmov [%a], %a" pp_reg rd pp_reg rs
            | Binop (MOV, AReg rs, AReg rd) ->
                printfn "\tmov %a, %a" pp_reg rd pp_reg rs
            | Binop (MOV, AConst n, AReg_off1 (off, rd)) ->
                printfn "\tmov qword [%a%+d], %d" pp_reg rd off n
            | Binop (SHR, AConst n, AReg rd) ->
                printfn "\tshr %a, %d" pp_reg rd n
            | Binop (SHR, AConst n, AReg_off1 (off, rd)) ->
                printfn "\tshr [%a+%d], %d" pp_reg rd off n
            | Binop (SAR, AConst n, AReg rd) ->
                printfn "\tsar %a, %d" pp_reg rd n
            | Binop (CMP, ADeref rs, AReg rd) ->
                printfn "\tcmp %a, qword [%a]" pp_reg rd pp_reg rs
            | Binop (CMP, AConst n, AReg rd) ->
                printfn "\tcmp %a, %d" pp_reg rd n
            | Binop (LEA, AReg_off1 (n, rs), AReg rd) ->
                printfn "\tlea %a, [%a%+d]" pp_reg rd pp_reg rs n
            | Binop (LEA, AReg_off2 (n, rs, m), AReg rd) ->
                printfn "\tlea %a, [%a%+d%+d]" pp_reg rd pp_reg rs n m
            | Binop (LEA, AReg_off3 (Some n, rs1, rs2), AReg rd) ->
                printfn "\tlea %a, [%a+%a%+d]" pp_reg rd pp_reg rs1 pp_reg rs2 n
            | Binop (MOVZB, AReg_off3 (None, rs1, rs2), AReg rd) ->
                printfn "\tmovzx %a, byte [%a+%a]" pp_reg rd pp_reg rs1 pp_reg
                  rs2
            | Binop (MOVABS, AConst n, AReg rd) ->
                printfn "\tmov %a, %d" pp_reg rd n
            | Inc rd -> printfn "\tinc %a" pp_reg rd
            | Dec rd -> printfn "\tdec %a" pp_reg rd
            | Call s -> printfn "\tcall %s" s
            | Align n -> printfn "ALIGN %d" n
            | Label s -> printfn "%s:" s
            | DQ s -> printfn "\tdq %s" s
            | DQ_int n -> printfn "\tdq %d" n
            | DQ_hex s -> printfn "\tdq 0x%s" s
            | DW_int n -> printfn "\tdw %d" n
            | DB n -> printfn "\tdb %d" n
            | DL (str, 0) ->
                (* printfn "\t;dl ($ - %s)" str *)
                ()
            | DL (str, n) ->
                (* printfn "\t;dl (%s - $) + %d" str n *)
                ()
            | DL2 n -> printfn "\t;dl %d" n
            | Jb s -> printfn "\tjb %s" s
            | Jbe s -> printfn "\tjbe %s" s
            | Jle s -> printfn "\tjle %s" s
            | Jne s -> printfn "\tjne %s" s
            | Jmp s -> printfn "\tjmp %s" s
            | Jmp_reg rd -> printfn "\tjmp %a" pp_reg rd
            | Call_reg rd -> printfn "\tcall %a" pp_reg rd
            | Ascii s -> printfn "\tdb \"%s\"" s
            | Space n -> printfn "\ttimes %d db 0" n
            (* | (Jbe _ | Binop _ | Jmp _) as b -> printfn "  ; %a" pp b *)
            | b ->
                (* printfn "  ; %a" pp b *)
                eprintf "%a\n%!" pp x;
                let _ = failwith "not implemented" in
                ());
            loop tl)
    | [] -> ()
  in
  loop lines
