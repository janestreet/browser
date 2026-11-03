open! Import

type t = Types.premultiply_alpha

type enum =
  [ `None
  | `Premultiply
  | `Default
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.premultiply_alpha)
let none = obj_magic_of_string (Js.string "none")
let premultiply = obj_magic_of_string (Js.string "premultiply")
let default = obj_magic_of_string (Js.string "default")

let of_variant = function
  | `None -> none
  | `Premultiply -> premultiply
  | `Default -> default
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
