open! Import

type t = Types.font_face_set_load_status

type enum =
  [ `Loading
  | `Loaded
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.font_face_set_load_status)
;;

let obj_magic_to_string =
  (Obj.magic : Types.font_face_set_load_status -> Js.js_string Js.t)
;;

let loading = obj_magic_of_string (Js.string "loading")
let loaded = obj_magic_of_string (Js.string "loaded")

let to_variant (t : t) =
  if t == loading
  then `Loading
  else if t == loaded
  then `Loaded
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == loading
  then `Loading
  else if t == loaded
  then `Loaded
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_font_face_set_load_status (t : Js.js_string Js.t) =
  t == obj_magic_to_string loading || t == obj_magic_to_string loaded
;;
