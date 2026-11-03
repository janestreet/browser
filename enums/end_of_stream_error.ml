open! Import

type t = Types.end_of_stream_error

type enum =
  [ `Network
  | `Decode
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.end_of_stream_error)
let network = obj_magic_of_string (Js.string "network")
let decode = obj_magic_of_string (Js.string "decode")

let of_variant = function
  | `Network -> network
  | `Decode -> decode
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
