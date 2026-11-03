open! Import

type t = Types.navigation_history_behavior

type enum =
  [ `Auto
  | `Push
  | `Replace
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.navigation_history_behavior)
;;

let auto = obj_magic_of_string (Js.string "auto")
let push = obj_magic_of_string (Js.string "push")
let replace = obj_magic_of_string (Js.string "replace")

let of_variant = function
  | `Auto -> auto
  | `Push -> push
  | `Replace -> replace
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
