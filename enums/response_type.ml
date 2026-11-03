open! Import

type t = Types.response_type

type enum =
  [ `Basic
  | `Cors
  | `Default
  | `Error
  | `Opaque
  | `Opaqueredirect
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.response_type)
let obj_magic_to_string = (Obj.magic : Types.response_type -> Js.js_string Js.t)
let basic = obj_magic_of_string (Js.string "basic")
let cors = obj_magic_of_string (Js.string "cors")
let default = obj_magic_of_string (Js.string "default")
let error = obj_magic_of_string (Js.string "error")
let opaque = obj_magic_of_string (Js.string "opaque")
let opaqueredirect = obj_magic_of_string (Js.string "opaqueredirect")

let to_variant (t : t) =
  if t == basic
  then `Basic
  else if t == cors
  then `Cors
  else if t == default
  then `Default
  else if t == error
  then `Error
  else if t == opaque
  then `Opaque
  else if t == opaqueredirect
  then `Opaqueredirect
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == basic
  then `Basic
  else if t == cors
  then `Cors
  else if t == default
  then `Default
  else if t == error
  then `Error
  else if t == opaque
  then `Opaque
  else if t == opaqueredirect
  then `Opaqueredirect
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_response_type (t : Js.js_string Js.t) =
  t == obj_magic_to_string basic
  || t == obj_magic_to_string cors
  || t == obj_magic_to_string default
  || t == obj_magic_to_string error
  || t == obj_magic_to_string opaque
  || t == obj_magic_to_string opaqueredirect
;;
