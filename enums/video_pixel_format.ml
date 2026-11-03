open! Import

type t = Types.video_pixel_format

type enum =
  [ `I420
  | `I420P10
  | `I420P12
  | `I420A
  | `I420AP10
  | `I422
  | `I422P10
  | `I422P12
  | `I422A
  | `I422AP10
  | `I444
  | `I444P10
  | `I444P12
  | `I444A
  | `I444AP10
  | `NV12
  | `RGBA
  | `RGBX
  | `BGRA
  | `BGRX
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.video_pixel_format)
let obj_magic_to_string = (Obj.magic : Types.video_pixel_format -> Js.js_string Js.t)
let i420 = obj_magic_of_string (Js.string "I420")
let i420p10 = obj_magic_of_string (Js.string "I420P10")
let i420p12 = obj_magic_of_string (Js.string "I420P12")
let i420a = obj_magic_of_string (Js.string "I420A")
let i420ap10 = obj_magic_of_string (Js.string "I420AP10")
let i422 = obj_magic_of_string (Js.string "I422")
let i422p10 = obj_magic_of_string (Js.string "I422P10")
let i422p12 = obj_magic_of_string (Js.string "I422P12")
let i422a = obj_magic_of_string (Js.string "I422A")
let i422ap10 = obj_magic_of_string (Js.string "I422AP10")
let i444 = obj_magic_of_string (Js.string "I444")
let i444p10 = obj_magic_of_string (Js.string "I444P10")
let i444p12 = obj_magic_of_string (Js.string "I444P12")
let i444a = obj_magic_of_string (Js.string "I444A")
let i444ap10 = obj_magic_of_string (Js.string "I444AP10")
let nv12 = obj_magic_of_string (Js.string "NV12")
let rgba = obj_magic_of_string (Js.string "RGBA")
let rgbx = obj_magic_of_string (Js.string "RGBX")
let bgra = obj_magic_of_string (Js.string "BGRA")
let bgrx = obj_magic_of_string (Js.string "BGRX")

let to_variant (t : t) =
  if t == i420
  then `I420
  else if t == i420p10
  then `I420P10
  else if t == i420p12
  then `I420P12
  else if t == i420a
  then `I420A
  else if t == i420ap10
  then `I420AP10
  else if t == i422
  then `I422
  else if t == i422p10
  then `I422P10
  else if t == i422p12
  then `I422P12
  else if t == i422a
  then `I422A
  else if t == i422ap10
  then `I422AP10
  else if t == i444
  then `I444
  else if t == i444p10
  then `I444P10
  else if t == i444p12
  then `I444P12
  else if t == i444a
  then `I444A
  else if t == i444ap10
  then `I444AP10
  else if t == nv12
  then `NV12
  else if t == rgba
  then `RGBA
  else if t == rgbx
  then `RGBX
  else if t == bgra
  then `BGRA
  else if t == bgrx
  then `BGRX
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == i420
  then `I420
  else if t == i420p10
  then `I420P10
  else if t == i420p12
  then `I420P12
  else if t == i420a
  then `I420A
  else if t == i420ap10
  then `I420AP10
  else if t == i422
  then `I422
  else if t == i422p10
  then `I422P10
  else if t == i422p12
  then `I422P12
  else if t == i422a
  then `I422A
  else if t == i422ap10
  then `I422AP10
  else if t == i444
  then `I444
  else if t == i444p10
  then `I444P10
  else if t == i444p12
  then `I444P12
  else if t == i444a
  then `I444A
  else if t == i444ap10
  then `I444AP10
  else if t == nv12
  then `NV12
  else if t == rgba
  then `RGBA
  else if t == rgbx
  then `RGBX
  else if t == bgra
  then `BGRA
  else if t == bgrx
  then `BGRX
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_video_pixel_format (t : Js.js_string Js.t) =
  t == obj_magic_to_string i420
  || t == obj_magic_to_string i420p10
  || t == obj_magic_to_string i420p12
  || t == obj_magic_to_string i420a
  || t == obj_magic_to_string i420ap10
  || t == obj_magic_to_string i422
  || t == obj_magic_to_string i422p10
  || t == obj_magic_to_string i422p12
  || t == obj_magic_to_string i422a
  || t == obj_magic_to_string i422ap10
  || t == obj_magic_to_string i444
  || t == obj_magic_to_string i444p10
  || t == obj_magic_to_string i444p12
  || t == obj_magic_to_string i444a
  || t == obj_magic_to_string i444ap10
  || t == obj_magic_to_string nv12
  || t == obj_magic_to_string rgba
  || t == obj_magic_to_string rgbx
  || t == obj_magic_to_string bgra
  || t == obj_magic_to_string bgrx
;;

let of_variant = function
  | `I420 -> i420
  | `I420P10 -> i420p10
  | `I420P12 -> i420p12
  | `I420A -> i420a
  | `I420AP10 -> i420ap10
  | `I422 -> i422
  | `I422P10 -> i422p10
  | `I422P12 -> i422p12
  | `I422A -> i422a
  | `I422AP10 -> i422ap10
  | `I444 -> i444
  | `I444P10 -> i444p10
  | `I444P12 -> i444p12
  | `I444A -> i444a
  | `I444AP10 -> i444ap10
  | `NV12 -> nv12
  | `RGBA -> rgba
  | `RGBX -> rgbx
  | `BGRA -> bgra
  | `BGRX -> bgrx
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
