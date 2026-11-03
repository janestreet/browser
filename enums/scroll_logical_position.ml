open! Import

type t = Types.scroll_logical_position

type enum =
  [ `Start
  | `Center
  | `End_
  | `Nearest
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.scroll_logical_position)
let start = obj_magic_of_string (Js.string "start")
let center = obj_magic_of_string (Js.string "center")
let end_ = obj_magic_of_string (Js.string "end")
let nearest = obj_magic_of_string (Js.string "nearest")

let of_variant = function
  | `Start -> start
  | `Center -> center
  | `End_ -> end_
  | `Nearest -> nearest
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
