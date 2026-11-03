open! Import

type t = Types.worker_type

type enum =
  [ `Classic
  | `Module_
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.worker_type)
let classic = obj_magic_of_string (Js.string "classic")
let module_ = obj_magic_of_string (Js.string "module")

let of_variant = function
  | `Classic -> classic
  | `Module_ -> module_
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
