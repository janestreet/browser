open! Import

type t = Types.gpu_texture_aspect

type enum =
  [ `All
  | `Stencil_only
  | `Depth_only
  ]

val all : t
val stencil_only : t
val depth_only : t

(* Since this enum only appears as method parameters, we omit the [to_variant],
   [to_variant_exn], and the type checking functions. *)

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val of_variant : [< enum | `Unknown_value of string ] -> t
