open! Import

type t = Types.gpu_canvas_alpha_mode

type enum =
  [ `Opaque
  | `Premultiplied
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.gpu_canvas_alpha_mode)
let obj_magic_to_string = (Obj.magic : Types.gpu_canvas_alpha_mode -> Js.js_string Js.t)
let opaque = obj_magic_of_string (Js.string "opaque")
let premultiplied = obj_magic_of_string (Js.string "premultiplied")

let to_variant (t : t) =
  if t == opaque
  then `Opaque
  else if t == premultiplied
  then `Premultiplied
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == opaque
  then `Opaque
  else if t == premultiplied
  then `Premultiplied
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_gpu_canvas_alpha_mode (t : Js.js_string Js.t) =
  t == obj_magic_to_string opaque || t == obj_magic_to_string premultiplied
;;

let of_variant = function
  | `Opaque -> opaque
  | `Premultiplied -> premultiplied
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
