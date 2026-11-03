open! Import

type t = Types.gpu_load_op

type enum =
  [ `Load
  | `Clear
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.gpu_load_op)
let load = obj_magic_of_string (Js.string "load")
let clear = obj_magic_of_string (Js.string "clear")

let of_variant = function
  | `Load -> load
  | `Clear -> clear
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
