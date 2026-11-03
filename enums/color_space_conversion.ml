open! Import

type t = Types.color_space_conversion

type enum =
  [ `None
  | `Default
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.color_space_conversion)
let none = obj_magic_of_string (Js.string "none")
let default = obj_magic_of_string (Js.string "default")

let of_variant = function
  | `None -> none
  | `Default -> default
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
