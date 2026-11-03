open! Import

type t = Types.gpu_texture_aspect

type enum =
  [ `All
  | `Stencil_only
  | `Depth_only
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.gpu_texture_aspect)
let all = obj_magic_of_string (Js.string "all")
let stencil_only = obj_magic_of_string (Js.string "stencil-only")
let depth_only = obj_magic_of_string (Js.string "depth-only")

let of_variant = function
  | `All -> all
  | `Stencil_only -> stencil_only
  | `Depth_only -> depth_only
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
