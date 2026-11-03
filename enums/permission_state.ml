open! Import

type t = Types.permission_state

type enum =
  [ `Granted
  | `Denied
  | `Prompt
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.permission_state)
let obj_magic_to_string = (Obj.magic : Types.permission_state -> Js.js_string Js.t)
let granted = obj_magic_of_string (Js.string "granted")
let denied = obj_magic_of_string (Js.string "denied")
let prompt = obj_magic_of_string (Js.string "prompt")

let to_variant (t : t) =
  if t == granted
  then `Granted
  else if t == denied
  then `Denied
  else if t == prompt
  then `Prompt
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == granted
  then `Granted
  else if t == denied
  then `Denied
  else if t == prompt
  then `Prompt
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_permission_state (t : Js.js_string Js.t) =
  t == obj_magic_to_string granted
  || t == obj_magic_to_string denied
  || t == obj_magic_to_string prompt
;;
