open! Import

type t = Types.alpha_option

type enum =
  [ `Discard
  | `Keep
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.alpha_option)
let discard = obj_magic_of_string (Js.string "discard")
let keep = obj_magic_of_string (Js.string "keep")

let of_variant = function
  | `Discard -> discard
  | `Keep -> keep
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
