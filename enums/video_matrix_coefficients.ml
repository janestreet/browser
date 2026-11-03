open! Import

type t = Types.video_matrix_coefficients

type enum =
  [ `Rgb
  | `Bt709
  | `Bt470bg
  | `Smpte170m
  | `Bt2020_ncl
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.video_matrix_coefficients)
;;

let rgb = obj_magic_of_string (Js.string "rgb")
let bt709 = obj_magic_of_string (Js.string "bt709")
let bt470bg = obj_magic_of_string (Js.string "bt470bg")
let smpte170m = obj_magic_of_string (Js.string "smpte170m")
let bt2020_ncl = obj_magic_of_string (Js.string "bt2020-ncl")

let of_variant = function
  | `Rgb -> rgb
  | `Bt709 -> bt709
  | `Bt470bg -> bt470bg
  | `Smpte170m -> smpte170m
  | `Bt2020_ncl -> bt2020_ncl
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
