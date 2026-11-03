open! Import

type t = Types.request_destination

type enum =
  [ `Empty_string
  | `Audio
  | `Audioworklet
  | `Document
  | `Embed
  | `Font
  | `Frame
  | `Iframe
  | `Image
  | `Json
  | `Manifest
  | `Object_
  | `Paintworklet
  | `Report
  | `Script
  | `Serviceworker
  | `Sharedworker
  | `Style
  | `Track
  | `Video
  | `Worker
  | `Xslt
  | `Fencedframe
  | `Dictionary
  | `Speculationrules
  | `Sharedstorageworklet
  | `Webidentity
  | `Webbundle
  ]

val empty_string : t
val audio : t
val audioworklet : t
val document : t
val embed : t
val font : t
val frame : t
val iframe : t
val image : t
val json : t
val manifest : t
val object_ : t
val paintworklet : t
val report : t
val script : t
val serviceworker : t
val sharedworker : t
val style : t
val track : t
val video : t
val worker : t
val xslt : t
val fencedframe : t
val dictionary : t
val speculationrules : t
val sharedstorageworklet : t
val webidentity : t
val webbundle : t

(* Since this enum only appears as method return values, we omit the [of_variant]
   conversion function. *)

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val to_variant : t -> [ enum | `Unknown_value of string ]
val to_variant_exn : t -> enum
val is_request_destination : Js.js_string Js.t -> bool
