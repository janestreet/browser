open! Import

type t = Types.video_transfer_characteristics

type enum =
  [ `Bt709
  | `Smpte170m
  | `Iec61966_2_1
  | `Linear
  | `Pq
  | `Hlg
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.video_transfer_characteristics)
;;

let bt709 = obj_magic_of_string (Js.string "bt709")
let smpte170m = obj_magic_of_string (Js.string "smpte170m")
let iec61966_2_1 = obj_magic_of_string (Js.string "iec61966-2-1")
let linear = obj_magic_of_string (Js.string "linear")
let pq = obj_magic_of_string (Js.string "pq")
let hlg = obj_magic_of_string (Js.string "hlg")

let of_variant = function
  | `Bt709 -> bt709
  | `Smpte170m -> smpte170m
  | `Iec61966_2_1 -> iec61966_2_1
  | `Linear -> linear
  | `Pq -> pq
  | `Hlg -> hlg
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
