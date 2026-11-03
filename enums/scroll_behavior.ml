open! Import

type t = Types.scroll_behavior

type enum =
  [ `Auto
  | `Instant
  | `Smooth
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.scroll_behavior)
let auto = obj_magic_of_string (Js.string "auto")
let instant = obj_magic_of_string (Js.string "instant")
let smooth = obj_magic_of_string (Js.string "smooth")

let of_variant = function
  | `Auto -> auto
  | `Instant -> instant
  | `Smooth -> smooth
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
