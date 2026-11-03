open! Import

type t = Types.canvas_font_variant_caps

type enum =
  [ `Normal
  | `Small_caps
  | `All_small_caps
  | `Petite_caps
  | `All_petite_caps
  | `Unicase
  | `Titling_caps
  ]

val normal : t
val small_caps : t
val all_small_caps : t
val petite_caps : t
val all_petite_caps : t
val unicase : t
val titling_caps : t

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val to_variant : t -> [ enum | `Unknown_value of string ]
val to_variant_exn : t -> enum
val is_canvas_font_variant_caps : Js.js_string Js.t -> bool
val of_variant : [< enum | `Unknown_value of string ] -> t
