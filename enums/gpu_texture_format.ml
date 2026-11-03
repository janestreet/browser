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

let obj_magic_of_string = (Obj.magic : Js.js_string Js.t -> Types.gpu_texture_format)
let obj_magic_to_string = (Obj.magic : Types.gpu_texture_format -> Js.js_string Js.t)
let r8unorm = obj_magic_of_string (Js.string "r8unorm")
let r8snorm = obj_magic_of_string (Js.string "r8snorm")
let r8uint = obj_magic_of_string (Js.string "r8uint")
let r8sint = obj_magic_of_string (Js.string "r8sint")
let r16uint = obj_magic_of_string (Js.string "r16uint")
let r16sint = obj_magic_of_string (Js.string "r16sint")
let r16float = obj_magic_of_string (Js.string "r16float")
let rg8unorm = obj_magic_of_string (Js.string "rg8unorm")
let rg8snorm = obj_magic_of_string (Js.string "rg8snorm")
let rg8uint = obj_magic_of_string (Js.string "rg8uint")
let rg8sint = obj_magic_of_string (Js.string "rg8sint")
let r32uint = obj_magic_of_string (Js.string "r32uint")
let r32sint = obj_magic_of_string (Js.string "r32sint")
let r32float = obj_magic_of_string (Js.string "r32float")
let rg16uint = obj_magic_of_string (Js.string "rg16uint")
let rg16sint = obj_magic_of_string (Js.string "rg16sint")
let rg16float = obj_magic_of_string (Js.string "rg16float")
let rgba8unorm = obj_magic_of_string (Js.string "rgba8unorm")
let rgba8unorm_srgb = obj_magic_of_string (Js.string "rgba8unorm-srgb")
let rgba8snorm = obj_magic_of_string (Js.string "rgba8snorm")
let rgba8uint = obj_magic_of_string (Js.string "rgba8uint")
let rgba8sint = obj_magic_of_string (Js.string "rgba8sint")
let bgra8unorm = obj_magic_of_string (Js.string "bgra8unorm")
let bgra8unorm_srgb = obj_magic_of_string (Js.string "bgra8unorm-srgb")
let rgb9e5ufloat = obj_magic_of_string (Js.string "rgb9e5ufloat")
let rgb10a2uint = obj_magic_of_string (Js.string "rgb10a2uint")
let rgb10a2unorm = obj_magic_of_string (Js.string "rgb10a2unorm")
let rg11b10ufloat = obj_magic_of_string (Js.string "rg11b10ufloat")
let rg32uint = obj_magic_of_string (Js.string "rg32uint")
let rg32sint = obj_magic_of_string (Js.string "rg32sint")
let rg32float = obj_magic_of_string (Js.string "rg32float")
let rgba16uint = obj_magic_of_string (Js.string "rgba16uint")
let rgba16sint = obj_magic_of_string (Js.string "rgba16sint")
let rgba16float = obj_magic_of_string (Js.string "rgba16float")
let rgba32uint = obj_magic_of_string (Js.string "rgba32uint")
let rgba32sint = obj_magic_of_string (Js.string "rgba32sint")
let rgba32float = obj_magic_of_string (Js.string "rgba32float")
let depth32float = obj_magic_of_string (Js.string "depth32float")
let depth32float_stencil8 = obj_magic_of_string (Js.string "depth32float-stencil8")
let depth24plus = obj_magic_of_string (Js.string "depth24plus")
let depth24plus_stencil8 = obj_magic_of_string (Js.string "depth24plus-stencil8")
let depth16unorm = obj_magic_of_string (Js.string "depth16unorm")
let stencil8 = obj_magic_of_string (Js.string "stencil8")
let bc1_rgba_unorm = obj_magic_of_string (Js.string "bc1-rgba-unorm")
let bc1_rgba_unorm_srgb = obj_magic_of_string (Js.string "bc1-rgba-unorm-srgb")
let bc2_rgba_unorm = obj_magic_of_string (Js.string "bc2-rgba-unorm")
let bc2_rgba_unorm_srgb = obj_magic_of_string (Js.string "bc2-rgba-unorm-srgb")
let bc3_rgba_unorm = obj_magic_of_string (Js.string "bc3-rgba-unorm")
let bc3_rgba_unorm_srgb = obj_magic_of_string (Js.string "bc3-rgba-unorm-srgb")
let bc4_r_unorm = obj_magic_of_string (Js.string "bc4-r-unorm")
let bc4_r_snorm = obj_magic_of_string (Js.string "bc4-r-snorm")
let bc5_rg_unorm = obj_magic_of_string (Js.string "bc5-rg-unorm")
let bc5_rg_snorm = obj_magic_of_string (Js.string "bc5-rg-snorm")
let bc6h_rgb_ufloat = obj_magic_of_string (Js.string "bc6h-rgb-ufloat")
let bc6h_rgb_float = obj_magic_of_string (Js.string "bc6h-rgb-float")
let bc7_rgba_unorm = obj_magic_of_string (Js.string "bc7-rgba-unorm")
let bc7_rgba_unorm_srgb = obj_magic_of_string (Js.string "bc7-rgba-unorm-srgb")
let etc2_rgb8unorm = obj_magic_of_string (Js.string "etc2-rgb8unorm")
let etc2_rgb8unorm_srgb = obj_magic_of_string (Js.string "etc2-rgb8unorm-srgb")
let etc2_rgb8a1unorm = obj_magic_of_string (Js.string "etc2-rgb8a1unorm")
let etc2_rgb8a1unorm_srgb = obj_magic_of_string (Js.string "etc2-rgb8a1unorm-srgb")
let etc2_rgba8unorm = obj_magic_of_string (Js.string "etc2-rgba8unorm")
let etc2_rgba8unorm_srgb = obj_magic_of_string (Js.string "etc2-rgba8unorm-srgb")
let eac_r11unorm = obj_magic_of_string (Js.string "eac-r11unorm")
let eac_r11snorm = obj_magic_of_string (Js.string "eac-r11snorm")
let eac_rg11unorm = obj_magic_of_string (Js.string "eac-rg11unorm")
let eac_rg11snorm = obj_magic_of_string (Js.string "eac-rg11snorm")
let astc_4x4_unorm = obj_magic_of_string (Js.string "astc-4x4-unorm")
let astc_4x4_unorm_srgb = obj_magic_of_string (Js.string "astc-4x4-unorm-srgb")
let astc_5x4_unorm = obj_magic_of_string (Js.string "astc-5x4-unorm")
let astc_5x4_unorm_srgb = obj_magic_of_string (Js.string "astc-5x4-unorm-srgb")
let astc_5x5_unorm = obj_magic_of_string (Js.string "astc-5x5-unorm")
let astc_5x5_unorm_srgb = obj_magic_of_string (Js.string "astc-5x5-unorm-srgb")
let astc_6x5_unorm = obj_magic_of_string (Js.string "astc-6x5-unorm")
let astc_6x5_unorm_srgb = obj_magic_of_string (Js.string "astc-6x5-unorm-srgb")
let astc_6x6_unorm = obj_magic_of_string (Js.string "astc-6x6-unorm")
let astc_6x6_unorm_srgb = obj_magic_of_string (Js.string "astc-6x6-unorm-srgb")
let astc_8x5_unorm = obj_magic_of_string (Js.string "astc-8x5-unorm")
let astc_8x5_unorm_srgb = obj_magic_of_string (Js.string "astc-8x5-unorm-srgb")
let astc_8x6_unorm = obj_magic_of_string (Js.string "astc-8x6-unorm")
let astc_8x6_unorm_srgb = obj_magic_of_string (Js.string "astc-8x6-unorm-srgb")
let astc_8x8_unorm = obj_magic_of_string (Js.string "astc-8x8-unorm")
let astc_8x8_unorm_srgb = obj_magic_of_string (Js.string "astc-8x8-unorm-srgb")
let astc_10x5_unorm = obj_magic_of_string (Js.string "astc-10x5-unorm")
let astc_10x5_unorm_srgb = obj_magic_of_string (Js.string "astc-10x5-unorm-srgb")
let astc_10x6_unorm = obj_magic_of_string (Js.string "astc-10x6-unorm")
let astc_10x6_unorm_srgb = obj_magic_of_string (Js.string "astc-10x6-unorm-srgb")
let astc_10x8_unorm = obj_magic_of_string (Js.string "astc-10x8-unorm")
let astc_10x8_unorm_srgb = obj_magic_of_string (Js.string "astc-10x8-unorm-srgb")
let astc_10x10_unorm = obj_magic_of_string (Js.string "astc-10x10-unorm")
let astc_10x10_unorm_srgb = obj_magic_of_string (Js.string "astc-10x10-unorm-srgb")
let astc_12x10_unorm = obj_magic_of_string (Js.string "astc-12x10-unorm")
let astc_12x10_unorm_srgb = obj_magic_of_string (Js.string "astc-12x10-unorm-srgb")
let astc_12x12_unorm = obj_magic_of_string (Js.string "astc-12x12-unorm")
let astc_12x12_unorm_srgb = obj_magic_of_string (Js.string "astc-12x12-unorm-srgb")
let r16unorm = obj_magic_of_string (Js.string "r16unorm")
let rg16unorm = obj_magic_of_string (Js.string "rg16unorm")
let rgba16unorm = obj_magic_of_string (Js.string "rgba16unorm")
let r16snorm = obj_magic_of_string (Js.string "r16snorm")
let rg16snorm = obj_magic_of_string (Js.string "rg16snorm")
let rgba16snorm = obj_magic_of_string (Js.string "rgba16snorm")

let to_variant (t : t) =
  if t == r8unorm
  then `R8unorm
  else if t == r8snorm
  then `R8snorm
  else if t == r8uint
  then `R8uint
  else if t == r8sint
  then `R8sint
  else if t == r16uint
  then `R16uint
  else if t == r16sint
  then `R16sint
  else if t == r16float
  then `R16float
  else if t == rg8unorm
  then `Rg8unorm
  else if t == rg8snorm
  then `Rg8snorm
  else if t == rg8uint
  then `Rg8uint
  else if t == rg8sint
  then `Rg8sint
  else if t == r32uint
  then `R32uint
  else if t == r32sint
  then `R32sint
  else if t == r32float
  then `R32float
  else if t == rg16uint
  then `Rg16uint
  else if t == rg16sint
  then `Rg16sint
  else if t == rg16float
  then `Rg16float
  else if t == rgba8unorm
  then `Rgba8unorm
  else if t == rgba8unorm_srgb
  then `Rgba8unorm_srgb
  else if t == rgba8snorm
  then `Rgba8snorm
  else if t == rgba8uint
  then `Rgba8uint
  else if t == rgba8sint
  then `Rgba8sint
  else if t == bgra8unorm
  then `Bgra8unorm
  else if t == bgra8unorm_srgb
  then `Bgra8unorm_srgb
  else if t == rgb9e5ufloat
  then `Rgb9e5ufloat
  else if t == rgb10a2uint
  then `Rgb10a2uint
  else if t == rgb10a2unorm
  then `Rgb10a2unorm
  else if t == rg11b10ufloat
  then `Rg11b10ufloat
  else if t == rg32uint
  then `Rg32uint
  else if t == rg32sint
  then `Rg32sint
  else if t == rg32float
  then `Rg32float
  else if t == rgba16uint
  then `Rgba16uint
  else if t == rgba16sint
  then `Rgba16sint
  else if t == rgba16float
  then `Rgba16float
  else if t == rgba32uint
  then `Rgba32uint
  else if t == rgba32sint
  then `Rgba32sint
  else if t == rgba32float
  then `Rgba32float
  else if t == depth32float
  then `Depth32float
  else if t == depth32float_stencil8
  then `Depth32float_stencil8
  else if t == depth24plus
  then `Depth24plus
  else if t == depth24plus_stencil8
  then `Depth24plus_stencil8
  else if t == depth16unorm
  then `Depth16unorm
  else if t == stencil8
  then `Stencil8
  else if t == bc1_rgba_unorm
  then `Bc1_rgba_unorm
  else if t == bc1_rgba_unorm_srgb
  then `Bc1_rgba_unorm_srgb
  else if t == bc2_rgba_unorm
  then `Bc2_rgba_unorm
  else if t == bc2_rgba_unorm_srgb
  then `Bc2_rgba_unorm_srgb
  else if t == bc3_rgba_unorm
  then `Bc3_rgba_unorm
  else if t == bc3_rgba_unorm_srgb
  then `Bc3_rgba_unorm_srgb
  else if t == bc4_r_unorm
  then `Bc4_r_unorm
  else if t == bc4_r_snorm
  then `Bc4_r_snorm
  else if t == bc5_rg_unorm
  then `Bc5_rg_unorm
  else if t == bc5_rg_snorm
  then `Bc5_rg_snorm
  else if t == bc6h_rgb_ufloat
  then `Bc6h_rgb_ufloat
  else if t == bc6h_rgb_float
  then `Bc6h_rgb_float
  else if t == bc7_rgba_unorm
  then `Bc7_rgba_unorm
  else if t == bc7_rgba_unorm_srgb
  then `Bc7_rgba_unorm_srgb
  else if t == etc2_rgb8unorm
  then `Etc2_rgb8unorm
  else if t == etc2_rgb8unorm_srgb
  then `Etc2_rgb8unorm_srgb
  else if t == etc2_rgb8a1unorm
  then `Etc2_rgb8a1unorm
  else if t == etc2_rgb8a1unorm_srgb
  then `Etc2_rgb8a1unorm_srgb
  else if t == etc2_rgba8unorm
  then `Etc2_rgba8unorm
  else if t == etc2_rgba8unorm_srgb
  then `Etc2_rgba8unorm_srgb
  else if t == eac_r11unorm
  then `Eac_r11unorm
  else if t == eac_r11snorm
  then `Eac_r11snorm
  else if t == eac_rg11unorm
  then `Eac_rg11unorm
  else if t == eac_rg11snorm
  then `Eac_rg11snorm
  else if t == astc_4x4_unorm
  then `Astc_4x4_unorm
  else if t == astc_4x4_unorm_srgb
  then `Astc_4x4_unorm_srgb
  else if t == astc_5x4_unorm
  then `Astc_5x4_unorm
  else if t == astc_5x4_unorm_srgb
  then `Astc_5x4_unorm_srgb
  else if t == astc_5x5_unorm
  then `Astc_5x5_unorm
  else if t == astc_5x5_unorm_srgb
  then `Astc_5x5_unorm_srgb
  else if t == astc_6x5_unorm
  then `Astc_6x5_unorm
  else if t == astc_6x5_unorm_srgb
  then `Astc_6x5_unorm_srgb
  else if t == astc_6x6_unorm
  then `Astc_6x6_unorm
  else if t == astc_6x6_unorm_srgb
  then `Astc_6x6_unorm_srgb
  else if t == astc_8x5_unorm
  then `Astc_8x5_unorm
  else if t == astc_8x5_unorm_srgb
  then `Astc_8x5_unorm_srgb
  else if t == astc_8x6_unorm
  then `Astc_8x6_unorm
  else if t == astc_8x6_unorm_srgb
  then `Astc_8x6_unorm_srgb
  else if t == astc_8x8_unorm
  then `Astc_8x8_unorm
  else if t == astc_8x8_unorm_srgb
  then `Astc_8x8_unorm_srgb
  else if t == astc_10x5_unorm
  then `Astc_10x5_unorm
  else if t == astc_10x5_unorm_srgb
  then `Astc_10x5_unorm_srgb
  else if t == astc_10x6_unorm
  then `Astc_10x6_unorm
  else if t == astc_10x6_unorm_srgb
  then `Astc_10x6_unorm_srgb
  else if t == astc_10x8_unorm
  then `Astc_10x8_unorm
  else if t == astc_10x8_unorm_srgb
  then `Astc_10x8_unorm_srgb
  else if t == astc_10x10_unorm
  then `Astc_10x10_unorm
  else if t == astc_10x10_unorm_srgb
  then `Astc_10x10_unorm_srgb
  else if t == astc_12x10_unorm
  then `Astc_12x10_unorm
  else if t == astc_12x10_unorm_srgb
  then `Astc_12x10_unorm_srgb
  else if t == astc_12x12_unorm
  then `Astc_12x12_unorm
  else if t == astc_12x12_unorm_srgb
  then `Astc_12x12_unorm_srgb
  else if t == r16unorm
  then `R16unorm
  else if t == rg16unorm
  then `Rg16unorm
  else if t == rgba16unorm
  then `Rgba16unorm
  else if t == r16snorm
  then `R16snorm
  else if t == rg16snorm
  then `Rg16snorm
  else if t == rgba16snorm
  then `Rgba16snorm
  else `Unknown_value (Js.to_string (obj_magic_to_string t))
;;

let to_variant_exn (t : t) =
  if t == r8unorm
  then `R8unorm
  else if t == r8snorm
  then `R8snorm
  else if t == r8uint
  then `R8uint
  else if t == r8sint
  then `R8sint
  else if t == r16uint
  then `R16uint
  else if t == r16sint
  then `R16sint
  else if t == r16float
  then `R16float
  else if t == rg8unorm
  then `Rg8unorm
  else if t == rg8snorm
  then `Rg8snorm
  else if t == rg8uint
  then `Rg8uint
  else if t == rg8sint
  then `Rg8sint
  else if t == r32uint
  then `R32uint
  else if t == r32sint
  then `R32sint
  else if t == r32float
  then `R32float
  else if t == rg16uint
  then `Rg16uint
  else if t == rg16sint
  then `Rg16sint
  else if t == rg16float
  then `Rg16float
  else if t == rgba8unorm
  then `Rgba8unorm
  else if t == rgba8unorm_srgb
  then `Rgba8unorm_srgb
  else if t == rgba8snorm
  then `Rgba8snorm
  else if t == rgba8uint
  then `Rgba8uint
  else if t == rgba8sint
  then `Rgba8sint
  else if t == bgra8unorm
  then `Bgra8unorm
  else if t == bgra8unorm_srgb
  then `Bgra8unorm_srgb
  else if t == rgb9e5ufloat
  then `Rgb9e5ufloat
  else if t == rgb10a2uint
  then `Rgb10a2uint
  else if t == rgb10a2unorm
  then `Rgb10a2unorm
  else if t == rg11b10ufloat
  then `Rg11b10ufloat
  else if t == rg32uint
  then `Rg32uint
  else if t == rg32sint
  then `Rg32sint
  else if t == rg32float
  then `Rg32float
  else if t == rgba16uint
  then `Rgba16uint
  else if t == rgba16sint
  then `Rgba16sint
  else if t == rgba16float
  then `Rgba16float
  else if t == rgba32uint
  then `Rgba32uint
  else if t == rgba32sint
  then `Rgba32sint
  else if t == rgba32float
  then `Rgba32float
  else if t == depth32float
  then `Depth32float
  else if t == depth32float_stencil8
  then `Depth32float_stencil8
  else if t == depth24plus
  then `Depth24plus
  else if t == depth24plus_stencil8
  then `Depth24plus_stencil8
  else if t == depth16unorm
  then `Depth16unorm
  else if t == stencil8
  then `Stencil8
  else if t == bc1_rgba_unorm
  then `Bc1_rgba_unorm
  else if t == bc1_rgba_unorm_srgb
  then `Bc1_rgba_unorm_srgb
  else if t == bc2_rgba_unorm
  then `Bc2_rgba_unorm
  else if t == bc2_rgba_unorm_srgb
  then `Bc2_rgba_unorm_srgb
  else if t == bc3_rgba_unorm
  then `Bc3_rgba_unorm
  else if t == bc3_rgba_unorm_srgb
  then `Bc3_rgba_unorm_srgb
  else if t == bc4_r_unorm
  then `Bc4_r_unorm
  else if t == bc4_r_snorm
  then `Bc4_r_snorm
  else if t == bc5_rg_unorm
  then `Bc5_rg_unorm
  else if t == bc5_rg_snorm
  then `Bc5_rg_snorm
  else if t == bc6h_rgb_ufloat
  then `Bc6h_rgb_ufloat
  else if t == bc6h_rgb_float
  then `Bc6h_rgb_float
  else if t == bc7_rgba_unorm
  then `Bc7_rgba_unorm
  else if t == bc7_rgba_unorm_srgb
  then `Bc7_rgba_unorm_srgb
  else if t == etc2_rgb8unorm
  then `Etc2_rgb8unorm
  else if t == etc2_rgb8unorm_srgb
  then `Etc2_rgb8unorm_srgb
  else if t == etc2_rgb8a1unorm
  then `Etc2_rgb8a1unorm
  else if t == etc2_rgb8a1unorm_srgb
  then `Etc2_rgb8a1unorm_srgb
  else if t == etc2_rgba8unorm
  then `Etc2_rgba8unorm
  else if t == etc2_rgba8unorm_srgb
  then `Etc2_rgba8unorm_srgb
  else if t == eac_r11unorm
  then `Eac_r11unorm
  else if t == eac_r11snorm
  then `Eac_r11snorm
  else if t == eac_rg11unorm
  then `Eac_rg11unorm
  else if t == eac_rg11snorm
  then `Eac_rg11snorm
  else if t == astc_4x4_unorm
  then `Astc_4x4_unorm
  else if t == astc_4x4_unorm_srgb
  then `Astc_4x4_unorm_srgb
  else if t == astc_5x4_unorm
  then `Astc_5x4_unorm
  else if t == astc_5x4_unorm_srgb
  then `Astc_5x4_unorm_srgb
  else if t == astc_5x5_unorm
  then `Astc_5x5_unorm
  else if t == astc_5x5_unorm_srgb
  then `Astc_5x5_unorm_srgb
  else if t == astc_6x5_unorm
  then `Astc_6x5_unorm
  else if t == astc_6x5_unorm_srgb
  then `Astc_6x5_unorm_srgb
  else if t == astc_6x6_unorm
  then `Astc_6x6_unorm
  else if t == astc_6x6_unorm_srgb
  then `Astc_6x6_unorm_srgb
  else if t == astc_8x5_unorm
  then `Astc_8x5_unorm
  else if t == astc_8x5_unorm_srgb
  then `Astc_8x5_unorm_srgb
  else if t == astc_8x6_unorm
  then `Astc_8x6_unorm
  else if t == astc_8x6_unorm_srgb
  then `Astc_8x6_unorm_srgb
  else if t == astc_8x8_unorm
  then `Astc_8x8_unorm
  else if t == astc_8x8_unorm_srgb
  then `Astc_8x8_unorm_srgb
  else if t == astc_10x5_unorm
  then `Astc_10x5_unorm
  else if t == astc_10x5_unorm_srgb
  then `Astc_10x5_unorm_srgb
  else if t == astc_10x6_unorm
  then `Astc_10x6_unorm
  else if t == astc_10x6_unorm_srgb
  then `Astc_10x6_unorm_srgb
  else if t == astc_10x8_unorm
  then `Astc_10x8_unorm
  else if t == astc_10x8_unorm_srgb
  then `Astc_10x8_unorm_srgb
  else if t == astc_10x10_unorm
  then `Astc_10x10_unorm
  else if t == astc_10x10_unorm_srgb
  then `Astc_10x10_unorm_srgb
  else if t == astc_12x10_unorm
  then `Astc_12x10_unorm
  else if t == astc_12x10_unorm_srgb
  then `Astc_12x10_unorm_srgb
  else if t == astc_12x12_unorm
  then `Astc_12x12_unorm
  else if t == astc_12x12_unorm_srgb
  then `Astc_12x12_unorm_srgb
  else if t == r16unorm
  then `R16unorm
  else if t == rg16unorm
  then `Rg16unorm
  else if t == rgba16unorm
  then `Rgba16unorm
  else if t == r16snorm
  then `R16snorm
  else if t == rg16snorm
  then `Rg16snorm
  else if t == rgba16snorm
  then `Rgba16snorm
  else failwith ("unknown enum value: " ^ Js.to_string (obj_magic_to_string t))
;;

let is_gpu_texture_format (t : Js.js_string Js.t) =
  t == obj_magic_to_string r8unorm
  || t == obj_magic_to_string r8snorm
  || t == obj_magic_to_string r8uint
  || t == obj_magic_to_string r8sint
  || t == obj_magic_to_string r16uint
  || t == obj_magic_to_string r16sint
  || t == obj_magic_to_string r16float
  || t == obj_magic_to_string rg8unorm
  || t == obj_magic_to_string rg8snorm
  || t == obj_magic_to_string rg8uint
  || t == obj_magic_to_string rg8sint
  || t == obj_magic_to_string r32uint
  || t == obj_magic_to_string r32sint
  || t == obj_magic_to_string r32float
  || t == obj_magic_to_string rg16uint
  || t == obj_magic_to_string rg16sint
  || t == obj_magic_to_string rg16float
  || t == obj_magic_to_string rgba8unorm
  || t == obj_magic_to_string rgba8unorm_srgb
  || t == obj_magic_to_string rgba8snorm
  || t == obj_magic_to_string rgba8uint
  || t == obj_magic_to_string rgba8sint
  || t == obj_magic_to_string bgra8unorm
  || t == obj_magic_to_string bgra8unorm_srgb
  || t == obj_magic_to_string rgb9e5ufloat
  || t == obj_magic_to_string rgb10a2uint
  || t == obj_magic_to_string rgb10a2unorm
  || t == obj_magic_to_string rg11b10ufloat
  || t == obj_magic_to_string rg32uint
  || t == obj_magic_to_string rg32sint
  || t == obj_magic_to_string rg32float
  || t == obj_magic_to_string rgba16uint
  || t == obj_magic_to_string rgba16sint
  || t == obj_magic_to_string rgba16float
  || t == obj_magic_to_string rgba32uint
  || t == obj_magic_to_string rgba32sint
  || t == obj_magic_to_string rgba32float
  || t == obj_magic_to_string depth32float
  || t == obj_magic_to_string depth32float_stencil8
  || t == obj_magic_to_string depth24plus
  || t == obj_magic_to_string depth24plus_stencil8
  || t == obj_magic_to_string depth16unorm
  || t == obj_magic_to_string stencil8
  || t == obj_magic_to_string bc1_rgba_unorm
  || t == obj_magic_to_string bc1_rgba_unorm_srgb
  || t == obj_magic_to_string bc2_rgba_unorm
  || t == obj_magic_to_string bc2_rgba_unorm_srgb
  || t == obj_magic_to_string bc3_rgba_unorm
  || t == obj_magic_to_string bc3_rgba_unorm_srgb
  || t == obj_magic_to_string bc4_r_unorm
  || t == obj_magic_to_string bc4_r_snorm
  || t == obj_magic_to_string bc5_rg_unorm
  || t == obj_magic_to_string bc5_rg_snorm
  || t == obj_magic_to_string bc6h_rgb_ufloat
  || t == obj_magic_to_string bc6h_rgb_float
  || t == obj_magic_to_string bc7_rgba_unorm
  || t == obj_magic_to_string bc7_rgba_unorm_srgb
  || t == obj_magic_to_string etc2_rgb8unorm
  || t == obj_magic_to_string etc2_rgb8unorm_srgb
  || t == obj_magic_to_string etc2_rgb8a1unorm
  || t == obj_magic_to_string etc2_rgb8a1unorm_srgb
  || t == obj_magic_to_string etc2_rgba8unorm
  || t == obj_magic_to_string etc2_rgba8unorm_srgb
  || t == obj_magic_to_string eac_r11unorm
  || t == obj_magic_to_string eac_r11snorm
  || t == obj_magic_to_string eac_rg11unorm
  || t == obj_magic_to_string eac_rg11snorm
  || t == obj_magic_to_string astc_4x4_unorm
  || t == obj_magic_to_string astc_4x4_unorm_srgb
  || t == obj_magic_to_string astc_5x4_unorm
  || t == obj_magic_to_string astc_5x4_unorm_srgb
  || t == obj_magic_to_string astc_5x5_unorm
  || t == obj_magic_to_string astc_5x5_unorm_srgb
  || t == obj_magic_to_string astc_6x5_unorm
  || t == obj_magic_to_string astc_6x5_unorm_srgb
  || t == obj_magic_to_string astc_6x6_unorm
  || t == obj_magic_to_string astc_6x6_unorm_srgb
  || t == obj_magic_to_string astc_8x5_unorm
  || t == obj_magic_to_string astc_8x5_unorm_srgb
  || t == obj_magic_to_string astc_8x6_unorm
  || t == obj_magic_to_string astc_8x6_unorm_srgb
  || t == obj_magic_to_string astc_8x8_unorm
  || t == obj_magic_to_string astc_8x8_unorm_srgb
  || t == obj_magic_to_string astc_10x5_unorm
  || t == obj_magic_to_string astc_10x5_unorm_srgb
  || t == obj_magic_to_string astc_10x6_unorm
  || t == obj_magic_to_string astc_10x6_unorm_srgb
  || t == obj_magic_to_string astc_10x8_unorm
  || t == obj_magic_to_string astc_10x8_unorm_srgb
  || t == obj_magic_to_string astc_10x10_unorm
  || t == obj_magic_to_string astc_10x10_unorm_srgb
  || t == obj_magic_to_string astc_12x10_unorm
  || t == obj_magic_to_string astc_12x10_unorm_srgb
  || t == obj_magic_to_string astc_12x12_unorm
  || t == obj_magic_to_string astc_12x12_unorm_srgb
  || t == obj_magic_to_string r16unorm
  || t == obj_magic_to_string rg16unorm
  || t == obj_magic_to_string rgba16unorm
  || t == obj_magic_to_string r16snorm
  || t == obj_magic_to_string rg16snorm
  || t == obj_magic_to_string rgba16snorm
;;

let of_variant = function
  | `R8unorm -> r8unorm
  | `R8snorm -> r8snorm
  | `R8uint -> r8uint
  | `R8sint -> r8sint
  | `R16uint -> r16uint
  | `R16sint -> r16sint
  | `R16float -> r16float
  | `Rg8unorm -> rg8unorm
  | `Rg8snorm -> rg8snorm
  | `Rg8uint -> rg8uint
  | `Rg8sint -> rg8sint
  | `R32uint -> r32uint
  | `R32sint -> r32sint
  | `R32float -> r32float
  | `Rg16uint -> rg16uint
  | `Rg16sint -> rg16sint
  | `Rg16float -> rg16float
  | `Rgba8unorm -> rgba8unorm
  | `Rgba8unorm_srgb -> rgba8unorm_srgb
  | `Rgba8snorm -> rgba8snorm
  | `Rgba8uint -> rgba8uint
  | `Rgba8sint -> rgba8sint
  | `Bgra8unorm -> bgra8unorm
  | `Bgra8unorm_srgb -> bgra8unorm_srgb
  | `Rgb9e5ufloat -> rgb9e5ufloat
  | `Rgb10a2uint -> rgb10a2uint
  | `Rgb10a2unorm -> rgb10a2unorm
  | `Rg11b10ufloat -> rg11b10ufloat
  | `Rg32uint -> rg32uint
  | `Rg32sint -> rg32sint
  | `Rg32float -> rg32float
  | `Rgba16uint -> rgba16uint
  | `Rgba16sint -> rgba16sint
  | `Rgba16float -> rgba16float
  | `Rgba32uint -> rgba32uint
  | `Rgba32sint -> rgba32sint
  | `Rgba32float -> rgba32float
  | `Depth32float -> depth32float
  | `Depth32float_stencil8 -> depth32float_stencil8
  | `Depth24plus -> depth24plus
  | `Depth24plus_stencil8 -> depth24plus_stencil8
  | `Depth16unorm -> depth16unorm
  | `Stencil8 -> stencil8
  | `Bc1_rgba_unorm -> bc1_rgba_unorm
  | `Bc1_rgba_unorm_srgb -> bc1_rgba_unorm_srgb
  | `Bc2_rgba_unorm -> bc2_rgba_unorm
  | `Bc2_rgba_unorm_srgb -> bc2_rgba_unorm_srgb
  | `Bc3_rgba_unorm -> bc3_rgba_unorm
  | `Bc3_rgba_unorm_srgb -> bc3_rgba_unorm_srgb
  | `Bc4_r_unorm -> bc4_r_unorm
  | `Bc4_r_snorm -> bc4_r_snorm
  | `Bc5_rg_unorm -> bc5_rg_unorm
  | `Bc5_rg_snorm -> bc5_rg_snorm
  | `Bc6h_rgb_ufloat -> bc6h_rgb_ufloat
  | `Bc6h_rgb_float -> bc6h_rgb_float
  | `Bc7_rgba_unorm -> bc7_rgba_unorm
  | `Bc7_rgba_unorm_srgb -> bc7_rgba_unorm_srgb
  | `Etc2_rgb8unorm -> etc2_rgb8unorm
  | `Etc2_rgb8unorm_srgb -> etc2_rgb8unorm_srgb
  | `Etc2_rgb8a1unorm -> etc2_rgb8a1unorm
  | `Etc2_rgb8a1unorm_srgb -> etc2_rgb8a1unorm_srgb
  | `Etc2_rgba8unorm -> etc2_rgba8unorm
  | `Etc2_rgba8unorm_srgb -> etc2_rgba8unorm_srgb
  | `Eac_r11unorm -> eac_r11unorm
  | `Eac_r11snorm -> eac_r11snorm
  | `Eac_rg11unorm -> eac_rg11unorm
  | `Eac_rg11snorm -> eac_rg11snorm
  | `Astc_4x4_unorm -> astc_4x4_unorm
  | `Astc_4x4_unorm_srgb -> astc_4x4_unorm_srgb
  | `Astc_5x4_unorm -> astc_5x4_unorm
  | `Astc_5x4_unorm_srgb -> astc_5x4_unorm_srgb
  | `Astc_5x5_unorm -> astc_5x5_unorm
  | `Astc_5x5_unorm_srgb -> astc_5x5_unorm_srgb
  | `Astc_6x5_unorm -> astc_6x5_unorm
  | `Astc_6x5_unorm_srgb -> astc_6x5_unorm_srgb
  | `Astc_6x6_unorm -> astc_6x6_unorm
  | `Astc_6x6_unorm_srgb -> astc_6x6_unorm_srgb
  | `Astc_8x5_unorm -> astc_8x5_unorm
  | `Astc_8x5_unorm_srgb -> astc_8x5_unorm_srgb
  | `Astc_8x6_unorm -> astc_8x6_unorm
  | `Astc_8x6_unorm_srgb -> astc_8x6_unorm_srgb
  | `Astc_8x8_unorm -> astc_8x8_unorm
  | `Astc_8x8_unorm_srgb -> astc_8x8_unorm_srgb
  | `Astc_10x5_unorm -> astc_10x5_unorm
  | `Astc_10x5_unorm_srgb -> astc_10x5_unorm_srgb
  | `Astc_10x6_unorm -> astc_10x6_unorm
  | `Astc_10x6_unorm_srgb -> astc_10x6_unorm_srgb
  | `Astc_10x8_unorm -> astc_10x8_unorm
  | `Astc_10x8_unorm_srgb -> astc_10x8_unorm_srgb
  | `Astc_10x10_unorm -> astc_10x10_unorm
  | `Astc_10x10_unorm_srgb -> astc_10x10_unorm_srgb
  | `Astc_12x10_unorm -> astc_12x10_unorm
  | `Astc_12x10_unorm_srgb -> astc_12x10_unorm_srgb
  | `Astc_12x12_unorm -> astc_12x12_unorm
  | `Astc_12x12_unorm_srgb -> astc_12x12_unorm_srgb
  | `R16unorm -> r16unorm
  | `Rg16unorm -> rg16unorm
  | `Rgba16unorm -> rgba16unorm
  | `R16snorm -> r16snorm
  | `Rg16snorm -> rg16snorm
  | `Rgba16snorm -> rgba16snorm
  | `Unknown_value value -> obj_magic_of_string (Js.string value)
;;
