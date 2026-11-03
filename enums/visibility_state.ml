open! Import

type t = Types.visibility_state

type enum =
  [ `Hidden
  | `Visible
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.visibility_state)
let obj_magic_to_string = (Obj.magic : Types.visibility_state -> Js.js_string Js.t)
let hidden = obj_magic_of_string (Js.string "hidden")
let visible = obj_magic_of_string (Js.string "visible")

let to_variant (t : t) =
  if t == hidden
  then `Hidden
  else if t == visible
  then `Visible
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == hidden
  then `Hidden
  else if t == visible
  then `Visible
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_visibility_state (t : Js.js_string Js.t) =
  t == obj_magic_to_string hidden || t == obj_magic_to_string visible
;;
