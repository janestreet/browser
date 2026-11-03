open! Import

type t = Types.canvas_power_preference

type enum =
  [ `Default
  | `Low_power
  | `High_performance
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.canvas_power_preference)
let default = obj_magic_of_string (Js.string "default")
let low_power = obj_magic_of_string (Js.string "low-power")
let high_performance = obj_magic_of_string (Js.string "high-performance")

let of_variant = function
  | `Default -> default
  | `Low_power -> low_power
  | `High_performance -> high_performance
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
