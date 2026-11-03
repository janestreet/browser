open! Import

type t = Types.fetch_priority

type enum =
  [ `Low
  | `Auto
  | `High
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.fetch_priority)
let low = obj_magic_of_string (Js.string "low")
let auto = obj_magic_of_string (Js.string "auto")
let high = obj_magic_of_string (Js.string "high")

let of_variant = function
  | `Low -> low
  | `Auto -> auto
  | `High -> high
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
