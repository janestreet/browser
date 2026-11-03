open! Import

type t = Types.canvas_fill_rule

type enum =
  [ `Nonzero
  | `Evenodd
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.canvas_fill_rule)
let nonzero = obj_magic_of_string (Js.string "nonzero")
let evenodd = obj_magic_of_string (Js.string "evenodd")

let of_variant = function
  | `Nonzero -> nonzero
  | `Evenodd -> evenodd
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
