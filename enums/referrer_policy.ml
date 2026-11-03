open! Import

type t = Types.referrer_policy

type enum =
  [ `Empty_string
  | `No_referrer
  | `No_referrer_when_downgrade
  | `Same_origin
  | `Origin
  | `Strict_origin
  | `Origin_when_cross_origin
  | `Strict_origin_when_cross_origin
  | `Unsafe_url
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.referrer_policy)
let obj_magic_to_string = (Obj.magic : Types.referrer_policy -> Js.js_string Js.t)
let empty_string = obj_magic_of_string (Js.string "")
let no_referrer = obj_magic_of_string (Js.string "no-referrer")

let no_referrer_when_downgrade =
  obj_magic_of_string (Js.string "no-referrer-when-downgrade")
;;

let same_origin = obj_magic_of_string (Js.string "same-origin")
let origin = obj_magic_of_string (Js.string "origin")
let strict_origin = obj_magic_of_string (Js.string "strict-origin")
let origin_when_cross_origin = obj_magic_of_string (Js.string "origin-when-cross-origin")

let strict_origin_when_cross_origin =
  obj_magic_of_string (Js.string "strict-origin-when-cross-origin")
;;

let unsafe_url = obj_magic_of_string (Js.string "unsafe-url")

let to_variant (t : t) =
  if t == empty_string
  then `Empty_string
  else if t == no_referrer
  then `No_referrer
  else if t == no_referrer_when_downgrade
  then `No_referrer_when_downgrade
  else if t == same_origin
  then `Same_origin
  else if t == origin
  then `Origin
  else if t == strict_origin
  then `Strict_origin
  else if t == origin_when_cross_origin
  then `Origin_when_cross_origin
  else if t == strict_origin_when_cross_origin
  then `Strict_origin_when_cross_origin
  else if t == unsafe_url
  then `Unsafe_url
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == empty_string
  then `Empty_string
  else if t == no_referrer
  then `No_referrer
  else if t == no_referrer_when_downgrade
  then `No_referrer_when_downgrade
  else if t == same_origin
  then `Same_origin
  else if t == origin
  then `Origin
  else if t == strict_origin
  then `Strict_origin
  else if t == origin_when_cross_origin
  then `Origin_when_cross_origin
  else if t == strict_origin_when_cross_origin
  then `Strict_origin_when_cross_origin
  else if t == unsafe_url
  then `Unsafe_url
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_referrer_policy (t : Js.js_string Js.t) =
  t == obj_magic_to_string empty_string
  || t == obj_magic_to_string no_referrer
  || t == obj_magic_to_string no_referrer_when_downgrade
  || t == obj_magic_to_string same_origin
  || t == obj_magic_to_string origin
  || t == obj_magic_to_string strict_origin
  || t == obj_magic_to_string origin_when_cross_origin
  || t == obj_magic_to_string strict_origin_when_cross_origin
  || t == obj_magic_to_string unsafe_url
;;

let of_variant = function
  | `Empty_string -> empty_string
  | `No_referrer -> no_referrer
  | `No_referrer_when_downgrade -> no_referrer_when_downgrade
  | `Same_origin -> same_origin
  | `Origin -> origin
  | `Strict_origin -> strict_origin
  | `Origin_when_cross_origin -> origin_when_cross_origin
  | `Strict_origin_when_cross_origin -> strict_origin_when_cross_origin
  | `Unsafe_url -> unsafe_url
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
