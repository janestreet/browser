open! Import

type t = Types.resize_observer_box_options

type enum =
  [ `Border_box
  | `Content_box
  | `Device_pixel_content_box
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.resize_observer_box_options)
;;

let border_box = obj_magic_of_string (Js.string "border-box")
let content_box = obj_magic_of_string (Js.string "content-box")
let device_pixel_content_box = obj_magic_of_string (Js.string "device-pixel-content-box")

let of_variant = function
  | `Border_box -> border_box
  | `Content_box -> content_box
  | `Device_pixel_content_box -> device_pixel_content_box
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
