open! Import

type t = Types.request_duplex
type enum = [ `Half ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.request_duplex)
let obj_magic_to_string = (Obj.magic : Types.request_duplex -> Js.js_string Js.t)
let half = obj_magic_of_string (Js.string "half")

let to_variant (t : t) =
  if t == half then `Half else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == half
  then `Half
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_request_duplex (t : Js.js_string Js.t) = t == obj_magic_to_string half
