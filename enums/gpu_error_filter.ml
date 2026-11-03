open! Import

type t = Types.gpu_error_filter

type enum =
  [ `Out_of_memory
  | `Validation
  | `Internal
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.gpu_error_filter)
let out_of_memory = obj_magic_of_string (Js.string "out-of-memory")
let validation = obj_magic_of_string (Js.string "validation")
let internal = obj_magic_of_string (Js.string "internal")

let of_variant = function
  | `Out_of_memory -> out_of_memory
  | `Validation -> validation
  | `Internal -> internal
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
