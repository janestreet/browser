open! Import

type t = Types.offscreen_rendering_context_type

type enum =
  [ `_2d
  | `Webgl
  | `Webgl2
  | `Bitmaprenderer
  | `Webgpu
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.offscreen_rendering_context_type)
;;

let _2d = obj_magic_of_string (Js.string "2d")
let webgl = obj_magic_of_string (Js.string "webgl")
let webgl2 = obj_magic_of_string (Js.string "webgl2")
let bitmaprenderer = obj_magic_of_string (Js.string "bitmaprenderer")
let webgpu = obj_magic_of_string (Js.string "webgpu")

let of_variant = function
  | `_2d -> _2d
  | `Webgl -> webgl
  | `Webgl2 -> webgl2
  | `Bitmaprenderer -> bitmaprenderer
  | `Webgpu -> webgpu
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
