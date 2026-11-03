open! Import

type t = Types.web_gl_power_preference

type enum =
  [ `Default
  | `Low_power
  | `High_performance
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.web_gl_power_preference)
let obj_magic_to_string = (Obj.magic : Types.web_gl_power_preference -> Js.js_string Js.t)
let default = obj_magic_of_string (Js.string "default")
let low_power = obj_magic_of_string (Js.string "low-power")
let high_performance = obj_magic_of_string (Js.string "high-performance")

let to_variant (t : t) =
  if t == default
  then `Default
  else if t == low_power
  then `Low_power
  else if t == high_performance
  then `High_performance
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == default
  then `Default
  else if t == low_power
  then `Low_power
  else if t == high_performance
  then `High_performance
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_web_gl_power_preference (t : Js.js_string Js.t) =
  t == obj_magic_to_string default
  || t == obj_magic_to_string low_power
  || t == obj_magic_to_string high_performance
;;
