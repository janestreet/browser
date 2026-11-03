open! Import

type t = Types.gpu_texture_dimension

type enum =
  [ `_1d
  | `_2d
  | `_3d
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.gpu_texture_dimension)
let obj_magic_to_string = (Obj.magic : Types.gpu_texture_dimension -> Js.js_string Js.t)
let _1d = obj_magic_of_string (Js.string "1d")
let _2d = obj_magic_of_string (Js.string "2d")
let _3d = obj_magic_of_string (Js.string "3d")

let to_variant (t : t) =
  if t == _1d
  then `_1d
  else if t == _2d
  then `_2d
  else if t == _3d
  then `_3d
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == _1d
  then `_1d
  else if t == _2d
  then `_2d
  else if t == _3d
  then `_3d
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_gpu_texture_dimension (t : Js.js_string Js.t) =
  t == obj_magic_to_string _1d
  || t == obj_magic_to_string _2d
  || t == obj_magic_to_string _3d
;;

let of_variant = function
  | `_1d -> _1d
  | `_2d -> _2d
  | `_3d -> _3d
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
