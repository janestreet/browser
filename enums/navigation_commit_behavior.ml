open! Import

type t = Types.navigation_commit_behavior

type enum =
  [ `After_transition
  | `Immediate
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.navigation_commit_behavior)
;;

let after_transition = obj_magic_of_string (Js.string "after-transition")
let immediate = obj_magic_of_string (Js.string "immediate")

let of_variant = function
  | `After_transition -> after_transition
  | `Immediate -> immediate
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
