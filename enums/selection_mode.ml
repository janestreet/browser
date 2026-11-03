open! Import

type t = Types.selection_mode

type enum =
  [ `Select
  | `Start
  | `End_
  | `Preserve
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.selection_mode)
let select = obj_magic_of_string (Js.string "select")
let start = obj_magic_of_string (Js.string "start")
let end_ = obj_magic_of_string (Js.string "end")
let preserve = obj_magic_of_string (Js.string "preserve")

let of_variant = function
  | `Select -> select
  | `Start -> start
  | `End_ -> end_
  | `Preserve -> preserve
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
