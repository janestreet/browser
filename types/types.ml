open! Import

(* TYPEDEFS *)
type allow_shared_buffer_source
type binary_data
type blob_part
type buffer_source
type cose_algorithm_identifier = T of Js.number [@@unboxed]
type css_numberish
type cssom_string = T of Js.js_string [@@unboxed]
type canvas_image_source
type constrain_boolean
type constrain_dom_string
type constrain_double
type constrain_long
type constrain_point2d
type epoch_time_stamp = T of Js.number [@@unboxed]
type float32_list
type form_data_entry_value
type gl_bitfield = T of Js.number [@@unboxed]
type gl_boolean = T of bool [@@unboxed]
type gl_clampf = T of Js.number [@@unboxed]
type gl_enum = T of Js.number [@@unboxed]
type gl_float = T of Js.number [@@unboxed]
type gl_int = T of Js.number [@@unboxed]
type gl_int64 = T of Js.number [@@unboxed]
type gl_intptr = T of Js.number [@@unboxed]
type gl_sizei = T of Js.number [@@unboxed]
type gl_sizeiptr = T of Js.number [@@unboxed]
type gl_uint = T of Js.number [@@unboxed]
type gl_uint64 = T of Js.number [@@unboxed]
type gpu_binding_resource
type gpu_buffer_dynamic_offset = T of Js.number [@@unboxed]
type gpu_buffer_usage_flags = T of Js.number [@@unboxed]
type gpu_color
type gpu_color_write_flags = T of Js.number [@@unboxed]
type gpu_depth_bias = T of Js.number [@@unboxed]
type gpu_extent3d
type gpu_flags_constant = T of Js.number [@@unboxed]
type gpu_image_copy_external_image_source
type gpu_index32 = T of Js.number [@@unboxed]
type gpu_integer_coordinate = T of Js.number [@@unboxed]
type gpu_origin2d
type gpu_origin3d
type gpu_pipeline_constant_value = T of Js.number [@@unboxed]
type gpu_sample_mask = T of Js.number [@@unboxed]
type gpu_shader_stage_flags = T of Js.number [@@unboxed]
type gpu_signed_offset32 = T of Js.number [@@unboxed]
type gpu_size32 = T of Js.number [@@unboxed]
type gpu_size64 = T of Js.number [@@unboxed]
type gpu_stencil_value = T of Js.number [@@unboxed]
type gpu_texture_usage_flags = T of Js.number [@@unboxed]
type html_or_svg_script_element
type html_string = T of Js.js_string [@@unboxed]
type headers_init
type image_bitmap_source
type image_data_array
type int32_list
type media_provider
type media_stream_error
type offscreen_rendering_context
type password_credential_init
type readable_stream_reader
type rendering_context
type request_info
type script_string = T of Js.js_string [@@unboxed]
type script_url_string = T of Js.js_string [@@unboxed]
type trusted_type
type uint32_list
type xml_http_request_body_init

(* UNION TYPES *)
type add_event_listener_options_or_bool
type binary_data_or_cssom_string
type blob_or_string
type css_numeric_value_or_float
type css_numeric_value_or_float_or_string
type css_style_value_or_string
type canvas_filter_or_string
type constrain_double_or_bool
type dom_point_init_or_float
type document_or_element
type document_or_xml_http_request_body_init
type element_or_radio_node_list
type element_creation_options_or_string
type event_or_string
type event_listener_options_or_bool
type gpu_auto_layout_mode_or_gpu_pipeline_layout
type html_canvas_element_or_offscreen_canvas
type html_element_or_int
type html_opt_group_element_or_html_option_element
type html_video_element_or_video_frame
type identity_provider_field_or_string
type keyframe_animation_options_or_float
type media_list_or_string
type media_stream_track_audio_stats_or_media_stream_track_video_stats
type media_track_constraints_or_bool
type node_or_trusted_script_or_string
type path2d_or_string
type performance_measure_options_or_string
type readable_stream_or_xml_http_request_body_init
type scroll_into_view_options_or_bool
type timeline_range_offset_or_string
type toggle_popover_options_or_bool
type trusted_html_or_string
type trusted_script_or_string
type trusted_script_url_or_string
type string_array_array_or_string_record_or_string
type float_array_or_float
type float_array_or_string
type string_array_or_string
type array_buffer_or_string
type float_or_bool_or_string
type float_or_string

(* INTERFACE ATTRIBUTE TYPES *)
type class_name_type
type return_value_type
