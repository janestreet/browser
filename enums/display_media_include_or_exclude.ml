open! Import

type t = Types.display_media_include_or_exclude

type enum =
  [ `Include_
  | `Exclude
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.display_media_include_or_exclude)
;;

let include_ = obj_magic_of_string (Js.string "include")
let exclude = obj_magic_of_string (Js.string "exclude")

let of_variant = function
  | `Include_ -> include_
  | `Exclude -> exclude
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
