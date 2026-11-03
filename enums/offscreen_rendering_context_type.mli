open! Import

type t = Types.offscreen_rendering_context_type

type enum =
  [ `_2d
  | `Webgl
  | `Webgl2
  | `Bitmaprenderer
  | `Webgpu
  ]

val _2d : t
val webgl : t
val webgl2 : t
val bitmaprenderer : t
val webgpu : t

(* Since this enum only appears as method parameters, we omit the [to_variant],
   [to_variant_exn], and the type checking functions. *)

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val of_variant : [< enum | `Unknown_value of string ] -> t
