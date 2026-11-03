open! Import

type t = Types.predefined_color_space

type enum =
  [ `Srgb
  | `Rec2020
  | `Display_p3
  | `Rec2100_hlg
  | `Rec2100_pq
  | `Srgb_linear
  ]

val srgb : t
val rec2020 : t
val display_p3 : t
val rec2100_hlg : t
val rec2100_pq : t
val srgb_linear : t

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val to_variant : t -> [ enum | `Unknown_value of string ]
val to_variant_exn : t -> enum
val is_predefined_color_space : Js.js_string Js.t -> bool
val of_variant : [< enum | `Unknown_value of string ] -> t
