open! Import

type t = Types.gpu_feature_name

type enum =
  [ `Depth_clip_control
  | `Depth32float_stencil8
  | `Texture_compression_bc
  | `Texture_compression_etc2
  | `Texture_compression_astc
  | `Timestamp_query
  | `Indirect_first_instance
  | `Shader_f16
  | `Rg11b10ufloat_renderable
  | `Bgra8unorm_storage
  | `Float32_filterable
  | `Float32_blendable
  | `Clip_distances
  | `Dual_source_blending
  | `Subgroups
  | `Chromium_experimental_timestamp_query_inside_passes
  | `Chromium_experimental_multi_draw_indirect
  | `Chromium_experimental_unorm16_texture_formats
  | `Chromium_experimental_snorm16_texture_formats
  ]

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.gpu_feature_name)
let depth_clip_control = obj_magic_of_string (Js.string "depth-clip-control")
let depth32float_stencil8 = obj_magic_of_string (Js.string "depth32float-stencil8")
let texture_compression_bc = obj_magic_of_string (Js.string "texture-compression-bc")
let texture_compression_etc2 = obj_magic_of_string (Js.string "texture-compression-etc2")
let texture_compression_astc = obj_magic_of_string (Js.string "texture-compression-astc")
let timestamp_query = obj_magic_of_string (Js.string "timestamp-query")
let indirect_first_instance = obj_magic_of_string (Js.string "indirect-first-instance")
let shader_f16 = obj_magic_of_string (Js.string "shader-f16")
let rg11b10ufloat_renderable = obj_magic_of_string (Js.string "rg11b10ufloat-renderable")
let bgra8unorm_storage = obj_magic_of_string (Js.string "bgra8unorm-storage")
let float32_filterable = obj_magic_of_string (Js.string "float32-filterable")
let float32_blendable = obj_magic_of_string (Js.string "float32-blendable")
let clip_distances = obj_magic_of_string (Js.string "clip-distances")
let dual_source_blending = obj_magic_of_string (Js.string "dual-source-blending")
let subgroups = obj_magic_of_string (Js.string "subgroups")

let chromium_experimental_timestamp_query_inside_passes =
  obj_magic_of_string (Js.string "chromium-experimental-timestamp-query-inside-passes")
;;

let chromium_experimental_multi_draw_indirect =
  obj_magic_of_string (Js.string "chromium-experimental-multi-draw-indirect")
;;

let chromium_experimental_unorm16_texture_formats =
  obj_magic_of_string (Js.string "chromium-experimental-unorm16-texture-formats")
;;

let chromium_experimental_snorm16_texture_formats =
  obj_magic_of_string (Js.string "chromium-experimental-snorm16-texture-formats")
;;

let of_variant = function
  | `Depth_clip_control -> depth_clip_control
  | `Depth32float_stencil8 -> depth32float_stencil8
  | `Texture_compression_bc -> texture_compression_bc
  | `Texture_compression_etc2 -> texture_compression_etc2
  | `Texture_compression_astc -> texture_compression_astc
  | `Timestamp_query -> timestamp_query
  | `Indirect_first_instance -> indirect_first_instance
  | `Shader_f16 -> shader_f16
  | `Rg11b10ufloat_renderable -> rg11b10ufloat_renderable
  | `Bgra8unorm_storage -> bgra8unorm_storage
  | `Float32_filterable -> float32_filterable
  | `Float32_blendable -> float32_blendable
  | `Clip_distances -> clip_distances
  | `Dual_source_blending -> dual_source_blending
  | `Subgroups -> subgroups
  | `Chromium_experimental_timestamp_query_inside_passes ->
    chromium_experimental_timestamp_query_inside_passes
  | `Chromium_experimental_multi_draw_indirect ->
    chromium_experimental_multi_draw_indirect
  | `Chromium_experimental_unorm16_texture_formats ->
    chromium_experimental_unorm16_texture_formats
  | `Chromium_experimental_snorm16_texture_formats ->
    chromium_experimental_snorm16_texture_formats
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
