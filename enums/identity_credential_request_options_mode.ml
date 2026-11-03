open! Import

type t = Types.identity_credential_request_options_mode

type enum =
  [ `Active
  | `Passive
  | `Button
  | `Widget
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.identity_credential_request_options_mode)
;;

let active = obj_magic_of_string (Js.string "active")
let passive = obj_magic_of_string (Js.string "passive")
let button = obj_magic_of_string (Js.string "button")
let widget = obj_magic_of_string (Js.string "widget")

let of_variant = function
  | `Active -> active
  | `Passive -> passive
  | `Button -> button
  | `Widget -> widget
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
