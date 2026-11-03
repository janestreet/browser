open! Import

type t = Types.video_matrix_coefficients

type enum =
  [ `Rgb
  | `Bt709
  | `Bt470bg
  | `Smpte170m
  | `Bt2020_ncl
  ]

val rgb : t
val bt709 : t
val bt470bg : t
val smpte170m : t
val bt2020_ncl : t

(* Since this enum only appears as method parameters, we omit the [to_variant],
   [to_variant_exn], and the type checking functions. *)

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val of_variant : [< enum | `Unknown_value of string ] -> t
