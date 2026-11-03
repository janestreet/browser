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

val i420 : t
val i420p10 : t
val i420p12 : t
val i420a : t
val i420ap10 : t
val i422 : t
val i422p10 : t
val i422p12 : t
val i422a : t
val i422ap10 : t
val i444 : t
val i444p10 : t
val i444p12 : t
val i444a : t
val i444ap10 : t
val nv12 : t
val rgba : t
val rgbx : t
val bgra : t
val bgrx : t

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val to_variant : t -> [ enum | `Unknown_value of string ]
val to_variant_exn : t -> enum
val is_video_pixel_format : Js.js_string Js.t -> bool
val of_variant : [< enum | `Unknown_value of string ] -> t
