open! Import

type t = Types.credential_mediation_requirement

type enum =
  [ `Silent
  | `Optional
  | `Required
  | `Conditional
  | `Immediate
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.credential_mediation_requirement)
;;

let silent = obj_magic_of_string (Js.string "silent")
let optional = obj_magic_of_string (Js.string "optional")
let required = obj_magic_of_string (Js.string "required")
let conditional = obj_magic_of_string (Js.string "conditional")
let immediate = obj_magic_of_string (Js.string "immediate")

let of_variant = function
  | `Silent -> silent
  | `Optional -> optional
  | `Required -> required
  | `Conditional -> conditional
  | `Immediate -> immediate
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
