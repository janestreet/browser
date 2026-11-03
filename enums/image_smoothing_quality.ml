open! Import

type t = Types.image_smoothing_quality

type enum =
  [ `Low
  | `Medium
  | `High
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.image_smoothing_quality)
let obj_magic_to_string = (Obj.magic : Types.image_smoothing_quality -> Js.js_string Js.t)
let low = obj_magic_of_string (Js.string "low")
let medium = obj_magic_of_string (Js.string "medium")
let high = obj_magic_of_string (Js.string "high")

let to_variant (t : t) =
  if t == low
  then `Low
  else if t == medium
  then `Medium
  else if t == high
  then `High
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == low
  then `Low
  else if t == medium
  then `Medium
  else if t == high
  then `High
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_image_smoothing_quality (t : Js.js_string Js.t) =
  t == obj_magic_to_string low
  || t == obj_magic_to_string medium
  || t == obj_magic_to_string high
;;

let of_variant = function
  | `Low -> low
  | `Medium -> medium
  | `High -> high
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
