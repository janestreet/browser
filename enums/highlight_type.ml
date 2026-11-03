open! Import

type t = Types.highlight_type

type enum =
  [ `Highlight
  | `Spelling_error
  | `Grammar_error
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.highlight_type)
let obj_magic_to_string = (Obj.magic : Types.highlight_type -> Js.js_string Js.t)
let highlight = obj_magic_of_string (Js.string "highlight")
let spelling_error = obj_magic_of_string (Js.string "spelling-error")
let grammar_error = obj_magic_of_string (Js.string "grammar-error")

let to_variant (t : t) =
  if t == highlight
  then `Highlight
  else if t == spelling_error
  then `Spelling_error
  else if t == grammar_error
  then `Grammar_error
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == highlight
  then `Highlight
  else if t == spelling_error
  then `Spelling_error
  else if t == grammar_error
  then `Grammar_error
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_highlight_type (t : Js.js_string Js.t) =
  t == obj_magic_to_string highlight
  || t == obj_magic_to_string spelling_error
  || t == obj_magic_to_string grammar_error
;;

let of_variant = function
  | `Highlight -> highlight
  | `Spelling_error -> spelling_error
  | `Grammar_error -> grammar_error
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
