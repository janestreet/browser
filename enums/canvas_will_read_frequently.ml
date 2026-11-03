open! Import

type t = Types.canvas_will_read_frequently

type enum =
  [ `True_
  | `False_
  | `Undefined
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.canvas_will_read_frequently)
;;

let true_ = obj_magic_of_string (Js.string "true")
let false_ = obj_magic_of_string (Js.string "false")
let undefined = obj_magic_of_string (Js.string "undefined")

let of_variant = function
  | `True_ -> true_
  | `False_ -> false_
  | `Undefined -> undefined
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
