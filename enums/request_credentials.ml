open! Import

type t = Types.request_credentials

type enum =
  [ `Omit
  | `Same_origin
  | `Include_
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.request_credentials)
let obj_magic_to_string = (Obj.magic : Types.request_credentials -> Js.js_string Js.t)
let omit = obj_magic_of_string (Js.string "omit")
let same_origin = obj_magic_of_string (Js.string "same-origin")
let include_ = obj_magic_of_string (Js.string "include")

let to_variant (t : t) =
  if t == omit
  then `Omit
  else if t == same_origin
  then `Same_origin
  else if t == include_
  then `Include_
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == omit
  then `Omit
  else if t == same_origin
  then `Same_origin
  else if t == include_
  then `Include_
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_request_credentials (t : Js.js_string Js.t) =
  t == obj_magic_to_string omit
  || t == obj_magic_to_string same_origin
  || t == obj_magic_to_string include_
;;

let of_variant = function
  | `Omit -> omit
  | `Same_origin -> same_origin
  | `Include_ -> include_
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
