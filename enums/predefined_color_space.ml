open! Import

type t = Types.predefined_color_space

type enum =
  [ `Srgb
  | `Rec2020
  | `Display_p3
  | `Rec2100_hlg
  | `Rec2100_pq
  | `Srgb_linear
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.predefined_color_space)
let obj_magic_to_string = (Obj.magic : Types.predefined_color_space -> Js.js_string Js.t)
let srgb = obj_magic_of_string (Js.string "srgb")
let rec2020 = obj_magic_of_string (Js.string "rec2020")
let display_p3 = obj_magic_of_string (Js.string "display-p3")
let rec2100_hlg = obj_magic_of_string (Js.string "rec2100-hlg")
let rec2100_pq = obj_magic_of_string (Js.string "rec2100-pq")
let srgb_linear = obj_magic_of_string (Js.string "srgb-linear")

let to_variant (t : t) =
  if t == srgb
  then `Srgb
  else if t == rec2020
  then `Rec2020
  else if t == display_p3
  then `Display_p3
  else if t == rec2100_hlg
  then `Rec2100_hlg
  else if t == rec2100_pq
  then `Rec2100_pq
  else if t == srgb_linear
  then `Srgb_linear
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == srgb
  then `Srgb
  else if t == rec2020
  then `Rec2020
  else if t == display_p3
  then `Display_p3
  else if t == rec2100_hlg
  then `Rec2100_hlg
  else if t == rec2100_pq
  then `Rec2100_pq
  else if t == srgb_linear
  then `Srgb_linear
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_predefined_color_space (t : Js.js_string Js.t) =
  t == obj_magic_to_string srgb
  || t == obj_magic_to_string rec2020
  || t == obj_magic_to_string display_p3
  || t == obj_magic_to_string rec2100_hlg
  || t == obj_magic_to_string rec2100_pq
  || t == obj_magic_to_string srgb_linear
;;

let of_variant = function
  | `Srgb -> srgb
  | `Rec2020 -> rec2020
  | `Display_p3 -> display_p3
  | `Rec2100_hlg -> rec2100_hlg
  | `Rec2100_pq -> rec2100_pq
  | `Srgb_linear -> srgb_linear
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
