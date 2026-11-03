open! Import

type t = Types.canvas_text_rendering

type enum =
  [ `Auto
  | `OptimizeSpeed
  | `OptimizeLegibility
  | `GeometricPrecision
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.canvas_text_rendering)
let obj_magic_to_string = (Obj.magic : Types.canvas_text_rendering -> Js.js_string Js.t)
let auto = obj_magic_of_string (Js.string "auto")
let optimize_speed = obj_magic_of_string (Js.string "optimizeSpeed")
let optimize_legibility = obj_magic_of_string (Js.string "optimizeLegibility")
let geometric_precision = obj_magic_of_string (Js.string "geometricPrecision")

let to_variant (t : t) =
  if t == auto
  then `Auto
  else if t == optimize_speed
  then `OptimizeSpeed
  else if t == optimize_legibility
  then `OptimizeLegibility
  else if t == geometric_precision
  then `GeometricPrecision
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == auto
  then `Auto
  else if t == optimize_speed
  then `OptimizeSpeed
  else if t == optimize_legibility
  then `OptimizeLegibility
  else if t == geometric_precision
  then `GeometricPrecision
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_canvas_text_rendering (t : Js.js_string Js.t) =
  t == obj_magic_to_string auto
  || t == obj_magic_to_string optimize_speed
  || t == obj_magic_to_string optimize_legibility
  || t == obj_magic_to_string geometric_precision
;;

let of_variant = function
  | `Auto -> auto
  | `OptimizeSpeed -> optimize_speed
  | `OptimizeLegibility -> optimize_legibility
  | `GeometricPrecision -> geometric_precision
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
