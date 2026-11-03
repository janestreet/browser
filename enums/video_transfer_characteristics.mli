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

val bt709 : t
val smpte170m : t
val iec61966_2_1 : t
val linear : t
val pq : t
val hlg : t

(* Since this enum only appears as method parameters, we omit the [to_variant],
   [to_variant_exn], and the type checking functions. *)

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val of_variant : [< enum | `Unknown_value of string ] -> t
