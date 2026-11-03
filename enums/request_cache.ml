open! Import

type t = Types.request_cache

type enum =
  [ `Default
  | `No_store
  | `Reload
  | `No_cache
  | `Force_cache
  | `Only_if_cached
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.request_cache)
let obj_magic_to_string = (Obj.magic : Types.request_cache -> Js.js_string Js.t)
let default = obj_magic_of_string (Js.string "default")
let no_store = obj_magic_of_string (Js.string "no-store")
let reload = obj_magic_of_string (Js.string "reload")
let no_cache = obj_magic_of_string (Js.string "no-cache")
let force_cache = obj_magic_of_string (Js.string "force-cache")
let only_if_cached = obj_magic_of_string (Js.string "only-if-cached")

let to_variant (t : t) =
  if t == default
  then `Default
  else if t == no_store
  then `No_store
  else if t == reload
  then `Reload
  else if t == no_cache
  then `No_cache
  else if t == force_cache
  then `Force_cache
  else if t == only_if_cached
  then `Only_if_cached
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == default
  then `Default
  else if t == no_store
  then `No_store
  else if t == reload
  then `Reload
  else if t == no_cache
  then `No_cache
  else if t == force_cache
  then `Force_cache
  else if t == only_if_cached
  then `Only_if_cached
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_request_cache (t : Js.js_string Js.t) =
  t == obj_magic_to_string default
  || t == obj_magic_to_string no_store
  || t == obj_magic_to_string reload
  || t == obj_magic_to_string no_cache
  || t == obj_magic_to_string force_cache
  || t == obj_magic_to_string only_if_cached
;;

let of_variant = function
  | `Default -> default
  | `No_store -> no_store
  | `Reload -> reload
  | `No_cache -> no_cache
  | `Force_cache -> force_cache
  | `Only_if_cached -> only_if_cached
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
