open! Import

type t = Types.document_ready_state

type enum =
  [ `Loading
  | `Interactive
  | `Complete
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.document_ready_state)
let obj_magic_to_string = (Obj.magic : Types.document_ready_state -> Js.js_string Js.t)
let loading = obj_magic_of_string (Js.string "loading")
let interactive = obj_magic_of_string (Js.string "interactive")
let complete = obj_magic_of_string (Js.string "complete")

let to_variant (t : t) =
  if t == loading
  then `Loading
  else if t == interactive
  then `Interactive
  else if t == complete
  then `Complete
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == loading
  then `Loading
  else if t == interactive
  then `Interactive
  else if t == complete
  then `Complete
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_document_ready_state (t : Js.js_string Js.t) =
  t == obj_magic_to_string loading
  || t == obj_magic_to_string interactive
  || t == obj_magic_to_string complete
;;
