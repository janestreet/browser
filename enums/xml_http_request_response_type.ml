open! Import

type t = Types.xml_http_request_response_type

type enum =
  [ `Empty_string
  | `Arraybuffer
  | `Blob
  | `Document
  | `Json
  | `Text
  ]

let obj_magic_of_string =
  (Obj.magic : Js.js_string Js.t -> Types.xml_http_request_response_type)
;;

let obj_magic_to_string =
  (Obj.magic : Types.xml_http_request_response_type -> Js.js_string Js.t)
;;

let empty_string = obj_magic_of_string (Js.string "")
let arraybuffer = obj_magic_of_string (Js.string "arraybuffer")
let blob = obj_magic_of_string (Js.string "blob")
let document = obj_magic_of_string (Js.string "document")
let json = obj_magic_of_string (Js.string "json")
let text = obj_magic_of_string (Js.string "text")

let to_variant (t : t) =
  if t == empty_string
  then `Empty_string
  else if t == arraybuffer
  then `Arraybuffer
  else if t == blob
  then `Blob
  else if t == document
  then `Document
  else if t == json
  then `Json
  else if t == text
  then `Text
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == empty_string
  then `Empty_string
  else if t == arraybuffer
  then `Arraybuffer
  else if t == blob
  then `Blob
  else if t == document
  then `Document
  else if t == json
  then `Json
  else if t == text
  then `Text
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_xml_http_request_response_type (t : Js.js_string Js.t) =
  t == obj_magic_to_string empty_string
  || t == obj_magic_to_string arraybuffer
  || t == obj_magic_to_string blob
  || t == obj_magic_to_string document
  || t == obj_magic_to_string json
  || t == obj_magic_to_string text
;;

let of_variant = function
  | `Empty_string -> empty_string
  | `Arraybuffer -> arraybuffer
  | `Blob -> blob
  | `Document -> document
  | `Json -> json
  | `Text -> text
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
