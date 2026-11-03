open! Import

type t = Types.canvas_font_kerning

type enum =
  [ `Auto
  | `Normal
  | `None
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.canvas_font_kerning)
let obj_magic_to_string = (Obj.magic : Types.canvas_font_kerning -> Js.js_string Js.t)
let auto = obj_magic_of_string (Js.string "auto")
let normal = obj_magic_of_string (Js.string "normal")
let none = obj_magic_of_string (Js.string "none")

let to_variant (t : t) =
  if t == auto
  then `Auto
  else if t == normal
  then `Normal
  else if t == none
  then `None
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == auto
  then `Auto
  else if t == normal
  then `Normal
  else if t == none
  then `None
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_canvas_font_kerning (t : Js.js_string Js.t) =
  t == obj_magic_to_string auto
  || t == obj_magic_to_string normal
  || t == obj_magic_to_string none
;;

let of_variant = function
  | `Auto -> auto
  | `Normal -> normal
  | `None -> none
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
