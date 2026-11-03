open! Import

type t = Types.binary_type

type enum =
  [ `Blob
  | `Arraybuffer
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.binary_type)
let obj_magic_to_string = (Obj.magic : Types.binary_type -> Js.js_string Js.t)
let blob = obj_magic_of_string (Js.string "blob")
let arraybuffer = obj_magic_of_string (Js.string "arraybuffer")

let to_variant (t : t) =
  if t == blob
  then `Blob
  else if t == arraybuffer
  then `Arraybuffer
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == blob
  then `Blob
  else if t == arraybuffer
  then `Arraybuffer
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_binary_type (t : Js.js_string Js.t) =
  t == obj_magic_to_string blob || t == obj_magic_to_string arraybuffer
;;

let of_variant = function
  | `Blob -> blob
  | `Arraybuffer -> arraybuffer
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
