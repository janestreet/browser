open! Import

type t = Types.request_mode

type enum =
  [ `Navigate
  | `Same_origin
  | `No_cors
  | `Cors
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.request_mode)
let obj_magic_to_string = (Obj.magic : Types.request_mode -> Js.js_string Js.t)
let navigate = obj_magic_of_string (Js.string "navigate")
let same_origin = obj_magic_of_string (Js.string "same-origin")
let no_cors = obj_magic_of_string (Js.string "no-cors")
let cors = obj_magic_of_string (Js.string "cors")

let to_variant (t : t) =
  if t == navigate
  then `Navigate
  else if t == same_origin
  then `Same_origin
  else if t == no_cors
  then `No_cors
  else if t == cors
  then `Cors
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == navigate
  then `Navigate
  else if t == same_origin
  then `Same_origin
  else if t == no_cors
  then `No_cors
  else if t == cors
  then `Cors
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_request_mode (t : Js.js_string Js.t) =
  t == obj_magic_to_string navigate
  || t == obj_magic_to_string same_origin
  || t == obj_magic_to_string no_cors
  || t == obj_magic_to_string cors
;;

let of_variant = function
  | `Navigate -> navigate
  | `Same_origin -> same_origin
  | `No_cors -> no_cors
  | `Cors -> cors
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
