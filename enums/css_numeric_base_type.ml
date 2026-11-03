open! Import

type t = Types.css_numeric_base_type

type enum =
  [ `Length
  | `Angle
  | `Time
  | `Frequency
  | `Resolution
  | `Flex
  | `Percent
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.css_numeric_base_type)
let obj_magic_to_string = (Obj.magic : Types.css_numeric_base_type -> Js.js_string Js.t)
let length = obj_magic_of_string (Js.string "length")
let angle = obj_magic_of_string (Js.string "angle")
let time = obj_magic_of_string (Js.string "time")
let frequency = obj_magic_of_string (Js.string "frequency")
let resolution = obj_magic_of_string (Js.string "resolution")
let flex = obj_magic_of_string (Js.string "flex")
let percent = obj_magic_of_string (Js.string "percent")

let to_variant (t : t) =
  if t == length
  then `Length
  else if t == angle
  then `Angle
  else if t == time
  then `Time
  else if t == frequency
  then `Frequency
  else if t == resolution
  then `Resolution
  else if t == flex
  then `Flex
  else if t == percent
  then `Percent
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == length
  then `Length
  else if t == angle
  then `Angle
  else if t == time
  then `Time
  else if t == frequency
  then `Frequency
  else if t == resolution
  then `Resolution
  else if t == flex
  then `Flex
  else if t == percent
  then `Percent
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_css_numeric_base_type (t : Js.js_string Js.t) =
  t == obj_magic_to_string length
  || t == obj_magic_to_string angle
  || t == obj_magic_to_string time
  || t == obj_magic_to_string frequency
  || t == obj_magic_to_string resolution
  || t == obj_magic_to_string flex
  || t == obj_magic_to_string percent
;;
