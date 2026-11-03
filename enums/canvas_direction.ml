open! Import

type t = Types.canvas_direction

type enum =
  [ `Ltr
  | `Rtl
  | `Inherit_
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.canvas_direction)
let obj_magic_to_string = (Obj.magic : Types.canvas_direction -> Js.js_string Js.t)
let ltr = obj_magic_of_string (Js.string "ltr")
let rtl = obj_magic_of_string (Js.string "rtl")
let inherit_ = obj_magic_of_string (Js.string "inherit")

let to_variant (t : t) =
  if t == ltr
  then `Ltr
  else if t == rtl
  then `Rtl
  else if t == inherit_
  then `Inherit_
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == ltr
  then `Ltr
  else if t == rtl
  then `Rtl
  else if t == inherit_
  then `Inherit_
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_canvas_direction (t : Js.js_string Js.t) =
  t == obj_magic_to_string ltr
  || t == obj_magic_to_string rtl
  || t == obj_magic_to_string inherit_
;;

let of_variant = function
  | `Ltr -> ltr
  | `Rtl -> rtl
  | `Inherit_ -> inherit_
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
