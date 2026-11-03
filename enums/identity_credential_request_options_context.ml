open! Import

type t = Types.identity_credential_request_options_context

type enum =
  [ `Signin
  | `Signup
  | `Use
  | `Continue
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.identity_credential_request_options_context)
;;

let signin = obj_magic_of_string (Js.string "signin")
let signup = obj_magic_of_string (Js.string "signup")
let use = obj_magic_of_string (Js.string "use")
let continue = obj_magic_of_string (Js.string "continue")

let of_variant = function
  | `Signin -> signin
  | `Signup -> signup
  | `Use -> use
  | `Continue -> continue
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
