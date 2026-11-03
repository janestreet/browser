open! Import

type t = Types.gpu_query_type

type enum =
  [ `Occlusion
  | `Timestamp
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.gpu_query_type)
let obj_magic_to_string = (Obj.magic : Types.gpu_query_type -> Js.js_string Js.t)
let occlusion = obj_magic_of_string (Js.string "occlusion")
let timestamp = obj_magic_of_string (Js.string "timestamp")

let to_variant (t : t) =
  if t == occlusion
  then `Occlusion
  else if t == timestamp
  then `Timestamp
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == occlusion
  then `Occlusion
  else if t == timestamp
  then `Timestamp
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_gpu_query_type (t : Js.js_string Js.t) =
  t == obj_magic_to_string occlusion || t == obj_magic_to_string timestamp
;;

let of_variant = function
  | `Occlusion -> occlusion
  | `Timestamp -> timestamp
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
