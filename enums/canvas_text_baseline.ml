open! Import

type t = Types.canvas_text_baseline

type enum =
  [ `Top
  | `Hanging
  | `Middle
  | `Alphabetic
  | `Ideographic
  | `Bottom
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.canvas_text_baseline)
let obj_magic_to_string = (Obj.magic : Types.canvas_text_baseline -> Js.js_string Js.t)
let top = obj_magic_of_string (Js.string "top")
let hanging = obj_magic_of_string (Js.string "hanging")
let middle = obj_magic_of_string (Js.string "middle")
let alphabetic = obj_magic_of_string (Js.string "alphabetic")
let ideographic = obj_magic_of_string (Js.string "ideographic")
let bottom = obj_magic_of_string (Js.string "bottom")

let to_variant (t : t) =
  if t == top
  then `Top
  else if t == hanging
  then `Hanging
  else if t == middle
  then `Middle
  else if t == alphabetic
  then `Alphabetic
  else if t == ideographic
  then `Ideographic
  else if t == bottom
  then `Bottom
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == top
  then `Top
  else if t == hanging
  then `Hanging
  else if t == middle
  then `Middle
  else if t == alphabetic
  then `Alphabetic
  else if t == ideographic
  then `Ideographic
  else if t == bottom
  then `Bottom
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_canvas_text_baseline (t : Js.js_string Js.t) =
  t == obj_magic_to_string top
  || t == obj_magic_to_string hanging
  || t == obj_magic_to_string middle
  || t == obj_magic_to_string alphabetic
  || t == obj_magic_to_string ideographic
  || t == obj_magic_to_string bottom
;;

let of_variant = function
  | `Top -> top
  | `Hanging -> hanging
  | `Middle -> middle
  | `Alphabetic -> alphabetic
  | `Ideographic -> ideographic
  | `Bottom -> bottom
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
