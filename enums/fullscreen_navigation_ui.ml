open! Import

type t = Types.fullscreen_navigation_ui

type enum =
  [ `Auto
  | `Show
  | `Hide
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.fullscreen_navigation_ui)
;;

let auto = obj_magic_of_string (Js.string "auto")
let show = obj_magic_of_string (Js.string "show")
let hide = obj_magic_of_string (Js.string "hide")

let of_variant = function
  | `Auto -> auto
  | `Show -> show
  | `Hide -> hide
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
