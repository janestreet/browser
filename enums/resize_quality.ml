open! Import

type t = Types.resize_quality

type enum =
  [ `Pixelated
  | `Low
  | `Medium
  | `High
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.resize_quality)
let pixelated = obj_magic_of_string (Js.string "pixelated")
let low = obj_magic_of_string (Js.string "low")
let medium = obj_magic_of_string (Js.string "medium")
let high = obj_magic_of_string (Js.string "high")

let of_variant = function
  | `Pixelated -> pixelated
  | `Low -> low
  | `Medium -> medium
  | `High -> high
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
