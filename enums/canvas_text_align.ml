open! Import

type t = Types.canvas_text_align

type enum =
  [ `Start
  | `End_
  | `Left
  | `Right
  | `Center
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.canvas_text_align)
let obj_magic_to_string = (Obj.magic : Types.canvas_text_align -> Js.js_string Js.t)
let start = obj_magic_of_string (Js.string "start")
let end_ = obj_magic_of_string (Js.string "end")
let left = obj_magic_of_string (Js.string "left")
let right = obj_magic_of_string (Js.string "right")
let center = obj_magic_of_string (Js.string "center")

let to_variant (t : t) =
  if t == start
  then `Start
  else if t == end_
  then `End_
  else if t == left
  then `Left
  else if t == right
  then `Right
  else if t == center
  then `Center
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == start
  then `Start
  else if t == end_
  then `End_
  else if t == left
  then `Left
  else if t == right
  then `Right
  else if t == center
  then `Center
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_canvas_text_align (t : Js.js_string Js.t) =
  t == obj_magic_to_string start
  || t == obj_magic_to_string end_
  || t == obj_magic_to_string left
  || t == obj_magic_to_string right
  || t == obj_magic_to_string center
;;

let of_variant = function
  | `Start -> start
  | `End_ -> end_
  | `Left -> left
  | `Right -> right
  | `Center -> center
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
