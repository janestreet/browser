open! Import

type t = Types.media_stream_track_state

type enum =
  [ `Live
  | `Ended
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.media_stream_track_state)
;;

let obj_magic_to_string =
  (Obj.magic : Types.media_stream_track_state -> Js.js_string Js.t)
;;

let live = obj_magic_of_string (Js.string "live")
let ended = obj_magic_of_string (Js.string "ended")

let to_variant (t : t) =
  if t == live
  then `Live
  else if t == ended
  then `Ended
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == live
  then `Live
  else if t == ended
  then `Ended
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_media_stream_track_state (t : Js.js_string Js.t) =
  t == obj_magic_to_string live || t == obj_magic_to_string ended
;;
