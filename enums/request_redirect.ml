open! Import

type t = Types.request_redirect

type enum =
  [ `Follow
  | `Error
  | `Manual
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.request_redirect)
let obj_magic_to_string = (Obj.magic : Types.request_redirect -> Js.js_string Js.t)
let follow = obj_magic_of_string (Js.string "follow")
let error = obj_magic_of_string (Js.string "error")
let manual = obj_magic_of_string (Js.string "manual")

let to_variant (t : t) =
  if t == follow
  then `Follow
  else if t == error
  then `Error
  else if t == manual
  then `Manual
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == follow
  then `Follow
  else if t == error
  then `Error
  else if t == manual
  then `Manual
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_request_redirect (t : Js.js_string Js.t) =
  t == obj_magic_to_string follow
  || t == obj_magic_to_string error
  || t == obj_magic_to_string manual
;;

let of_variant = function
  | `Follow -> follow
  | `Error -> error
  | `Manual -> manual
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
