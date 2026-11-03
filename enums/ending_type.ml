open! Import

type t = Types.ending_type

type enum =
  [ `Transparent
  | `Native
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.ending_type)
let transparent = obj_magic_of_string (Js.string "transparent")
let native = obj_magic_of_string (Js.string "native")

let of_variant = function
  | `Transparent -> transparent
  | `Native -> native
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
