open! Import

type t = Types.request_destination

type enum =
  [ `Empty_string
  | `Audio
  | `Audioworklet
  | `Document
  | `Embed
  | `Font
  | `Frame
  | `Iframe
  | `Image
  | `Json
  | `Manifest
  | `Object_
  | `Paintworklet
  | `Report
  | `Script
  | `Serviceworker
  | `Sharedworker
  | `Style
  | `Track
  | `Video
  | `Worker
  | `Xslt
  | `Fencedframe
  | `Dictionary
  | `Speculationrules
  | `Sharedstorageworklet
  | `Webidentity
  | `Webbundle
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.request_destination)
let obj_magic_to_string = (Obj.magic : Types.request_destination -> Js.js_string Js.t)
let empty_string = obj_magic_of_string (Js.string "")
let audio = obj_magic_of_string (Js.string "audio")
let audioworklet = obj_magic_of_string (Js.string "audioworklet")
let document = obj_magic_of_string (Js.string "document")
let embed = obj_magic_of_string (Js.string "embed")
let font = obj_magic_of_string (Js.string "font")
let frame = obj_magic_of_string (Js.string "frame")
let iframe = obj_magic_of_string (Js.string "iframe")
let image = obj_magic_of_string (Js.string "image")
let json = obj_magic_of_string (Js.string "json")
let manifest = obj_magic_of_string (Js.string "manifest")
let object_ = obj_magic_of_string (Js.string "object")
let paintworklet = obj_magic_of_string (Js.string "paintworklet")
let report = obj_magic_of_string (Js.string "report")
let script = obj_magic_of_string (Js.string "script")
let serviceworker = obj_magic_of_string (Js.string "serviceworker")
let sharedworker = obj_magic_of_string (Js.string "sharedworker")
let style = obj_magic_of_string (Js.string "style")
let track = obj_magic_of_string (Js.string "track")
let video = obj_magic_of_string (Js.string "video")
let worker = obj_magic_of_string (Js.string "worker")
let xslt = obj_magic_of_string (Js.string "xslt")
let fencedframe = obj_magic_of_string (Js.string "fencedframe")
let dictionary = obj_magic_of_string (Js.string "dictionary")
let speculationrules = obj_magic_of_string (Js.string "speculationrules")
let sharedstorageworklet = obj_magic_of_string (Js.string "sharedstorageworklet")
let webidentity = obj_magic_of_string (Js.string "webidentity")
let webbundle = obj_magic_of_string (Js.string "webbundle")

let to_variant (t : t) =
  if t == empty_string
  then `Empty_string
  else if t == audio
  then `Audio
  else if t == audioworklet
  then `Audioworklet
  else if t == document
  then `Document
  else if t == embed
  then `Embed
  else if t == font
  then `Font
  else if t == frame
  then `Frame
  else if t == iframe
  then `Iframe
  else if t == image
  then `Image
  else if t == json
  then `Json
  else if t == manifest
  then `Manifest
  else if t == object_
  then `Object_
  else if t == paintworklet
  then `Paintworklet
  else if t == report
  then `Report
  else if t == script
  then `Script
  else if t == serviceworker
  then `Serviceworker
  else if t == sharedworker
  then `Sharedworker
  else if t == style
  then `Style
  else if t == track
  then `Track
  else if t == video
  then `Video
  else if t == worker
  then `Worker
  else if t == xslt
  then `Xslt
  else if t == fencedframe
  then `Fencedframe
  else if t == dictionary
  then `Dictionary
  else if t == speculationrules
  then `Speculationrules
  else if t == sharedstorageworklet
  then `Sharedstorageworklet
  else if t == webidentity
  then `Webidentity
  else if t == webbundle
  then `Webbundle
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == empty_string
  then `Empty_string
  else if t == audio
  then `Audio
  else if t == audioworklet
  then `Audioworklet
  else if t == document
  then `Document
  else if t == embed
  then `Embed
  else if t == font
  then `Font
  else if t == frame
  then `Frame
  else if t == iframe
  then `Iframe
  else if t == image
  then `Image
  else if t == json
  then `Json
  else if t == manifest
  then `Manifest
  else if t == object_
  then `Object_
  else if t == paintworklet
  then `Paintworklet
  else if t == report
  then `Report
  else if t == script
  then `Script
  else if t == serviceworker
  then `Serviceworker
  else if t == sharedworker
  then `Sharedworker
  else if t == style
  then `Style
  else if t == track
  then `Track
  else if t == video
  then `Video
  else if t == worker
  then `Worker
  else if t == xslt
  then `Xslt
  else if t == fencedframe
  then `Fencedframe
  else if t == dictionary
  then `Dictionary
  else if t == speculationrules
  then `Speculationrules
  else if t == sharedstorageworklet
  then `Sharedstorageworklet
  else if t == webidentity
  then `Webidentity
  else if t == webbundle
  then `Webbundle
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_request_destination (t : Js.js_string Js.t) =
  t == obj_magic_to_string empty_string
  || t == obj_magic_to_string audio
  || t == obj_magic_to_string audioworklet
  || t == obj_magic_to_string document
  || t == obj_magic_to_string embed
  || t == obj_magic_to_string font
  || t == obj_magic_to_string frame
  || t == obj_magic_to_string iframe
  || t == obj_magic_to_string image
  || t == obj_magic_to_string json
  || t == obj_magic_to_string manifest
  || t == obj_magic_to_string object_
  || t == obj_magic_to_string paintworklet
  || t == obj_magic_to_string report
  || t == obj_magic_to_string script
  || t == obj_magic_to_string serviceworker
  || t == obj_magic_to_string sharedworker
  || t == obj_magic_to_string style
  || t == obj_magic_to_string track
  || t == obj_magic_to_string video
  || t == obj_magic_to_string worker
  || t == obj_magic_to_string xslt
  || t == obj_magic_to_string fencedframe
  || t == obj_magic_to_string dictionary
  || t == obj_magic_to_string speculationrules
  || t == obj_magic_to_string sharedstorageworklet
  || t == obj_magic_to_string webidentity
  || t == obj_magic_to_string webbundle
;;
