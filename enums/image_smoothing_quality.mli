open! Import

type t = Types.image_smoothing_quality

type enum =
  [ `Low
  | `Medium
  | `High
  ]

val low : t
val medium : t
val high : t

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val to_variant : t -> [ enum | `Unknown_value of string ]
val to_variant_exn : t -> enum
val is_image_smoothing_quality : Js.js_string Js.t -> bool
val of_variant : [< enum | `Unknown_value of string ] -> t
