open! Import

type t = Types.gpu_canvas_tone_mapping_mode

type enum =
  [ `Standard
  | `Extended
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.gpu_canvas_tone_mapping_mode)
;;

let obj_magic_to_string =
  (Obj.magic : Types.gpu_canvas_tone_mapping_mode -> Js.js_string Js.t)
;;

let standard = obj_magic_of_string (Js.string "standard")
let extended = obj_magic_of_string (Js.string "extended")

let to_variant (t : t) =
  if t == standard
  then `Standard
  else if t == extended
  then `Extended
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == standard
  then `Standard
  else if t == extended
  then `Extended
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_gpu_canvas_tone_mapping_mode (t : Js.js_string Js.t) =
  t == obj_magic_to_string standard || t == obj_magic_to_string extended
;;

let of_variant = function
  | `Standard -> standard
  | `Extended -> extended
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
