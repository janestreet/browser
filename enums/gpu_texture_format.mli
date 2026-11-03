open! Import

type t = Types.gpu_texture_format

type enum =
  [ `R8unorm
  | `R8snorm
  | `R8uint
  | `R8sint
  | `R16uint
  | `R16sint
  | `R16float
  | `Rg8unorm
  | `Rg8snorm
  | `Rg8uint
  | `Rg8sint
  | `R32uint
  | `R32sint
  | `R32float
  | `Rg16uint
  | `Rg16sint
  | `Rg16float
  | `Rgba8unorm
  | `Rgba8unorm_srgb
  | `Rgba8snorm
  | `Rgba8uint
  | `Rgba8sint
  | `Bgra8unorm
  | `Bgra8unorm_srgb
  | `Rgb9e5ufloat
  | `Rgb10a2uint
  | `Rgb10a2unorm
  | `Rg11b10ufloat
  | `Rg32uint
  | `Rg32sint
  | `Rg32float
  | `Rgba16uint
  | `Rgba16sint
  | `Rgba16float
  | `Rgba32uint
  | `Rgba32sint
  | `Rgba32float
  | `Depth32float
  | `Depth32float_stencil8
  | `Depth24plus
  | `Depth24plus_stencil8
  | `Depth16unorm
  | `Stencil8
  | `Bc1_rgba_unorm
  | `Bc1_rgba_unorm_srgb
  | `Bc2_rgba_unorm
  | `Bc2_rgba_unorm_srgb
  | `Bc3_rgba_unorm
  | `Bc3_rgba_unorm_srgb
  | `Bc4_r_unorm
  | `Bc4_r_snorm
  | `Bc5_rg_unorm
  | `Bc5_rg_snorm
  | `Bc6h_rgb_ufloat
  | `Bc6h_rgb_float
  | `Bc7_rgba_unorm
  | `Bc7_rgba_unorm_srgb
  | `Etc2_rgb8unorm
  | `Etc2_rgb8unorm_srgb
  | `Etc2_rgb8a1unorm
  | `Etc2_rgb8a1unorm_srgb
  | `Etc2_rgba8unorm
  | `Etc2_rgba8unorm_srgb
  | `Eac_r11unorm
  | `Eac_r11snorm
  | `Eac_rg11unorm
  | `Eac_rg11snorm
  | `Astc_4x4_unorm
  | `Astc_4x4_unorm_srgb
  | `Astc_5x4_unorm
  | `Astc_5x4_unorm_srgb
  | `Astc_5x5_unorm
  | `Astc_5x5_unorm_srgb
  | `Astc_6x5_unorm
  | `Astc_6x5_unorm_srgb
  | `Astc_6x6_unorm
  | `Astc_6x6_unorm_srgb
  | `Astc_8x5_unorm
  | `Astc_8x5_unorm_srgb
  | `Astc_8x6_unorm
  | `Astc_8x6_unorm_srgb
  | `Astc_8x8_unorm
  | `Astc_8x8_unorm_srgb
  | `Astc_10x5_unorm
  | `Astc_10x5_unorm_srgb
  | `Astc_10x6_unorm
  | `Astc_10x6_unorm_srgb
  | `Astc_10x8_unorm
  | `Astc_10x8_unorm_srgb
  | `Astc_10x10_unorm
  | `Astc_10x10_unorm_srgb
  | `Astc_12x10_unorm
  | `Astc_12x10_unorm_srgb
  | `Astc_12x12_unorm
  | `Astc_12x12_unorm_srgb
  | `R16unorm
  | `Rg16unorm
  | `Rgba16unorm
  | `R16snorm
  | `Rg16snorm
  | `Rgba16snorm
  ]

val r8unorm : t
val r8snorm : t
val r8uint : t
val r8sint : t
val r16uint : t
val r16sint : t
val r16float : t
val rg8unorm : t
val rg8snorm : t
val rg8uint : t
val rg8sint : t
val r32uint : t
val r32sint : t
val r32float : t
val rg16uint : t
val rg16sint : t
val rg16float : t
val rgba8unorm : t
val rgba8unorm_srgb : t
val rgba8snorm : t
val rgba8uint : t
val rgba8sint : t
val bgra8unorm : t
val bgra8unorm_srgb : t
val rgb9e5ufloat : t
val rgb10a2uint : t
val rgb10a2unorm : t
val rg11b10ufloat : t
val rg32uint : t
val rg32sint : t
val rg32float : t
val rgba16uint : t
val rgba16sint : t
val rgba16float : t
val rgba32uint : t
val rgba32sint : t
val rgba32float : t
val depth32float : t
val depth32float_stencil8 : t
val depth24plus : t
val depth24plus_stencil8 : t
val depth16unorm : t
val stencil8 : t
val bc1_rgba_unorm : t
val bc1_rgba_unorm_srgb : t
val bc2_rgba_unorm : t
val bc2_rgba_unorm_srgb : t
val bc3_rgba_unorm : t
val bc3_rgba_unorm_srgb : t
val bc4_r_unorm : t
val bc4_r_snorm : t
val bc5_rg_unorm : t
val bc5_rg_snorm : t
val bc6h_rgb_ufloat : t
val bc6h_rgb_float : t
val bc7_rgba_unorm : t
val bc7_rgba_unorm_srgb : t
val etc2_rgb8unorm : t
val etc2_rgb8unorm_srgb : t
val etc2_rgb8a1unorm : t
val etc2_rgb8a1unorm_srgb : t
val etc2_rgba8unorm : t
val etc2_rgba8unorm_srgb : t
val eac_r11unorm : t
val eac_r11snorm : t
val eac_rg11unorm : t
val eac_rg11snorm : t
val astc_4x4_unorm : t
val astc_4x4_unorm_srgb : t
val astc_5x4_unorm : t
val astc_5x4_unorm_srgb : t
val astc_5x5_unorm : t
val astc_5x5_unorm_srgb : t
val astc_6x5_unorm : t
val astc_6x5_unorm_srgb : t
val astc_6x6_unorm : t
val astc_6x6_unorm_srgb : t
val astc_8x5_unorm : t
val astc_8x5_unorm_srgb : t
val astc_8x6_unorm : t
val astc_8x6_unorm_srgb : t
val astc_8x8_unorm : t
val astc_8x8_unorm_srgb : t
val astc_10x5_unorm : t
val astc_10x5_unorm_srgb : t
val astc_10x6_unorm : t
val astc_10x6_unorm_srgb : t
val astc_10x8_unorm : t
val astc_10x8_unorm_srgb : t
val astc_10x10_unorm : t
val astc_10x10_unorm_srgb : t
val astc_12x10_unorm : t
val astc_12x10_unorm_srgb : t
val astc_12x12_unorm : t
val astc_12x12_unorm_srgb : t
val r16unorm : t
val rg16unorm : t
val rgba16unorm : t
val r16snorm : t
val rg16snorm : t
val rgba16snorm : t

(* [`Unknown_value] is a catch-all variant used for valid enum values that have not yet
   been enumerated/or are enumerated incorrectly due to the bindings being out-of-date
   with the latest webidl version.

   If an invalid enum value is constructed using [`Unknown_value] then an exception may be
   thrown when a function is called with [t]. *)

val to_variant : t -> [ enum | `Unknown_value of string ]
val to_variant_exn : t -> enum
val is_gpu_texture_format : Js.js_string Js.t -> bool
val of_variant : [< enum | `Unknown_value of string ] -> t
