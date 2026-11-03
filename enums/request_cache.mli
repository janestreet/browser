open! Import

type t = Types.request_cache

type enum =
  [ `Default
  | `No_store
  | `Reload
  | `No_cache
  | `Force_cache
  | `Only_if_cached
  ]

val default : t
val no_store : t
val reload : t
val no_cache : t
val force_cache : t
val only_if_cached : t

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val to_variant : t -> [ enum | `Unknown_value of string ]
val to_variant_exn : t -> enum
val is_request_cache : Js.js_string Js.t -> bool
val of_variant : [< enum | `Unknown_value of string ] -> t
