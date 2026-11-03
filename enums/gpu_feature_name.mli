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

val depth_clip_control : t
val depth32float_stencil8 : t
val texture_compression_bc : t
val texture_compression_etc2 : t
val texture_compression_astc : t
val timestamp_query : t
val indirect_first_instance : t
val shader_f16 : t
val rg11b10ufloat_renderable : t
val bgra8unorm_storage : t
val float32_filterable : t
val float32_blendable : t
val clip_distances : t
val dual_source_blending : t
val subgroups : t
val chromium_experimental_timestamp_query_inside_passes : t
val chromium_experimental_multi_draw_indirect : t
val chromium_experimental_unorm16_texture_formats : t
val chromium_experimental_snorm16_texture_formats : t

(* Since this enum only appears as method parameters, we omit the [to_variant],
   [to_variant_exn], and the type checking functions. *)

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val of_variant : [< enum | `Unknown_value of string ] -> t
