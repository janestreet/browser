open! Import

type t = Types.image_orientation

type enum =
  [ `From_image
  | `None
  | `FlipY
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.image_orientation)
let from_image = obj_magic_of_string (Js.string "from-image")
let none = obj_magic_of_string (Js.string "none")
let flip_y = obj_magic_of_string (Js.string "flipY")

let of_variant = function
  | `From_image -> from_image
  | `None -> none
  | `FlipY -> flip_y
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
