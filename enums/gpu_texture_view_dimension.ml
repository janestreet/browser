open! Import

type t = Types.gpu_texture_view_dimension

type enum =
  [ `_1d
  | `_2d
  | `_2d_array
  | `Cube
  | `Cube_array
  | `_3d
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.gpu_texture_view_dimension)
;;

let _1d = obj_magic_of_string (Js.string "1d")
let _2d = obj_magic_of_string (Js.string "2d")
let _2d_array = obj_magic_of_string (Js.string "2d-array")
let cube = obj_magic_of_string (Js.string "cube")
let cube_array = obj_magic_of_string (Js.string "cube-array")
let _3d = obj_magic_of_string (Js.string "3d")

let of_variant = function
  | `_1d -> _1d
  | `_2d -> _2d
  | `_2d_array -> _2d_array
  | `Cube -> cube
  | `Cube_array -> cube_array
  | `_3d -> _3d
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
