open! Import

type t = Types.can_play_type_result

type enum =
  [ `Empty_string
  | `Maybe
  | `Probably
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.can_play_type_result)
let obj_magic_to_string = (Obj.magic : Types.can_play_type_result -> Js.js_string Js.t)
let empty_string = obj_magic_of_string (Js.string "")
let maybe = obj_magic_of_string (Js.string "maybe")
let probably = obj_magic_of_string (Js.string "probably")

let to_variant (t : t) =
  if t == empty_string
  then `Empty_string
  else if t == maybe
  then `Maybe
  else if t == probably
  then `Probably
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == empty_string
  then `Empty_string
  else if t == maybe
  then `Maybe
  else if t == probably
  then `Probably
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_can_play_type_result (t : Js.js_string Js.t) =
  t == obj_magic_to_string empty_string
  || t == obj_magic_to_string maybe
  || t == obj_magic_to_string probably
;;
