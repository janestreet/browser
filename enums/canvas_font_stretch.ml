open! Import

type t = Types.canvas_font_stretch

type enum =
  [ `Ultra_condensed
  | `Extra_condensed
  | `Condensed
  | `Semi_condensed
  | `Normal
  | `Semi_expanded
  | `Expanded
  | `Extra_expanded
  | `Ultra_expanded
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.canvas_font_stretch)
let obj_magic_to_string = (Obj.magic : Types.canvas_font_stretch -> Js.js_string Js.t)
let ultra_condensed = obj_magic_of_string (Js.string "ultra-condensed")
let extra_condensed = obj_magic_of_string (Js.string "extra-condensed")
let condensed = obj_magic_of_string (Js.string "condensed")
let semi_condensed = obj_magic_of_string (Js.string "semi-condensed")
let normal = obj_magic_of_string (Js.string "normal")
let semi_expanded = obj_magic_of_string (Js.string "semi-expanded")
let expanded = obj_magic_of_string (Js.string "expanded")
let extra_expanded = obj_magic_of_string (Js.string "extra-expanded")
let ultra_expanded = obj_magic_of_string (Js.string "ultra-expanded")

let to_variant (t : t) =
  if t == ultra_condensed
  then `Ultra_condensed
  else if t == extra_condensed
  then `Extra_condensed
  else if t == condensed
  then `Condensed
  else if t == semi_condensed
  then `Semi_condensed
  else if t == normal
  then `Normal
  else if t == semi_expanded
  then `Semi_expanded
  else if t == expanded
  then `Expanded
  else if t == extra_expanded
  then `Extra_expanded
  else if t == ultra_expanded
  then `Ultra_expanded
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == ultra_condensed
  then `Ultra_condensed
  else if t == extra_condensed
  then `Extra_condensed
  else if t == condensed
  then `Condensed
  else if t == semi_condensed
  then `Semi_condensed
  else if t == normal
  then `Normal
  else if t == semi_expanded
  then `Semi_expanded
  else if t == expanded
  then `Expanded
  else if t == extra_expanded
  then `Extra_expanded
  else if t == ultra_expanded
  then `Ultra_expanded
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_canvas_font_stretch (t : Js.js_string Js.t) =
  t == obj_magic_to_string ultra_condensed
  || t == obj_magic_to_string extra_condensed
  || t == obj_magic_to_string condensed
  || t == obj_magic_to_string semi_condensed
  || t == obj_magic_to_string normal
  || t == obj_magic_to_string semi_expanded
  || t == obj_magic_to_string expanded
  || t == obj_magic_to_string extra_expanded
  || t == obj_magic_to_string ultra_expanded
;;

let of_variant = function
  | `Ultra_condensed -> ultra_condensed
  | `Extra_condensed -> extra_condensed
  | `Condensed -> condensed
  | `Semi_condensed -> semi_condensed
  | `Normal -> normal
  | `Semi_expanded -> semi_expanded
  | `Expanded -> expanded
  | `Extra_expanded -> extra_expanded
  | `Ultra_expanded -> ultra_expanded
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
