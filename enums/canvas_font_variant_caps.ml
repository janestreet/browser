open! Import

type t = Types.canvas_font_variant_caps

type enum =
  [ `Normal
  | `Small_caps
  | `All_small_caps
  | `Petite_caps
  | `All_petite_caps
  | `Unicase
  | `Titling_caps
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.canvas_font_variant_caps)
;;

let obj_magic_to_string =
  (Obj.magic : Types.canvas_font_variant_caps -> Js.js_string Js.t)
;;

let normal = obj_magic_of_string (Js.string "normal")
let small_caps = obj_magic_of_string (Js.string "small-caps")
let all_small_caps = obj_magic_of_string (Js.string "all-small-caps")
let petite_caps = obj_magic_of_string (Js.string "petite-caps")
let all_petite_caps = obj_magic_of_string (Js.string "all-petite-caps")
let unicase = obj_magic_of_string (Js.string "unicase")
let titling_caps = obj_magic_of_string (Js.string "titling-caps")

let to_variant (t : t) =
  if t == normal
  then `Normal
  else if t == small_caps
  then `Small_caps
  else if t == all_small_caps
  then `All_small_caps
  else if t == petite_caps
  then `Petite_caps
  else if t == all_petite_caps
  then `All_petite_caps
  else if t == unicase
  then `Unicase
  else if t == titling_caps
  then `Titling_caps
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == normal
  then `Normal
  else if t == small_caps
  then `Small_caps
  else if t == all_small_caps
  then `All_small_caps
  else if t == petite_caps
  then `Petite_caps
  else if t == all_petite_caps
  then `All_petite_caps
  else if t == unicase
  then `Unicase
  else if t == titling_caps
  then `Titling_caps
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_canvas_font_variant_caps (t : Js.js_string Js.t) =
  t == obj_magic_to_string normal
  || t == obj_magic_to_string small_caps
  || t == obj_magic_to_string all_small_caps
  || t == obj_magic_to_string petite_caps
  || t == obj_magic_to_string all_petite_caps
  || t == obj_magic_to_string unicase
  || t == obj_magic_to_string titling_caps
;;

let of_variant = function
  | `Normal -> normal
  | `Small_caps -> small_caps
  | `All_small_caps -> all_small_caps
  | `Petite_caps -> petite_caps
  | `All_petite_caps -> all_petite_caps
  | `Unicase -> unicase
  | `Titling_caps -> titling_caps
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
