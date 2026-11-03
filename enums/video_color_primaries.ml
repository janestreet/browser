open! Import

type t = Types.video_color_primaries

type enum =
  [ `Bt709
  | `Bt470bg
  | `Smpte170m
  | `Bt2020
  | `Smpte432
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.video_color_primaries)
let bt709 = obj_magic_of_string (Js.string "bt709")
let bt470bg = obj_magic_of_string (Js.string "bt470bg")
let smpte170m = obj_magic_of_string (Js.string "smpte170m")
let bt2020 = obj_magic_of_string (Js.string "bt2020")
let smpte432 = obj_magic_of_string (Js.string "smpte432")

let of_variant = function
  | `Bt709 -> bt709
  | `Bt470bg -> bt470bg
  | `Smpte170m -> smpte170m
  | `Bt2020 -> bt2020
  | `Smpte432 -> smpte432
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
