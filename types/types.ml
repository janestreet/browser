open! Import

(* TYPEDEFS *)
type blob_part
type buffer_source
type css_numberish
type cssom_string = T of Js.js_string [@@unboxed]
type canvas_image_source
type epoch_time_stamp = T of Js.number [@@unboxed]
type form_data_entry_value
type html_or_svg_script_element
type html_string = T of Js.js_string [@@unboxed]
type headers_init
type image_bitmap_source
type readable_stream_reader
type request_info
type script_string = T of Js.js_string [@@unboxed]
type script_url_string = T of Js.js_string [@@unboxed]
type trusted_type
type xml_http_request_body_init

(* UNION TYPES *)
type add_event_listener_options_or_bool
type css_numeric_value_or_float
type css_numeric_value_or_float_or_string
type css_style_value_or_string
type canvas_filter_or_string
type dom_point_init_or_float
type document_or_element
type document_or_xml_http_request_body_init
type element_creation_options_or_string
type event_or_string
type event_listener_options_or_bool
type html_element_or_int
type html_opt_group_element_or_html_option_element
type keyframe_animation_options_or_float
type media_list_or_string
type node_or_trusted_script_or_string
type readable_stream_or_xml_http_request_body_init
type scroll_into_view_options_or_bool
type timeline_range_offset_or_string
type toggle_popover_options_or_bool
type trusted_html_or_string
type trusted_script_or_string
type string_array_array_or_string_record_or_string
type float_array_or_float
type string_array_or_string
type array_buffer_or_string
type float_or_bool_or_string

(* INTERFACE ATTRIBUTE TYPES *)
type class_name_type
type return_value_type
