open! Import

type t = Types.navigation_type

type enum =
  [ `Reload
  | `Push
  | `Replace
  | `Traverse
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.navigation_type)
let obj_magic_to_string = (Obj.magic : Types.navigation_type -> Js.js_string Js.t)
let reload = obj_magic_of_string (Js.string "reload")
let push = obj_magic_of_string (Js.string "push")
let replace = obj_magic_of_string (Js.string "replace")
let traverse = obj_magic_of_string (Js.string "traverse")

let to_variant (t : t) =
  if t == reload
  then `Reload
  else if t == push
  then `Push
  else if t == replace
  then `Replace
  else if t == traverse
  then `Traverse
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == reload
  then `Reload
  else if t == push
  then `Push
  else if t == replace
  then `Replace
  else if t == traverse
  then `Traverse
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_navigation_type (t : Js.js_string Js.t) =
  t == obj_magic_to_string reload
  || t == obj_magic_to_string push
  || t == obj_magic_to_string replace
  || t == obj_magic_to_string traverse
;;
