open! Import

type t = Types.font_face_load_status

type enum =
  [ `Unloaded
  | `Loading
  | `Loaded
  | `Error
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.font_face_load_status)
let obj_magic_to_string = (Obj.magic : Types.font_face_load_status -> Js.js_string Js.t)
let unloaded = obj_magic_of_string (Js.string "unloaded")
let loading = obj_magic_of_string (Js.string "loading")
let loaded = obj_magic_of_string (Js.string "loaded")
let error = obj_magic_of_string (Js.string "error")

let to_variant (t : t) =
  if t == unloaded
  then `Unloaded
  else if t == loading
  then `Loading
  else if t == loaded
  then `Loaded
  else if t == error
  then `Error
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == unloaded
  then `Unloaded
  else if t == loading
  then `Loading
  else if t == loaded
  then `Loaded
  else if t == error
  then `Error
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_font_face_load_status (t : Js.js_string Js.t) =
  t == obj_magic_to_string unloaded
  || t == obj_magic_to_string loading
  || t == obj_magic_to_string loaded
  || t == obj_magic_to_string error
;;
