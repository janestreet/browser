open! Import

type t = Types.canvas_font_stretch

type enum =
  [ `Ultra_condensed
  | `Extra_condensed
  | `Condensed
  | `Semi_condensed
  | `Normal
  | `Semi_expanded
  | `Expanded
  | `Extra_expanded
  | `Ultra_expanded
  ]

val ultra_condensed : t
val extra_condensed : t
val condensed : t
val semi_condensed : t
val normal : t
val semi_expanded : t
val expanded : t
val extra_expanded : t
val ultra_expanded : t

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val to_variant : t -> [ enum | `Unknown_value of string ]
val to_variant_exn : t -> enum
val is_canvas_font_stretch : Js.js_string Js.t -> bool
val of_variant : [< enum | `Unknown_value of string ] -> t
