open! Import

type t = Types.navigation_focus_reset

type enum =
  [ `After_transition
  | `Manual
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.navigation_focus_reset)
let after_transition = obj_magic_of_string (Js.string "after-transition")
let manual = obj_magic_of_string (Js.string "manual")

let of_variant = function
  | `After_transition -> after_transition
  | `Manual -> manual
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
