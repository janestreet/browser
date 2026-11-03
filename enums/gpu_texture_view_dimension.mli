open! Import

type t = Types.gpu_texture_view_dimension

type enum =
  [ `_1d
  | `_2d
  | `_2d_array
  | `Cube
  | `Cube_array
  | `_3d
  ]

val _1d : t
val _2d : t
val _2d_array : t
val cube : t
val cube_array : t
val _3d : t

(* Since this enum only appears as method parameters, we omit the [to_variant],
   [to_variant_exn], and the type checking functions. *)

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val of_variant : [< enum | `Unknown_value of string ] -> t
