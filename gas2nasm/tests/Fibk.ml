type out_channel

external open_descriptor_out : int -> out_channel
  = "caml_ml_open_descriptor_out"

let stdout = open_descriptor_out 1

external flush : out_channel -> unit = "caml_ml_flush"
external format_int : string -> int -> string = "caml_format_int"

let string_of_int n = format_int "%d" n

external output_char : out_channel -> char -> unit = "caml_ml_output_char"

external unsafe_output_string : out_channel -> string -> int -> int -> unit
  = "caml_ml_output"

external string_length : string -> int = "%string_length"

let output_string oc s = unsafe_output_string oc s 0 (string_length s)

let print_endline s =
  output_string stdout s;
  output_char stdout '\n';
  flush stdout

external ( < ) : 'a -> 'a -> bool = "%lessthan"
external ( - ) : int -> int -> int = "%subint"
external ( + ) : int -> int -> int = "%addint"
external ( * ) : int -> int -> int = "%mulint"

let id x = x
let k0 k m n = k (m + n)

let rec fib n k =
  (* output_string stdout "inside fac\n"; *)
  if n < 2 then k n else fib (n - 2) (k1 k n)

and k1 k n u = fib (n - 1) (k0 k n)

let () =
  let f6 = fib 6 id in
  let repr1 = string_of_int f6 in
  print_endline repr1
