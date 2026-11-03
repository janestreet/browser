open! Import
open! Enums
open! Types
open! Interfaces

(* TYPEDEFS *)
external array_buffer_view_to_allow_shared_buffer_source
  :  Js_of_ocaml.Typed_array.arrayBufferView Js.t
  -> allow_shared_buffer_source Js.t
  = "%identity"

external array_buffer_to_allow_shared_buffer_source
  :  Js_of_ocaml.Typed_array.arrayBuffer Js.t
  -> allow_shared_buffer_source Js.t
  = "%identity"

external array_buffer_view_to_binary_data
  :  Js_of_ocaml.Typed_array.arrayBufferView Js.t
  -> binary_data Js.t
  = "%identity"

external array_buffer_to_binary_data
  :  Js_of_ocaml.Typed_array.arrayBuffer Js.t
  -> binary_data Js.t
  = "%identity"

external blob_to_blob_part : blob Js.t -> blob_part Js.t = "%identity"

external array_buffer_view_to_blob_part
  :  Js_of_ocaml.Typed_array.arrayBufferView Js.t
  -> blob_part Js.t
  = "%identity"

external array_buffer_to_blob_part
  :  Js_of_ocaml.Typed_array.arrayBuffer Js.t
  -> blob_part Js.t
  = "%identity"

external string_to_blob_part : Js.js_string Js.t -> blob_part Js.t = "%identity"

external array_buffer_view_to_buffer_source
  :  Js_of_ocaml.Typed_array.arrayBufferView Js.t
  -> buffer_source Js.t
  = "%identity"

external array_buffer_to_buffer_source
  :  Js_of_ocaml.Typed_array.arrayBuffer Js.t
  -> buffer_source Js.t
  = "%identity"

external int_to_cose_algorithm_identifier
  :  Js.number Js.t
  -> cose_algorithm_identifier Js.t
  = "%identity"

external cose_algorithm_identifier_to_int
  :  cose_algorithm_identifier Js.t
  -> Js.number Js.t
  = "%identity"

external css_numeric_value_to_css_numberish
  :  css_numeric_value Js.t
  -> css_numberish Js.t
  = "%identity"

external float_to_css_numberish : Js.number Js.t -> css_numberish Js.t = "%identity"
external string_to_cssom_string : Js.js_string Js.t -> cssom_string Js.t = "%identity"
external cssom_string_to_string : cssom_string Js.t -> Js.js_string Js.t = "%identity"

external css_image_value_to_canvas_image_source
  :  css_image_value Js.t
  -> canvas_image_source Js.t
  = "%identity"

external html_canvas_element_to_canvas_image_source
  :  html_canvas_element Js.t
  -> canvas_image_source Js.t
  = "%identity"

external html_image_element_to_canvas_image_source
  :  html_image_element Js.t
  -> canvas_image_source Js.t
  = "%identity"

external html_video_element_to_canvas_image_source
  :  html_video_element Js.t
  -> canvas_image_source Js.t
  = "%identity"

external image_bitmap_to_canvas_image_source
  :  image_bitmap Js.t
  -> canvas_image_source Js.t
  = "%identity"

external offscreen_canvas_to_canvas_image_source
  :  offscreen_canvas Js.t
  -> canvas_image_source Js.t
  = "%identity"

external svg_image_element_to_canvas_image_source
  :  svg_image_element Js.t
  -> canvas_image_source Js.t
  = "%identity"

external video_frame_to_canvas_image_source
  :  video_frame Js.t
  -> canvas_image_source Js.t
  = "%identity"

external constrain_boolean_parameters_to_constrain_boolean
  :  constrain_boolean_parameters Js.t
  -> constrain_boolean Js.t
  = "%identity"

external bool_to_constrain_boolean : bool Js.t -> constrain_boolean Js.t = "%identity"

external constrain_dom_string_parameters_to_constrain_dom_string
  :  constrain_dom_string_parameters Js.t
  -> constrain_dom_string Js.t
  = "%identity"

external string_array_to_constrain_dom_string
  :  Js.js_string Js.t Js.js_array Js.t
  -> constrain_dom_string Js.t
  = "%identity"

external string_to_constrain_dom_string
  :  Js.js_string Js.t
  -> constrain_dom_string Js.t
  = "%identity"

external constrain_double_range_to_constrain_double
  :  constrain_double_range Js.t
  -> constrain_double Js.t
  = "%identity"

external float_to_constrain_double : Js.number Js.t -> constrain_double Js.t = "%identity"

external constrain_long_range_to_constrain_long
  :  constrain_long_range Js.t
  -> constrain_long Js.t
  = "%identity"

external int_to_constrain_long : Js.number Js.t -> constrain_long Js.t = "%identity"

external constrain_point2d_parameters_to_constrain_point2d
  :  constrain_point2d_parameters Js.t
  -> constrain_point2d Js.t
  = "%identity"

external point2d_array_to_constrain_point2d
  :  point2d Js.t Js.js_array Js.t
  -> constrain_point2d Js.t
  = "%identity"

external int64_to_epoch_time_stamp : Js.number Js.t -> epoch_time_stamp Js.t = "%identity"
external epoch_time_stamp_to_int64 : epoch_time_stamp Js.t -> Js.number Js.t = "%identity"

external gl_float_array_to_float32_list
  :  gl_float Js.t Js.js_array Js.t
  -> float32_list Js.t
  = "%identity"

external float32_array_to_float32_list
  :  Js_of_ocaml.Typed_array.float32Array Js.t
  -> float32_list Js.t
  = "%identity"

external file_to_form_data_entry_value
  :  file Js.t
  -> form_data_entry_value Js.t
  = "%identity"

external string_to_form_data_entry_value
  :  Js.js_string Js.t
  -> form_data_entry_value Js.t
  = "%identity"

external int_to_gl_bitfield : Js.number Js.t -> gl_bitfield Js.t = "%identity"
external gl_bitfield_to_int : gl_bitfield Js.t -> Js.number Js.t = "%identity"
external bool_to_gl_boolean : bool Js.t -> gl_boolean Js.t = "%identity"
external gl_boolean_to_bool : gl_boolean Js.t -> bool Js.t = "%identity"
external float_to_gl_clampf : Js.number Js.t -> gl_clampf Js.t = "%identity"
external gl_clampf_to_float : gl_clampf Js.t -> Js.number Js.t = "%identity"
external int_to_gl_enum : Js.number Js.t -> gl_enum Js.t = "%identity"
external gl_enum_to_int : gl_enum Js.t -> Js.number Js.t = "%identity"
external float_to_gl_float : Js.number Js.t -> gl_float Js.t = "%identity"
external gl_float_to_float : gl_float Js.t -> Js.number Js.t = "%identity"
external int_to_gl_int : Js.number Js.t -> gl_int Js.t = "%identity"
external gl_int_to_int : gl_int Js.t -> Js.number Js.t = "%identity"
external int64_to_gl_int64 : Js.number Js.t -> gl_int64 Js.t = "%identity"
external gl_int64_to_int64 : gl_int64 Js.t -> Js.number Js.t = "%identity"
external int64_to_gl_intptr : Js.number Js.t -> gl_intptr Js.t = "%identity"
external gl_intptr_to_int64 : gl_intptr Js.t -> Js.number Js.t = "%identity"
external int_to_gl_sizei : Js.number Js.t -> gl_sizei Js.t = "%identity"
external gl_sizei_to_int : gl_sizei Js.t -> Js.number Js.t = "%identity"
external int64_to_gl_sizeiptr : Js.number Js.t -> gl_sizeiptr Js.t = "%identity"
external gl_sizeiptr_to_int64 : gl_sizeiptr Js.t -> Js.number Js.t = "%identity"
external int_to_gl_uint : Js.number Js.t -> gl_uint Js.t = "%identity"
external gl_uint_to_int : gl_uint Js.t -> Js.number Js.t = "%identity"
external int64_to_gl_uint64 : Js.number Js.t -> gl_uint64 Js.t = "%identity"
external gl_uint64_to_int64 : gl_uint64 Js.t -> Js.number Js.t = "%identity"

external gpu_buffer_binding_to_gpu_binding_resource
  :  gpu_buffer_binding Js.t
  -> gpu_binding_resource Js.t
  = "%identity"

external gpu_external_texture_to_gpu_binding_resource
  :  (* unresolved GPUExternalTexture *) untranslated
  -> gpu_binding_resource Js.t
  = "%identity"

external gpu_sampler_to_gpu_binding_resource
  :  (* unresolved GPUSampler *) untranslated
  -> gpu_binding_resource Js.t
  = "%identity"

external gpu_texture_view_to_gpu_binding_resource
  :  gpu_texture_view Js.t
  -> gpu_binding_resource Js.t
  = "%identity"

external int_to_gpu_buffer_dynamic_offset
  :  Js.number Js.t
  -> gpu_buffer_dynamic_offset Js.t
  = "%identity"

external gpu_buffer_dynamic_offset_to_int
  :  gpu_buffer_dynamic_offset Js.t
  -> Js.number Js.t
  = "%identity"

external int_to_gpu_buffer_usage_flags
  :  Js.number Js.t
  -> gpu_buffer_usage_flags Js.t
  = "%identity"

external gpu_buffer_usage_flags_to_int
  :  gpu_buffer_usage_flags Js.t
  -> Js.number Js.t
  = "%identity"

external gpu_color_dict_to_gpu_color : gpu_color_dict Js.t -> gpu_color Js.t = "%identity"

external float_array_to_gpu_color
  :  Js.number Js.t Js.js_array Js.t
  -> gpu_color Js.t
  = "%identity"

external int_to_gpu_color_write_flags
  :  Js.number Js.t
  -> gpu_color_write_flags Js.t
  = "%identity"

external gpu_color_write_flags_to_int
  :  gpu_color_write_flags Js.t
  -> Js.number Js.t
  = "%identity"

external int_to_gpu_depth_bias : Js.number Js.t -> gpu_depth_bias Js.t = "%identity"
external gpu_depth_bias_to_int : gpu_depth_bias Js.t -> Js.number Js.t = "%identity"

external gpu_extent3d_dict_to_gpu_extent3d
  :  gpu_extent3d_dict Js.t
  -> gpu_extent3d Js.t
  = "%identity"

external gpu_integer_coordinate_array_to_gpu_extent3d
  :  gpu_integer_coordinate Js.t Js.js_array Js.t
  -> gpu_extent3d Js.t
  = "%identity"

external int_to_gpu_flags_constant
  :  Js.number Js.t
  -> gpu_flags_constant Js.t
  = "%identity"

external gpu_flags_constant_to_int
  :  gpu_flags_constant Js.t
  -> Js.number Js.t
  = "%identity"

external html_canvas_element_to_gpu_image_copy_external_image_source
  :  html_canvas_element Js.t
  -> gpu_image_copy_external_image_source Js.t
  = "%identity"

external html_image_element_to_gpu_image_copy_external_image_source
  :  html_image_element Js.t
  -> gpu_image_copy_external_image_source Js.t
  = "%identity"

external html_video_element_to_gpu_image_copy_external_image_source
  :  html_video_element Js.t
  -> gpu_image_copy_external_image_source Js.t
  = "%identity"

external image_bitmap_to_gpu_image_copy_external_image_source
  :  image_bitmap Js.t
  -> gpu_image_copy_external_image_source Js.t
  = "%identity"

external image_data_to_gpu_image_copy_external_image_source
  :  image_data Js.t
  -> gpu_image_copy_external_image_source Js.t
  = "%identity"

external offscreen_canvas_to_gpu_image_copy_external_image_source
  :  offscreen_canvas Js.t
  -> gpu_image_copy_external_image_source Js.t
  = "%identity"

external video_frame_to_gpu_image_copy_external_image_source
  :  video_frame Js.t
  -> gpu_image_copy_external_image_source Js.t
  = "%identity"

external int_to_gpu_index32 : Js.number Js.t -> gpu_index32 Js.t = "%identity"
external gpu_index32_to_int : gpu_index32 Js.t -> Js.number Js.t = "%identity"

external int_to_gpu_integer_coordinate
  :  Js.number Js.t
  -> gpu_integer_coordinate Js.t
  = "%identity"

external gpu_integer_coordinate_to_int
  :  gpu_integer_coordinate Js.t
  -> Js.number Js.t
  = "%identity"

external gpu_origin2d_dict_to_gpu_origin2d
  :  gpu_origin2d_dict Js.t
  -> gpu_origin2d Js.t
  = "%identity"

external gpu_integer_coordinate_array_to_gpu_origin2d
  :  gpu_integer_coordinate Js.t Js.js_array Js.t
  -> gpu_origin2d Js.t
  = "%identity"

external gpu_origin3d_dict_to_gpu_origin3d
  :  gpu_origin3d_dict Js.t
  -> gpu_origin3d Js.t
  = "%identity"

external gpu_integer_coordinate_array_to_gpu_origin3d
  :  gpu_integer_coordinate Js.t Js.js_array Js.t
  -> gpu_origin3d Js.t
  = "%identity"

external float_to_gpu_pipeline_constant_value
  :  Js.number Js.t
  -> gpu_pipeline_constant_value Js.t
  = "%identity"

external gpu_pipeline_constant_value_to_float
  :  gpu_pipeline_constant_value Js.t
  -> Js.number Js.t
  = "%identity"

external int_to_gpu_sample_mask : Js.number Js.t -> gpu_sample_mask Js.t = "%identity"
external gpu_sample_mask_to_int : gpu_sample_mask Js.t -> Js.number Js.t = "%identity"

external int_to_gpu_shader_stage_flags
  :  Js.number Js.t
  -> gpu_shader_stage_flags Js.t
  = "%identity"

external gpu_shader_stage_flags_to_int
  :  gpu_shader_stage_flags Js.t
  -> Js.number Js.t
  = "%identity"

external int_to_gpu_signed_offset32
  :  Js.number Js.t
  -> gpu_signed_offset32 Js.t
  = "%identity"

external gpu_signed_offset32_to_int
  :  gpu_signed_offset32 Js.t
  -> Js.number Js.t
  = "%identity"

external int_to_gpu_size32 : Js.number Js.t -> gpu_size32 Js.t = "%identity"
external gpu_size32_to_int : gpu_size32 Js.t -> Js.number Js.t = "%identity"
external int64_to_gpu_size64 : Js.number Js.t -> gpu_size64 Js.t = "%identity"
external gpu_size64_to_int64 : gpu_size64 Js.t -> Js.number Js.t = "%identity"
external int_to_gpu_stencil_value : Js.number Js.t -> gpu_stencil_value Js.t = "%identity"
external gpu_stencil_value_to_int : gpu_stencil_value Js.t -> Js.number Js.t = "%identity"

external int_to_gpu_texture_usage_flags
  :  Js.number Js.t
  -> gpu_texture_usage_flags Js.t
  = "%identity"

external gpu_texture_usage_flags_to_int
  :  gpu_texture_usage_flags Js.t
  -> Js.number Js.t
  = "%identity"

external html_script_element_to_html_or_svg_script_element
  :  (* unresolved HTMLScriptElement *) untranslated
  -> html_or_svg_script_element Js.t
  = "%identity"

external svg_script_element_to_html_or_svg_script_element
  :  (* unresolved SVGScriptElement *) untranslated
  -> html_or_svg_script_element Js.t
  = "%identity"

(* There is intentionally no [string_to_html_string]: [html_string] is a Trusted Types
   string ([StringContext] in the IDL), and creating one from an arbitrary string is
   potentially unsafe. *)
external html_string_to_string : html_string Js.t -> Js.js_string Js.t = "%identity"

external string_array_array_to_headers_init
  :  Js.js_string Js.t Js.js_array Js.t Js.js_array Js.t
  -> headers_init Js.t
  = "%identity"

external string_record_to_headers_init
  :  Js.js_string Js.t record Js.t
  -> headers_init Js.t
  = "%identity"

external blob_to_image_bitmap_source : blob Js.t -> image_bitmap_source Js.t = "%identity"

external html_canvas_element_to_image_bitmap_source
  :  html_canvas_element Js.t
  -> image_bitmap_source Js.t
  = "%identity"

external html_image_element_to_image_bitmap_source
  :  html_image_element Js.t
  -> image_bitmap_source Js.t
  = "%identity"

external html_video_element_to_image_bitmap_source
  :  html_video_element Js.t
  -> image_bitmap_source Js.t
  = "%identity"

external image_bitmap_to_image_bitmap_source
  :  image_bitmap Js.t
  -> image_bitmap_source Js.t
  = "%identity"

external image_data_to_image_bitmap_source
  :  image_data Js.t
  -> image_bitmap_source Js.t
  = "%identity"

external offscreen_canvas_to_image_bitmap_source
  :  offscreen_canvas Js.t
  -> image_bitmap_source Js.t
  = "%identity"

external svg_image_element_to_image_bitmap_source
  :  svg_image_element Js.t
  -> image_bitmap_source Js.t
  = "%identity"

external video_frame_to_image_bitmap_source
  :  video_frame Js.t
  -> image_bitmap_source Js.t
  = "%identity"

external uint16_array_to_image_data_array
  :  Js_of_ocaml.Typed_array.uint16Array Js.t
  -> image_data_array Js.t
  = "%identity"

external uint8_clamped_array_to_image_data_array
  :  Browser_js_types.Uint8_clamped_array.t Js.t
  -> image_data_array Js.t
  = "%identity"

external float32_array_to_image_data_array
  :  Js_of_ocaml.Typed_array.float32Array Js.t
  -> image_data_array Js.t
  = "%identity"

external gl_int_array_to_int32_list
  :  gl_int Js.t Js.js_array Js.t
  -> int32_list Js.t
  = "%identity"

external int32_array_to_int32_list
  :  Js_of_ocaml.Typed_array.int32Array Js.t
  -> int32_list Js.t
  = "%identity"

external media_source_handle_to_media_provider
  :  media_source_handle Js.t
  -> media_provider Js.t
  = "%identity"

external media_stream_to_media_provider
  :  media_stream Js.t
  -> media_provider Js.t
  = "%identity"

external dom_exception_to_media_stream_error
  :  dom_exception Js.t
  -> media_stream_error Js.t
  = "%identity"

external overconstrained_error_to_media_stream_error
  :  (* unresolved OverconstrainedError *) untranslated
  -> media_stream_error Js.t
  = "%identity"

external gpu_canvas_context_to_offscreen_rendering_context
  :  gpu_canvas_context Js.t
  -> offscreen_rendering_context Js.t
  = "%identity"

external image_bitmap_rendering_context_to_offscreen_rendering_context
  :  image_bitmap_rendering_context Js.t
  -> offscreen_rendering_context Js.t
  = "%identity"

external offscreen_canvas_rendering_context2d_to_offscreen_rendering_context
  :  offscreen_canvas_rendering_context2d Js.t
  -> offscreen_rendering_context Js.t
  = "%identity"

external web_gl2_rendering_context_to_offscreen_rendering_context
  :  web_gl2_rendering_context Js.t
  -> offscreen_rendering_context Js.t
  = "%identity"

external web_gl_rendering_context_to_offscreen_rendering_context
  :  web_gl_rendering_context Js.t
  -> offscreen_rendering_context Js.t
  = "%identity"

external html_form_element_to_password_credential_init
  :  html_form_element Js.t
  -> password_credential_init Js.t
  = "%identity"

external password_credential_data_to_password_credential_init
  :  password_credential_data Js.t
  -> password_credential_init Js.t
  = "%identity"

external readable_stream_byob_reader_to_readable_stream_reader
  :  (* unresolved ReadableStreamBYOBReader *) untranslated
  -> readable_stream_reader Js.t
  = "%identity"

external readable_stream_default_reader_to_readable_stream_reader
  :  (* unresolved ReadableStreamDefaultReader *) untranslated
  -> readable_stream_reader Js.t
  = "%identity"

external canvas_rendering_context2d_to_rendering_context
  :  canvas_rendering_context2d Js.t
  -> rendering_context Js.t
  = "%identity"

external gpu_canvas_context_to_rendering_context
  :  gpu_canvas_context Js.t
  -> rendering_context Js.t
  = "%identity"

external image_bitmap_rendering_context_to_rendering_context
  :  image_bitmap_rendering_context Js.t
  -> rendering_context Js.t
  = "%identity"

external web_gl2_rendering_context_to_rendering_context
  :  web_gl2_rendering_context Js.t
  -> rendering_context Js.t
  = "%identity"

external web_gl_rendering_context_to_rendering_context
  :  web_gl_rendering_context Js.t
  -> rendering_context Js.t
  = "%identity"

external request_to_request_info : request Js.t -> request_info Js.t = "%identity"
external string_to_request_info : Js.js_string Js.t -> request_info Js.t = "%identity"

(* There is intentionally no [string_to_script_string]: [script_string] is a Trusted Types
   string ([StringContext] in the IDL), and creating one from an arbitrary string is
   potentially unsafe. *)
external script_string_to_string : script_string Js.t -> Js.js_string Js.t = "%identity"

(* There is intentionally no [string_to_script_url_string]: [script_url_string] is a
   Trusted Types string ([StringContext] in the IDL), and creating one from an arbitrary
   string is potentially unsafe. *)
external script_url_string_to_string
  :  script_url_string Js.t
  -> Js.js_string Js.t
  = "%identity"

external trusted_html_to_trusted_type
  :  (* unresolved TrustedHTML *) untranslated
  -> trusted_type Js.t
  = "%identity"

external trusted_script_to_trusted_type
  :  trusted_script Js.t
  -> trusted_type Js.t
  = "%identity"

external trusted_script_url_to_trusted_type
  :  (* unresolved TrustedScriptURL *) untranslated
  -> trusted_type Js.t
  = "%identity"

external gl_uint_array_to_uint32_list
  :  gl_uint Js.t Js.js_array Js.t
  -> uint32_list Js.t
  = "%identity"

external uint32_array_to_uint32_list
  :  Js_of_ocaml.Typed_array.uint32Array Js.t
  -> uint32_list Js.t
  = "%identity"

external blob_to_xml_http_request_body_init
  :  blob Js.t
  -> xml_http_request_body_init Js.t
  = "%identity"

external buffer_source_to_xml_http_request_body_init
  :  buffer_source Js.t
  -> xml_http_request_body_init Js.t
  = "%identity"

external form_data_to_xml_http_request_body_init
  :  form_data Js.t
  -> xml_http_request_body_init Js.t
  = "%identity"

external url_search_params_to_xml_http_request_body_init
  :  url_search_params Js.t
  -> xml_http_request_body_init Js.t
  = "%identity"

external string_to_xml_http_request_body_init
  :  Js.js_string Js.t
  -> xml_http_request_body_init Js.t
  = "%identity"

(* UNION TYPES *)
external add_event_listener_options_to_add_event_listener_options_or_bool
  :  add_event_listener_options Js.t
  -> add_event_listener_options_or_bool Js.t
  = "%identity"

external bool_to_add_event_listener_options_or_bool
  :  bool Js.t
  -> add_event_listener_options_or_bool Js.t
  = "%identity"

external binary_data_to_binary_data_or_cssom_string
  :  binary_data Js.t
  -> binary_data_or_cssom_string Js.t
  = "%identity"

external cssom_string_to_binary_data_or_cssom_string
  :  cssom_string Js.t
  -> binary_data_or_cssom_string Js.t
  = "%identity"

external blob_to_blob_or_string : blob Js.t -> blob_or_string Js.t = "%identity"
external string_to_blob_or_string : Js.js_string Js.t -> blob_or_string Js.t = "%identity"

external css_numeric_value_to_css_numeric_value_or_float
  :  css_numeric_value Js.t
  -> css_numeric_value_or_float Js.t
  = "%identity"

external float_to_css_numeric_value_or_float
  :  Js.number Js.t
  -> css_numeric_value_or_float Js.t
  = "%identity"

external css_numeric_value_to_css_numeric_value_or_float_or_string
  :  css_numeric_value Js.t
  -> css_numeric_value_or_float_or_string Js.t
  = "%identity"

external float_to_css_numeric_value_or_float_or_string
  :  Js.number Js.t
  -> css_numeric_value_or_float_or_string Js.t
  = "%identity"

external string_to_css_numeric_value_or_float_or_string
  :  Js.js_string Js.t
  -> css_numeric_value_or_float_or_string Js.t
  = "%identity"

external css_style_value_to_css_style_value_or_string
  :  css_style_value Js.t
  -> css_style_value_or_string Js.t
  = "%identity"

external string_to_css_style_value_or_string
  :  Js.js_string Js.t
  -> css_style_value_or_string Js.t
  = "%identity"

external canvas_filter_to_canvas_filter_or_string
  :  (* unresolved CanvasFilter *) untranslated
  -> canvas_filter_or_string Js.t
  = "%identity"

external string_to_canvas_filter_or_string
  :  Js.js_string Js.t
  -> canvas_filter_or_string Js.t
  = "%identity"

external constrain_double_to_constrain_double_or_bool
  :  constrain_double Js.t
  -> constrain_double_or_bool Js.t
  = "%identity"

external bool_to_constrain_double_or_bool
  :  bool Js.t
  -> constrain_double_or_bool Js.t
  = "%identity"

external dom_point_init_to_dom_point_init_or_float
  :  dom_point_init Js.t
  -> dom_point_init_or_float Js.t
  = "%identity"

external float_to_dom_point_init_or_float
  :  Js.number Js.t
  -> dom_point_init_or_float Js.t
  = "%identity"

external document_to_document_or_element
  :  document Js.t
  -> document_or_element Js.t
  = "%identity"

external element_to_document_or_element
  :  element Js.t
  -> document_or_element Js.t
  = "%identity"

external document_to_document_or_xml_http_request_body_init
  :  document Js.t
  -> document_or_xml_http_request_body_init Js.t
  = "%identity"

external xml_http_request_body_init_to_document_or_xml_http_request_body_init
  :  xml_http_request_body_init Js.t
  -> document_or_xml_http_request_body_init Js.t
  = "%identity"

external element_to_element_or_radio_node_list
  :  element Js.t
  -> element_or_radio_node_list Js.t
  = "%identity"

external radio_node_list_to_element_or_radio_node_list
  :  radio_node_list Js.t
  -> element_or_radio_node_list Js.t
  = "%identity"

external element_creation_options_to_element_creation_options_or_string
  :  element_creation_options Js.t
  -> element_creation_options_or_string Js.t
  = "%identity"

external string_to_element_creation_options_or_string
  :  Js.js_string Js.t
  -> element_creation_options_or_string Js.t
  = "%identity"

external event_to_event_or_string : event Js.t -> event_or_string Js.t = "%identity"

external string_to_event_or_string
  :  Js.js_string Js.t
  -> event_or_string Js.t
  = "%identity"

external event_listener_options_to_event_listener_options_or_bool
  :  event_listener_options Js.t
  -> event_listener_options_or_bool Js.t
  = "%identity"

external bool_to_event_listener_options_or_bool
  :  bool Js.t
  -> event_listener_options_or_bool Js.t
  = "%identity"

external gpu_auto_layout_mode_to_gpu_auto_layout_mode_or_gpu_pipeline_layout
  :  gpu_auto_layout_mode
  -> gpu_auto_layout_mode_or_gpu_pipeline_layout Js.t
  = "%identity"

external gpu_pipeline_layout_to_gpu_auto_layout_mode_or_gpu_pipeline_layout
  :  (* unresolved GPUPipelineLayout *) untranslated
  -> gpu_auto_layout_mode_or_gpu_pipeline_layout Js.t
  = "%identity"

external html_canvas_element_to_html_canvas_element_or_offscreen_canvas
  :  html_canvas_element Js.t
  -> html_canvas_element_or_offscreen_canvas Js.t
  = "%identity"

external offscreen_canvas_to_html_canvas_element_or_offscreen_canvas
  :  offscreen_canvas Js.t
  -> html_canvas_element_or_offscreen_canvas Js.t
  = "%identity"

external html_element_to_html_element_or_int
  :  html_element Js.t
  -> html_element_or_int Js.t
  = "%identity"

external int_to_html_element_or_int
  :  Js.number Js.t
  -> html_element_or_int Js.t
  = "%identity"

external html_opt_group_element_to_html_opt_group_element_or_html_option_element
  :  (* unresolved HTMLOptGroupElement *) untranslated
  -> html_opt_group_element_or_html_option_element Js.t
  = "%identity"

external html_option_element_to_html_opt_group_element_or_html_option_element
  :  (* unresolved HTMLOptionElement *) untranslated
  -> html_opt_group_element_or_html_option_element Js.t
  = "%identity"

external html_video_element_to_html_video_element_or_video_frame
  :  html_video_element Js.t
  -> html_video_element_or_video_frame Js.t
  = "%identity"

external video_frame_to_html_video_element_or_video_frame
  :  video_frame Js.t
  -> html_video_element_or_video_frame Js.t
  = "%identity"

external identity_provider_field_to_identity_provider_field_or_string
  :  identity_provider_field Js.t
  -> identity_provider_field_or_string Js.t
  = "%identity"

external string_to_identity_provider_field_or_string
  :  Js.js_string Js.t
  -> identity_provider_field_or_string Js.t
  = "%identity"

external keyframe_animation_options_to_keyframe_animation_options_or_float
  :  keyframe_animation_options Js.t
  -> keyframe_animation_options_or_float Js.t
  = "%identity"

external float_to_keyframe_animation_options_or_float
  :  Js.number Js.t
  -> keyframe_animation_options_or_float Js.t
  = "%identity"

external media_list_to_media_list_or_string
  :  (* unresolved MediaList *) untranslated
  -> media_list_or_string Js.t
  = "%identity"

external string_to_media_list_or_string
  :  Js.js_string Js.t
  -> media_list_or_string Js.t
  = "%identity"

external media_stream_track_audio_stats_to_media_stream_track_audio_stats_or_media_stream_track_video_stats
  :  (* unresolved MediaStreamTrackAudioStats *) untranslated
  -> media_stream_track_audio_stats_or_media_stream_track_video_stats Js.t
  = "%identity"

external media_stream_track_video_stats_to_media_stream_track_audio_stats_or_media_stream_track_video_stats
  :  (* unresolved MediaStreamTrackVideoStats *) untranslated
  -> media_stream_track_audio_stats_or_media_stream_track_video_stats Js.t
  = "%identity"

external media_track_constraints_to_media_track_constraints_or_bool
  :  media_track_constraints Js.t
  -> media_track_constraints_or_bool Js.t
  = "%identity"

external bool_to_media_track_constraints_or_bool
  :  bool Js.t
  -> media_track_constraints_or_bool Js.t
  = "%identity"

external node_to_node_or_trusted_script_or_string
  :  node Js.t
  -> node_or_trusted_script_or_string Js.t
  = "%identity"

external trusted_script_to_node_or_trusted_script_or_string
  :  trusted_script Js.t
  -> node_or_trusted_script_or_string Js.t
  = "%identity"

external string_to_node_or_trusted_script_or_string
  :  Js.js_string Js.t
  -> node_or_trusted_script_or_string Js.t
  = "%identity"

external path2d_to_path2d_or_string : path2d Js.t -> path2d_or_string Js.t = "%identity"

external string_to_path2d_or_string
  :  Js.js_string Js.t
  -> path2d_or_string Js.t
  = "%identity"

external performance_measure_options_to_performance_measure_options_or_string
  :  performance_measure_options Js.t
  -> performance_measure_options_or_string Js.t
  = "%identity"

external string_to_performance_measure_options_or_string
  :  Js.js_string Js.t
  -> performance_measure_options_or_string Js.t
  = "%identity"

external readable_stream_to_readable_stream_or_xml_http_request_body_init
  :  readable_stream Js.t
  -> readable_stream_or_xml_http_request_body_init Js.t
  = "%identity"

external xml_http_request_body_init_to_readable_stream_or_xml_http_request_body_init
  :  xml_http_request_body_init Js.t
  -> readable_stream_or_xml_http_request_body_init Js.t
  = "%identity"

external scroll_into_view_options_to_scroll_into_view_options_or_bool
  :  scroll_into_view_options Js.t
  -> scroll_into_view_options_or_bool Js.t
  = "%identity"

external bool_to_scroll_into_view_options_or_bool
  :  bool Js.t
  -> scroll_into_view_options_or_bool Js.t
  = "%identity"

external timeline_range_offset_to_timeline_range_offset_or_string
  :  timeline_range_offset Js.t
  -> timeline_range_offset_or_string Js.t
  = "%identity"

external string_to_timeline_range_offset_or_string
  :  Js.js_string Js.t
  -> timeline_range_offset_or_string Js.t
  = "%identity"

external toggle_popover_options_to_toggle_popover_options_or_bool
  :  toggle_popover_options Js.t
  -> toggle_popover_options_or_bool Js.t
  = "%identity"

external bool_to_toggle_popover_options_or_bool
  :  bool Js.t
  -> toggle_popover_options_or_bool Js.t
  = "%identity"

external trusted_html_to_trusted_html_or_string
  :  (* unresolved TrustedHTML *) untranslated
  -> trusted_html_or_string Js.t
  = "%identity"

external string_to_trusted_html_or_string
  :  Js.js_string Js.t
  -> trusted_html_or_string Js.t
  = "%identity"

external trusted_script_to_trusted_script_or_string
  :  trusted_script Js.t
  -> trusted_script_or_string Js.t
  = "%identity"

external string_to_trusted_script_or_string
  :  Js.js_string Js.t
  -> trusted_script_or_string Js.t
  = "%identity"

external trusted_script_url_to_trusted_script_url_or_string
  :  (* unresolved TrustedScriptURL *) untranslated
  -> trusted_script_url_or_string Js.t
  = "%identity"

external string_to_trusted_script_url_or_string
  :  Js.js_string Js.t
  -> trusted_script_url_or_string Js.t
  = "%identity"

external string_array_array_to_string_array_array_or_string_record_or_string
  :  Js.js_string Js.t Js.js_array Js.t Js.js_array Js.t
  -> string_array_array_or_string_record_or_string Js.t
  = "%identity"

external string_record_to_string_array_array_or_string_record_or_string
  :  Js.js_string Js.t record Js.t
  -> string_array_array_or_string_record_or_string Js.t
  = "%identity"

external string_to_string_array_array_or_string_record_or_string
  :  Js.js_string Js.t
  -> string_array_array_or_string_record_or_string Js.t
  = "%identity"

external float_array_to_float_array_or_float
  :  Js.number Js.t Js.js_array Js.t
  -> float_array_or_float Js.t
  = "%identity"

external float_to_float_array_or_float
  :  Js.number Js.t
  -> float_array_or_float Js.t
  = "%identity"

external float_array_to_float_array_or_string
  :  Js.number Js.t Js.js_array Js.t
  -> float_array_or_string Js.t
  = "%identity"

external string_to_float_array_or_string
  :  Js.js_string Js.t
  -> float_array_or_string Js.t
  = "%identity"

external string_array_to_string_array_or_string
  :  Js.js_string Js.t Js.js_array Js.t
  -> string_array_or_string Js.t
  = "%identity"

external string_to_string_array_or_string
  :  Js.js_string Js.t
  -> string_array_or_string Js.t
  = "%identity"

external array_buffer_to_array_buffer_or_string
  :  Js_of_ocaml.Typed_array.arrayBuffer Js.t
  -> array_buffer_or_string Js.t
  = "%identity"

external string_to_array_buffer_or_string
  :  Js.js_string Js.t
  -> array_buffer_or_string Js.t
  = "%identity"

external float_to_float_or_bool_or_string
  :  Js.number Js.t
  -> float_or_bool_or_string Js.t
  = "%identity"

external bool_to_float_or_bool_or_string
  :  bool Js.t
  -> float_or_bool_or_string Js.t
  = "%identity"

external string_to_float_or_bool_or_string
  :  Js.js_string Js.t
  -> float_or_bool_or_string Js.t
  = "%identity"

external float_to_float_or_string : Js.number Js.t -> float_or_string Js.t = "%identity"

external string_to_float_or_string
  :  Js.js_string Js.t
  -> float_or_string Js.t
  = "%identity"

(* INTERFACE ATTRIBUTE TYPES *)
external svg_animated_string_to_class_name_type
  :  svg_animated_string Js.t
  -> class_name_type Js.t
  = "%identity"

external string_to_class_name_type
  :  Js.js_string Js.t
  -> class_name_type Js.t
  = "%identity"

external bool_to_return_value_type : bool Js.t -> return_value_type Js.t = "%identity"

external string_to_return_value_type
  :  Js.js_string Js.t
  -> return_value_type Js.t
  = "%identity"
