open! Import

type t = Types.gpu_store_op

type enum =
  [ `Store
  | `Discard
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.gpu_store_op)
let store = obj_magic_of_string (Js.string "store")
let discard = obj_magic_of_string (Js.string "discard")

let of_variant = function
  | `Store -> store
  | `Discard -> discard
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
