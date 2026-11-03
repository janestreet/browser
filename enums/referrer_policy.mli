open! Import

type t = Types.referrer_policy

type enum =
  [ `Empty_string
  | `No_referrer
  | `No_referrer_when_downgrade
  | `Same_origin
  | `Origin
  | `Strict_origin
  | `Origin_when_cross_origin
  | `Strict_origin_when_cross_origin
  | `Unsafe_url
  ]

val empty_string : t
val no_referrer : t
val no_referrer_when_downgrade : t
val same_origin : t
val origin : t
val strict_origin : t
val origin_when_cross_origin : t
val strict_origin_when_cross_origin : t
val unsafe_url : t

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val to_variant : t -> [ enum | `Unknown_value of string ]
val to_variant_exn : t -> enum
val is_referrer_policy : Js.js_string Js.t -> bool
val of_variant : [< enum | `Unknown_value of string ] -> t
