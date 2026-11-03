open! Import

type t = Types.scroll_restoration

type enum =
  [ `Auto
  | `Manual
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.scroll_restoration)
let obj_magic_to_string = (Obj.magic : Types.scroll_restoration -> Js.js_string Js.t)
let auto = obj_magic_of_string (Js.string "auto")
let manual = obj_magic_of_string (Js.string "manual")

let to_variant (t : t) =
  if t == auto
  then `Auto
  else if t == manual
  then `Manual
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == auto
  then `Auto
  else if t == manual
  then `Manual
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_scroll_restoration (t : Js.js_string Js.t) =
  t == obj_magic_to_string auto || t == obj_magic_to_string manual
;;

let of_variant = function
  | `Auto -> auto
  | `Manual -> manual
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
