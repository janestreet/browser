open! Import

type t = Types.media_keys_requirement

type enum =
  [ `Required
  | `Optional
  | `Not_allowed
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.media_keys_requirement)
let obj_magic_to_string = (Obj.magic : Types.media_keys_requirement -> Js.js_string Js.t)
let required = obj_magic_of_string (Js.string "required")
let optional = obj_magic_of_string (Js.string "optional")
let not_allowed = obj_magic_of_string (Js.string "not-allowed")

let to_variant (t : t) =
  if t == required
  then `Required
  else if t == optional
  then `Optional
  else if t == not_allowed
  then `Not_allowed
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == required
  then `Required
  else if t == optional
  then `Optional
  else if t == not_allowed
  then `Not_allowed
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_media_keys_requirement (t : Js.js_string Js.t) =
  t == obj_magic_to_string required
  || t == obj_magic_to_string optional
  || t == obj_magic_to_string not_allowed
;;

let of_variant = function
  | `Required -> required
  | `Optional -> optional
  | `Not_allowed -> not_allowed
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
