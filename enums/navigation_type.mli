open! Import

type t = Types.navigation_type

type enum =
  [ `Reload
  | `Push
  | `Replace
  | `Traverse
  ]

val reload : t
val push : t
val replace : t
val traverse : t

(* Since this enum only appears as method return values, we omit the [of_variant]
   conversion function. *)

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val to_variant : t -> [ enum | `Unknown_value of string ]
val to_variant_exn : t -> enum
val is_navigation_type : Js.js_string Js.t -> bool
