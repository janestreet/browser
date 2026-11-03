open! Import
open! Enums
open! Types
open! Interfaces

(* see {!Browser.Abort_signal} for module definition *)
class type abort_signal = object
  method _any :
    signals:Interfaces.abort_signal Js.t Js.js_array Js.t
    -> Interfaces.abort_signal Js.t Js.meth

  method abort : reason:Js.Unsafe.any Js.optdef -> Interfaces.abort_signal Js.t Js.meth
  method timeout : milliseconds:Js.number Js.t -> Interfaces.abort_signal Js.t Js.meth
end

(* see {!Browser.Animation_event} for module definition *)
class type animation_event = object end

(* see {!Browser.Blob} for module definition *)
class type blob = object end

(* see {!Browser.Css_numeric_value} for module definition *)
class type css_numeric_value = object
  method parse : cssText:cssom_string Js.t -> Interfaces.css_numeric_value Js.t Js.meth
end

(* see {!Browser.Css_rule} for module definition *)
class type css_rule = object
  method _CHARSET_RULE_ : Js.number Js.t Js.readonly_prop
  method _COUNTER_STYLE_RULE_ : Js.number Js.t Js.readonly_prop
  method _FONT_FACE_RULE_ : Js.number Js.t Js.readonly_prop
  method _FONT_FEATURE_VALUES_RULE_ : Js.number Js.t Js.readonly_prop
  method _IMPORT_RULE_ : Js.number Js.t Js.readonly_prop
  method _KEYFRAMES_RULE_ : Js.number Js.t Js.readonly_prop
  method _KEYFRAME_RULE_ : Js.number Js.t Js.readonly_prop
  method _MEDIA_RULE_ : Js.number Js.t Js.readonly_prop
  method _NAMESPACE_RULE_ : Js.number Js.t Js.readonly_prop
  method _PAGE_RULE_ : Js.number Js.t Js.readonly_prop
  method _STYLE_RULE_ : Js.number Js.t Js.readonly_prop
  method _SUPPORTS_RULE_ : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Css_style_sheet} for module definition *)
class type css_style_sheet = object end

(* see {!Browser.Css_style_value} for module definition *)
class type css_style_value = object
  method parse :
    property:cssom_string Js.t
    -> cssText:cssom_string Js.t
    -> Interfaces.css_style_value Js.t Js.meth

  method parseAll :
    property:cssom_string Js.t
    -> cssText:cssom_string Js.t
    -> Interfaces.css_style_value Js.t Js.js_array Js.t Js.meth
end

(* see {!Browser.Css_unit_value} for module definition *)
class type css_unit_value = object end

(* see {!Browser.Clipboard_event} for module definition *)
class type clipboard_event = object end

(* see {!Browser.Clipboard_item} for module definition *)
class type clipboard_item = object
  method supports : type_:Js.js_string Js.t -> bool Js.t Js.meth
end

(* see {!Browser.Close_event} for module definition *)
class type close_event = object end

(* see {!Browser.Comment} for module definition *)
class type comment = object end

(* see {!Browser.Composition_event} for module definition *)
class type composition_event = object end

(* see {!Browser.Compression_stream} for module definition *)
class type compression_stream = object end

(* see {!Browser.Browser_capture_media_stream_track} for module definition *)
class type crop_target = object
  method fromElement :
    element:Interfaces.element Js.t -> Interfaces.crop_target Js.t js_promise Js.t Js.meth
end

(* see {!Browser.Custom_event} for module definition *)
class type custom_event = object end

(* see {!Browser.Dom_exception} for module definition *)
class type dom_exception = object
  method _ABORT_ERR_ : Js.number Js.t Js.readonly_prop
  method _DATA_CLONE_ERR_ : Js.number Js.t Js.readonly_prop
  method _DOMSTRING_SIZE_ERR_ : Js.number Js.t Js.readonly_prop
  method _HIERARCHY_REQUEST_ERR_ : Js.number Js.t Js.readonly_prop
  method _INDEX_SIZE_ERR_ : Js.number Js.t Js.readonly_prop
  method _INUSE_ATTRIBUTE_ERR_ : Js.number Js.t Js.readonly_prop
  method _INVALID_ACCESS_ERR_ : Js.number Js.t Js.readonly_prop
  method _INVALID_CHARACTER_ERR_ : Js.number Js.t Js.readonly_prop
  method _INVALID_MODIFICATION_ERR_ : Js.number Js.t Js.readonly_prop
  method _INVALID_NODE_TYPE_ERR_ : Js.number Js.t Js.readonly_prop
  method _INVALID_STATE_ERR_ : Js.number Js.t Js.readonly_prop
  method _NAMESPACE_ERR_ : Js.number Js.t Js.readonly_prop
  method _NETWORK_ERR_ : Js.number Js.t Js.readonly_prop
  method _NOT_FOUND_ERR_ : Js.number Js.t Js.readonly_prop
  method _NOT_SUPPORTED_ERR_ : Js.number Js.t Js.readonly_prop
  method _NO_DATA_ALLOWED_ERR_ : Js.number Js.t Js.readonly_prop
  method _NO_MODIFICATION_ALLOWED_ERR_ : Js.number Js.t Js.readonly_prop
  method _QUOTA_EXCEEDED_ERR_ : Js.number Js.t Js.readonly_prop
  method _SECURITY_ERR_ : Js.number Js.t Js.readonly_prop
  method _SYNTAX_ERR_ : Js.number Js.t Js.readonly_prop
  method _TIMEOUT_ERR_ : Js.number Js.t Js.readonly_prop
  method _TYPE_MISMATCH_ERR_ : Js.number Js.t Js.readonly_prop
  method _URL_MISMATCH_ERR_ : Js.number Js.t Js.readonly_prop
  method _VALIDATION_ERR_ : Js.number Js.t Js.readonly_prop
  method _WRONG_DOCUMENT_ERR_ : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Dom_matrix} for module definition *)
class type dom_matrix = object
  method fromFloat32Array :
    array32:Js_of_ocaml.Typed_array.float32Array Js.t
    -> Interfaces.dom_matrix Js.t Js.meth

  method fromFloat64Array :
    array64:Js_of_ocaml.Typed_array.float64Array Js.t
    -> Interfaces.dom_matrix Js.t Js.meth

  method fromMatrix :
    other:Interfaces.dom_matrix_init Js.t Js.optdef -> Interfaces.dom_matrix Js.t Js.meth
end

(* see {!Browser.Dom_matrix_read_only} for module definition *)
class type dom_matrix_read_only = object
  method fromFloat32Array :
    array32:Js_of_ocaml.Typed_array.float32Array Js.t
    -> Interfaces.dom_matrix_read_only Js.t Js.meth

  method fromFloat64Array :
    array64:Js_of_ocaml.Typed_array.float64Array Js.t
    -> Interfaces.dom_matrix_read_only Js.t Js.meth

  method fromMatrix :
    other:Interfaces.dom_matrix_init Js.t Js.optdef
    -> Interfaces.dom_matrix_read_only Js.t Js.meth
end

(* see {!Browser.Dom_rect} for module definition *)
class type dom_rect = object
  method fromRect :
    other:Interfaces.dom_rect_init Js.t Js.optdef -> Interfaces.dom_rect Js.t Js.meth
end

(* see {!Browser.Dom_rect_read_only} for module definition *)
class type dom_rect_read_only = object
  method fromRect :
    other:Interfaces.dom_rect_init Js.t Js.optdef
    -> Interfaces.dom_rect_read_only Js.t Js.meth
end

(* see {!Browser.Data_transfer} for module definition *)
class type data_transfer = object end

(* see {!Browser.Decompression_stream} for module definition *)
class type decompression_stream = object end

(* see {!Browser.Dedicated_worker_global_scope} for module definition *)
class type dedicated_worker_global_scope = object
  method _PERSISTENT : Js.number Js.t Js.readonly_prop
  method _TEMPORARY : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Document} for module definition *)
class type document = object
  method parseHTMLUnsafe : html:html_string Js.t -> Interfaces.document Js.t Js.meth
end

(* see {!Browser.Document_fragment} for module definition *)
class type document_fragment = object end

(* see {!Browser.Drag_event} for module definition *)
class type drag_event = object end

(* see {!Browser.Error_event} for module definition *)
class type error_event = object end

(* see {!Browser.Event} for module definition *)
class type event = object
  method _AT_TARGET_ : Js.number Js.t Js.readonly_prop
  method _BUBBLING_PHASE_ : Js.number Js.t Js.readonly_prop
  method _CAPTURING_PHASE_ : Js.number Js.t Js.readonly_prop
  method _NONE : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Event_target} for module definition *)
class type event_target = object end

(* see {!Browser.File} for module definition *)
class type file = object end

(* see {!Browser.File_reader} for module definition *)
class type file_reader = object
  method _DONE : Js.number Js.t Js.readonly_prop
  method _EMPTY : Js.number Js.t Js.readonly_prop
  method _LOADING : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Focus_event} for module definition *)
class type focus_event = object end

(* see {!Browser.Font_face} for module definition *)
class type font_face = object end

(* see {!Browser.Form_data} for module definition *)
class type form_data = object end

(* see {!Browser.Window} for module definition *)
class type geolocation_position_error = object
  method _PERMISSION_DENIED_ : Js.number Js.t Js.readonly_prop
  method _POSITION_UNAVAILABLE_ : Js.number Js.t Js.readonly_prop
  method _TIMEOUT : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Html_image_element} for module definition *)
class type html_image_element = object end

(* see {!Browser.Html_media_element} for module definition *)
class type html_media_element = object
  method _HAVE_CURRENT_DATA_ : Js.number Js.t Js.readonly_prop
  method _HAVE_ENOUGH_DATA_ : Js.number Js.t Js.readonly_prop
  method _HAVE_FUTURE_DATA_ : Js.number Js.t Js.readonly_prop
  method _HAVE_METADATA_ : Js.number Js.t Js.readonly_prop
  method _HAVE_NOTHING_ : Js.number Js.t Js.readonly_prop
  method _NETWORK_EMPTY_ : Js.number Js.t Js.readonly_prop
  method _NETWORK_IDLE_ : Js.number Js.t Js.readonly_prop
  method _NETWORK_LOADING_ : Js.number Js.t Js.readonly_prop
  method _NETWORK_NO_SOURCE_ : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Hash_change_event} for module definition *)
class type hash_change_event = object end

(* see {!Browser.Headers} for module definition *)
class type headers = object end

(* see {!Browser.Highlight} for module definition *)
class type highlight = object end

(* see {!Browser.Image_data} for module definition *)
class type image_data = object end

(* see {!Browser.Input_device_capabilities} for module definition *)
class type input_device_capabilities = object end

(* see {!Browser.Input_event} for module definition *)
class type input_event = object end

(* see {!Browser.Intersection_observer} for module definition *)
class type intersection_observer = object end

(* see {!Browser.Keyboard_event} for module definition *)
class type keyboard_event = object
  method _DOM_KEY_LOCATION_LEFT_ : Js.number Js.t Js.readonly_prop
  method _DOM_KEY_LOCATION_NUMPAD_ : Js.number Js.t Js.readonly_prop
  method _DOM_KEY_LOCATION_RIGHT_ : Js.number Js.t Js.readonly_prop
  method _DOM_KEY_LOCATION_STANDARD_ : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Media_source} for module definition *)
class type media_source = object
  method canConstructInDedicatedWorker : bool Js.t Js.readonly_prop
  method isTypeSupported : type_:Js.js_string Js.t -> bool Js.t Js.meth
end

(* see {!Browser.Media_stream} for module definition *)
class type media_stream = object end

(* see {!Browser.Message_event} for module definition *)
class type message_event = object end

(* see {!Browser.Mouse_event} for module definition *)
class type mouse_event = object end

(* see {!Browser.Mutation_observer} for module definition *)
class type mutation_observer = object end

(* see {!Browser.Navigate_event} for module definition *)
class type navigate_event = object end

(* see {!Browser.Node} for module definition *)
class type node = object
  method _ATTRIBUTE_NODE_ : Js.number Js.t Js.readonly_prop
  method _CDATA_SECTION_NODE_ : Js.number Js.t Js.readonly_prop
  method _COMMENT_NODE_ : Js.number Js.t Js.readonly_prop
  method _DOCUMENT_FRAGMENT_NODE_ : Js.number Js.t Js.readonly_prop
  method _DOCUMENT_NODE_ : Js.number Js.t Js.readonly_prop
  method _DOCUMENT_POSITION_CONTAINED_BY_ : Js.number Js.t Js.readonly_prop
  method _DOCUMENT_POSITION_CONTAINS_ : Js.number Js.t Js.readonly_prop
  method _DOCUMENT_POSITION_DISCONNECTED_ : Js.number Js.t Js.readonly_prop
  method _DOCUMENT_POSITION_FOLLOWING_ : Js.number Js.t Js.readonly_prop
  method _DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC_ : Js.number Js.t Js.readonly_prop
  method _DOCUMENT_POSITION_PRECEDING_ : Js.number Js.t Js.readonly_prop
  method _DOCUMENT_TYPE_NODE_ : Js.number Js.t Js.readonly_prop
  method _ELEMENT_NODE_ : Js.number Js.t Js.readonly_prop
  method _ENTITY_NODE_ : Js.number Js.t Js.readonly_prop
  method _ENTITY_REFERENCE_NODE_ : Js.number Js.t Js.readonly_prop
  method _NOTATION_NODE_ : Js.number Js.t Js.readonly_prop
  method _PROCESSING_INSTRUCTION_NODE_ : Js.number Js.t Js.readonly_prop
  method _TEXT_NODE_ : Js.number Js.t Js.readonly_prop
end

class type node_filter = object
  method _FILTER_ACCEPT_ : Js.number Js.t Js.readonly_prop
  method _FILTER_REJECT_ : Js.number Js.t Js.readonly_prop
  method _FILTER_SKIP_ : Js.number Js.t Js.readonly_prop
  method _SHOW_ALL_ : Js.number Js.t Js.readonly_prop
  method _SHOW_ATTRIBUTE_ : Js.number Js.t Js.readonly_prop
  method _SHOW_CDATA_SECTION_ : Js.number Js.t Js.readonly_prop
  method _SHOW_COMMENT_ : Js.number Js.t Js.readonly_prop
  method _SHOW_DOCUMENT_ : Js.number Js.t Js.readonly_prop
  method _SHOW_DOCUMENT_FRAGMENT_ : Js.number Js.t Js.readonly_prop
  method _SHOW_DOCUMENT_TYPE_ : Js.number Js.t Js.readonly_prop
  method _SHOW_ELEMENT_ : Js.number Js.t Js.readonly_prop
  method _SHOW_ENTITY_ : Js.number Js.t Js.readonly_prop
  method _SHOW_ENTITY_REFERENCE_ : Js.number Js.t Js.readonly_prop
  method _SHOW_NOTATION_ : Js.number Js.t Js.readonly_prop
  method _SHOW_PROCESSING_INSTRUCTION_ : Js.number Js.t Js.readonly_prop
  method _SHOW_TEXT_ : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Offscreen_canvas} for module definition *)
class type offscreen_canvas = object end

(* see {!Browser.Path2d} for module definition *)
class type path2d = object end

(* see {!Browser.Performance_observer} for module definition *)
class type performance_observer = object
  method supportedEntryTypes : Js.js_string Js.t Js.js_array Js.t Js.readonly_prop
end

(* see {!Browser.Pointer_event} for module definition *)
class type pointer_event = object end

(* see {!Browser.Pop_state_event} for module definition *)
class type pop_state_event = object end

(* see {!Browser.Progress_event} for module definition *)
class type progress_event = object end

(* see {!Browser.Public_key_credential} for module definition *)
class type public_key_credential = object
  method isConditionalMediationAvailable : bool Js.t js_promise Js.t Js.meth
  method isUserVerifyingPlatformAuthenticatorAvailable : bool Js.t js_promise Js.t Js.meth
end

(* see {!Browser.Range} for module definition *)
class type range = object
  method _END_TO_END_ : Js.number Js.t Js.readonly_prop
  method _END_TO_START_ : Js.number Js.t Js.readonly_prop
  method _START_TO_END_ : Js.number Js.t Js.readonly_prop
  method _START_TO_START_ : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Readable_stream} for module definition *)
class type readable_stream = object end

(* see {!Browser.Request} for module definition *)
class type request = object end

(* see {!Browser.Resize_observer} for module definition *)
class type resize_observer = object end

(* see {!Browser.Response} for module definition *)
class type response = object
  method error : Interfaces.response Js.t Js.meth

  method json :
    data:Js.Unsafe.any
    -> init:Interfaces.response_init Js.t Js.optdef
    -> Interfaces.response Js.t Js.meth

  method redirect :
    url:Js.js_string Js.t
    -> status:Js.number Js.t Js.optdef
    -> Interfaces.response Js.t Js.meth
end

(* see {!Browser.Shared_worker_global_scope} for module definition *)
class type shared_worker_global_scope = object
  method _PERSISTENT : Js.number Js.t Js.readonly_prop
  method _TEMPORARY : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Storage_event} for module definition *)
class type storage_event = object end

(* see {!Browser.Submit_event} for module definition *)
class type submit_event = object end

(* see {!Browser.Text} for module definition *)
class type text = object end

(* see {!Browser.Toggle_event} for module definition *)
class type toggle_event = object end

(* see {!Browser.Touch} for module definition *)
class type touch = object end

(* see {!Browser.Touch_event} for module definition *)
class type touch_event = object end

(* see {!Browser.Transition_event} for module definition *)
class type transition_event = object end

(* see {!Browser.Ui_event} for module definition *)
class type ui_event = object end

(* see {!Browser.Url} for module definition *)
class type url = object
  method canParse :
    url:Js.js_string Js.t -> base:Js.js_string Js.t Js.optdef -> bool Js.t Js.meth

  method createObjectURL : blob:Interfaces.blob Js.t -> Js.js_string Js.t Js.meth

  method createObjectURL_1 :
    source:Interfaces.media_source Js.t -> Js.js_string Js.t Js.meth

  method parse :
    url:Js.js_string Js.t
    -> base:Js.js_string Js.t Js.optdef
    -> Interfaces.url Js.t Js.opt Js.meth

  method revokeObjectURL : url:Js.js_string Js.t -> unit Js.meth
end

(* see {!Browser.Url_search_params} for module definition *)
class type url_search_params = object end

(* see {!Browser.Video_frame} for module definition *)
class type video_frame = object end

(* see {!Browser.Web_gl2_rendering_context} for module definition *)
class type web_gl2_rendering_context = object
  method _ACTIVE_ATTRIBUTES_ : gl_enum Js.t Js.readonly_prop
  method _ACTIVE_TEXTURE_ : gl_enum Js.t Js.readonly_prop
  method _ACTIVE_UNIFORMS_ : gl_enum Js.t Js.readonly_prop
  method _ACTIVE_UNIFORM_BLOCKS_ : gl_enum Js.t Js.readonly_prop
  method _ALIASED_LINE_WIDTH_RANGE_ : gl_enum Js.t Js.readonly_prop
  method _ALIASED_POINT_SIZE_RANGE_ : gl_enum Js.t Js.readonly_prop
  method _ALPHA : gl_enum Js.t Js.readonly_prop
  method _ALPHA_BITS_ : gl_enum Js.t Js.readonly_prop
  method _ALREADY_SIGNALED_ : gl_enum Js.t Js.readonly_prop
  method _ALWAYS : gl_enum Js.t Js.readonly_prop
  method _ANY_SAMPLES_PASSED_ : gl_enum Js.t Js.readonly_prop
  method _ANY_SAMPLES_PASSED_CONSERVATIVE_ : gl_enum Js.t Js.readonly_prop
  method _ARRAY_BUFFER_ : gl_enum Js.t Js.readonly_prop
  method _ARRAY_BUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _ATTACHED_SHADERS_ : gl_enum Js.t Js.readonly_prop
  method _BACK : gl_enum Js.t Js.readonly_prop
  method _BLEND : gl_enum Js.t Js.readonly_prop
  method _BLEND_COLOR_ : gl_enum Js.t Js.readonly_prop
  method _BLEND_DST_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _BLEND_DST_RGB_ : gl_enum Js.t Js.readonly_prop
  method _BLEND_EQUATION_ : gl_enum Js.t Js.readonly_prop
  method _BLEND_EQUATION_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _BLEND_EQUATION_RGB_ : gl_enum Js.t Js.readonly_prop
  method _BLEND_SRC_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _BLEND_SRC_RGB_ : gl_enum Js.t Js.readonly_prop
  method _BLUE_BITS_ : gl_enum Js.t Js.readonly_prop
  method _BOOL : gl_enum Js.t Js.readonly_prop
  method _BOOL_VEC2_ : gl_enum Js.t Js.readonly_prop
  method _BOOL_VEC3_ : gl_enum Js.t Js.readonly_prop
  method _BOOL_VEC4_ : gl_enum Js.t Js.readonly_prop
  method _BROWSER_DEFAULT_WEBGL_ : gl_enum Js.t Js.readonly_prop
  method _BUFFER_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _BUFFER_USAGE_ : gl_enum Js.t Js.readonly_prop
  method _BYTE : gl_enum Js.t Js.readonly_prop
  method _CCW : gl_enum Js.t Js.readonly_prop
  method _CLAMP_TO_EDGE_ : gl_enum Js.t Js.readonly_prop
  method _COLOR : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT0_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT1_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT10_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT11_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT12_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT13_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT14_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT15_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT2_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT3_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT4_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT5_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT6_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT7_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT8_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT9_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_BUFFER_BIT_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_CLEAR_VALUE_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_WRITEMASK_ : gl_enum Js.t Js.readonly_prop
  method _COMPARE_REF_TO_TEXTURE_ : gl_enum Js.t Js.readonly_prop
  method _COMPILE_STATUS_ : gl_enum Js.t Js.readonly_prop
  method _COMPRESSED_TEXTURE_FORMATS_ : gl_enum Js.t Js.readonly_prop
  method _CONDITION_SATISFIED_ : gl_enum Js.t Js.readonly_prop
  method _CONSTANT_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _CONSTANT_COLOR_ : gl_enum Js.t Js.readonly_prop
  method _CONTEXT_LOST_WEBGL_ : gl_enum Js.t Js.readonly_prop
  method _COPY_READ_BUFFER_ : gl_enum Js.t Js.readonly_prop
  method _COPY_READ_BUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _COPY_WRITE_BUFFER_ : gl_enum Js.t Js.readonly_prop
  method _COPY_WRITE_BUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _CULL_FACE_ : gl_enum Js.t Js.readonly_prop
  method _CULL_FACE_MODE_ : gl_enum Js.t Js.readonly_prop
  method _CURRENT_PROGRAM_ : gl_enum Js.t Js.readonly_prop
  method _CURRENT_QUERY_ : gl_enum Js.t Js.readonly_prop
  method _CURRENT_VERTEX_ATTRIB_ : gl_enum Js.t Js.readonly_prop
  method _CW : gl_enum Js.t Js.readonly_prop
  method _DECR : gl_enum Js.t Js.readonly_prop
  method _DECR_WRAP_ : gl_enum Js.t Js.readonly_prop
  method _DELETE_STATUS_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH : gl_enum Js.t Js.readonly_prop
  method _DEPTH24_STENCIL8_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH32F_STENCIL8_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_ATTACHMENT_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_BITS_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_BUFFER_BIT_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_CLEAR_VALUE_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_COMPONENT_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_COMPONENT16_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_COMPONENT24_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_COMPONENT32F_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_FUNC_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_RANGE_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_STENCIL_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_STENCIL_ATTACHMENT_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_TEST_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_WRITEMASK_ : gl_enum Js.t Js.readonly_prop
  method _DITHER : gl_enum Js.t Js.readonly_prop
  method _DONT_CARE_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER0_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER1_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER10_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER11_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER12_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER13_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER14_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER15_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER2_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER3_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER4_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER5_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER6_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER7_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER8_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_BUFFER9_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_FRAMEBUFFER_ : gl_enum Js.t Js.readonly_prop
  method _DRAW_FRAMEBUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _DST_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _DST_COLOR_ : gl_enum Js.t Js.readonly_prop
  method _DYNAMIC_COPY_ : gl_enum Js.t Js.readonly_prop
  method _DYNAMIC_DRAW_ : gl_enum Js.t Js.readonly_prop
  method _DYNAMIC_READ_ : gl_enum Js.t Js.readonly_prop
  method _ELEMENT_ARRAY_BUFFER_ : gl_enum Js.t Js.readonly_prop
  method _ELEMENT_ARRAY_BUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _EQUAL : gl_enum Js.t Js.readonly_prop
  method _FASTEST : gl_enum Js.t Js.readonly_prop
  method _FLOAT : gl_enum Js.t Js.readonly_prop
  method _FLOAT_32_UNSIGNED_INT_24_8_REV_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_MAT2_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_MAT2x3_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_MAT2x4_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_MAT3_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_MAT3x2_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_MAT3x4_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_MAT4_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_MAT4x2_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_MAT4x3_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_VEC2_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_VEC3_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_VEC4_ : gl_enum Js.t Js.readonly_prop
  method _FRAGMENT_SHADER_ : gl_enum Js.t Js.readonly_prop
  method _FRAGMENT_SHADER_DERIVATIVE_HINT_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_BLUE_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_GREEN_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_RED_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_COMPLETE_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_DEFAULT_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_INCOMPLETE_ATTACHMENT_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_INCOMPLETE_DIMENSIONS_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_UNSUPPORTED_ : gl_enum Js.t Js.readonly_prop
  method _FRONT : gl_enum Js.t Js.readonly_prop
  method _FRONT_AND_BACK_ : gl_enum Js.t Js.readonly_prop
  method _FRONT_FACE_ : gl_enum Js.t Js.readonly_prop
  method _FUNC_ADD_ : gl_enum Js.t Js.readonly_prop
  method _FUNC_REVERSE_SUBTRACT_ : gl_enum Js.t Js.readonly_prop
  method _FUNC_SUBTRACT_ : gl_enum Js.t Js.readonly_prop
  method _GENERATE_MIPMAP_HINT_ : gl_enum Js.t Js.readonly_prop
  method _GEQUAL : gl_enum Js.t Js.readonly_prop
  method _GREATER : gl_enum Js.t Js.readonly_prop
  method _GREEN_BITS_ : gl_enum Js.t Js.readonly_prop
  method _HALF_FLOAT_ : gl_enum Js.t Js.readonly_prop
  method _HIGH_FLOAT_ : gl_enum Js.t Js.readonly_prop
  method _HIGH_INT_ : gl_enum Js.t Js.readonly_prop
  method _IMPLEMENTATION_COLOR_READ_FORMAT_ : gl_enum Js.t Js.readonly_prop
  method _IMPLEMENTATION_COLOR_READ_TYPE_ : gl_enum Js.t Js.readonly_prop
  method _INCR : gl_enum Js.t Js.readonly_prop
  method _INCR_WRAP_ : gl_enum Js.t Js.readonly_prop
  method _INT : gl_enum Js.t Js.readonly_prop
  method _INTERLEAVED_ATTRIBS_ : gl_enum Js.t Js.readonly_prop
  method _INT_2_10_10_10_REV_ : gl_enum Js.t Js.readonly_prop
  method _INT_SAMPLER_2D_ : gl_enum Js.t Js.readonly_prop
  method _INT_SAMPLER_2D_ARRAY_ : gl_enum Js.t Js.readonly_prop
  method _INT_SAMPLER_3D_ : gl_enum Js.t Js.readonly_prop
  method _INT_SAMPLER_CUBE_ : gl_enum Js.t Js.readonly_prop
  method _INT_VEC2_ : gl_enum Js.t Js.readonly_prop
  method _INT_VEC3_ : gl_enum Js.t Js.readonly_prop
  method _INT_VEC4_ : gl_enum Js.t Js.readonly_prop
  method _INVALID_ENUM_ : gl_enum Js.t Js.readonly_prop
  method _INVALID_FRAMEBUFFER_OPERATION_ : gl_enum Js.t Js.readonly_prop
  method _INVALID_INDEX_ : gl_enum Js.t Js.readonly_prop
  method _INVALID_OPERATION_ : gl_enum Js.t Js.readonly_prop
  method _INVALID_VALUE_ : gl_enum Js.t Js.readonly_prop
  method _INVERT : gl_enum Js.t Js.readonly_prop
  method _KEEP : gl_enum Js.t Js.readonly_prop
  method _LEQUAL : gl_enum Js.t Js.readonly_prop
  method _LESS : gl_enum Js.t Js.readonly_prop
  method _LINEAR : gl_enum Js.t Js.readonly_prop
  method _LINEAR_MIPMAP_LINEAR_ : gl_enum Js.t Js.readonly_prop
  method _LINEAR_MIPMAP_NEAREST_ : gl_enum Js.t Js.readonly_prop
  method _LINES : gl_enum Js.t Js.readonly_prop
  method _LINE_LOOP_ : gl_enum Js.t Js.readonly_prop
  method _LINE_STRIP_ : gl_enum Js.t Js.readonly_prop
  method _LINE_WIDTH_ : gl_enum Js.t Js.readonly_prop
  method _LINK_STATUS_ : gl_enum Js.t Js.readonly_prop
  method _LOW_FLOAT_ : gl_enum Js.t Js.readonly_prop
  method _LOW_INT_ : gl_enum Js.t Js.readonly_prop
  method _LUMINANCE : gl_enum Js.t Js.readonly_prop
  method _LUMINANCE_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _MAX : gl_enum Js.t Js.readonly_prop
  method _MAX_3D_TEXTURE_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _MAX_ARRAY_TEXTURE_LAYERS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_CLIENT_WAIT_TIMEOUT_WEBGL_ : gl_enum Js.t Js.readonly_prop
  method _MAX_COLOR_ATTACHMENTS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_COMBINED_TEXTURE_IMAGE_UNITS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_COMBINED_UNIFORM_BLOCKS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_CUBE_MAP_TEXTURE_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _MAX_DRAW_BUFFERS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_ELEMENTS_INDICES_ : gl_enum Js.t Js.readonly_prop
  method _MAX_ELEMENTS_VERTICES_ : gl_enum Js.t Js.readonly_prop
  method _MAX_ELEMENT_INDEX_ : gl_enum Js.t Js.readonly_prop
  method _MAX_FRAGMENT_INPUT_COMPONENTS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_FRAGMENT_UNIFORM_BLOCKS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_FRAGMENT_UNIFORM_COMPONENTS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_FRAGMENT_UNIFORM_VECTORS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_PROGRAM_TEXEL_OFFSET_ : gl_enum Js.t Js.readonly_prop
  method _MAX_RENDERBUFFER_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _MAX_SAMPLES_ : gl_enum Js.t Js.readonly_prop
  method _MAX_SERVER_WAIT_TIMEOUT_ : gl_enum Js.t Js.readonly_prop
  method _MAX_TEXTURE_IMAGE_UNITS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_TEXTURE_LOD_BIAS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_TEXTURE_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_UNIFORM_BLOCK_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _MAX_UNIFORM_BUFFER_BINDINGS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_VARYING_COMPONENTS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_VARYING_VECTORS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_VERTEX_ATTRIBS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_VERTEX_OUTPUT_COMPONENTS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_VERTEX_TEXTURE_IMAGE_UNITS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_VERTEX_UNIFORM_BLOCKS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_VERTEX_UNIFORM_COMPONENTS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_VERTEX_UNIFORM_VECTORS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_VIEWPORT_DIMS_ : gl_enum Js.t Js.readonly_prop
  method _MEDIUM_FLOAT_ : gl_enum Js.t Js.readonly_prop
  method _MEDIUM_INT_ : gl_enum Js.t Js.readonly_prop
  method _MIN : gl_enum Js.t Js.readonly_prop
  method _MIN_PROGRAM_TEXEL_OFFSET_ : gl_enum Js.t Js.readonly_prop
  method _MIRRORED_REPEAT_ : gl_enum Js.t Js.readonly_prop
  method _NEAREST : gl_enum Js.t Js.readonly_prop
  method _NEAREST_MIPMAP_LINEAR_ : gl_enum Js.t Js.readonly_prop
  method _NEAREST_MIPMAP_NEAREST_ : gl_enum Js.t Js.readonly_prop
  method _NEVER : gl_enum Js.t Js.readonly_prop
  method _NICEST : gl_enum Js.t Js.readonly_prop
  method _NONE : gl_enum Js.t Js.readonly_prop
  method _NOTEQUAL : gl_enum Js.t Js.readonly_prop
  method _NO_ERROR_ : gl_enum Js.t Js.readonly_prop
  method _OBJECT_TYPE_ : gl_enum Js.t Js.readonly_prop
  method _ONE : gl_enum Js.t Js.readonly_prop
  method _ONE_MINUS_CONSTANT_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _ONE_MINUS_CONSTANT_COLOR_ : gl_enum Js.t Js.readonly_prop
  method _ONE_MINUS_DST_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _ONE_MINUS_DST_COLOR_ : gl_enum Js.t Js.readonly_prop
  method _ONE_MINUS_SRC_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _ONE_MINUS_SRC_COLOR_ : gl_enum Js.t Js.readonly_prop
  method _OUT_OF_MEMORY_ : gl_enum Js.t Js.readonly_prop
  method _PACK_ALIGNMENT_ : gl_enum Js.t Js.readonly_prop
  method _PACK_ROW_LENGTH_ : gl_enum Js.t Js.readonly_prop
  method _PACK_SKIP_PIXELS_ : gl_enum Js.t Js.readonly_prop
  method _PACK_SKIP_ROWS_ : gl_enum Js.t Js.readonly_prop
  method _PIXEL_PACK_BUFFER_ : gl_enum Js.t Js.readonly_prop
  method _PIXEL_PACK_BUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _PIXEL_UNPACK_BUFFER_ : gl_enum Js.t Js.readonly_prop
  method _PIXEL_UNPACK_BUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _POINTS : gl_enum Js.t Js.readonly_prop
  method _POLYGON_OFFSET_FACTOR_ : gl_enum Js.t Js.readonly_prop
  method _POLYGON_OFFSET_FILL_ : gl_enum Js.t Js.readonly_prop
  method _POLYGON_OFFSET_UNITS_ : gl_enum Js.t Js.readonly_prop
  method _QUERY_RESULT_ : gl_enum Js.t Js.readonly_prop
  method _QUERY_RESULT_AVAILABLE_ : gl_enum Js.t Js.readonly_prop
  method _R11F_G11F_B10F_ : gl_enum Js.t Js.readonly_prop
  method _R16F : gl_enum Js.t Js.readonly_prop
  method _R16I : gl_enum Js.t Js.readonly_prop
  method _R16UI : gl_enum Js.t Js.readonly_prop
  method _R32F : gl_enum Js.t Js.readonly_prop
  method _R32I : gl_enum Js.t Js.readonly_prop
  method _R32UI : gl_enum Js.t Js.readonly_prop
  method _R8 : gl_enum Js.t Js.readonly_prop
  method _R8I : gl_enum Js.t Js.readonly_prop
  method _R8UI : gl_enum Js.t Js.readonly_prop
  method _R8_SNORM_ : gl_enum Js.t Js.readonly_prop
  method _RASTERIZER_DISCARD_ : gl_enum Js.t Js.readonly_prop
  method _READ_BUFFER_ : gl_enum Js.t Js.readonly_prop
  method _READ_FRAMEBUFFER_ : gl_enum Js.t Js.readonly_prop
  method _READ_FRAMEBUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _RED : gl_enum Js.t Js.readonly_prop
  method _RED_BITS_ : gl_enum Js.t Js.readonly_prop
  method _RED_INTEGER_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_ALPHA_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_BLUE_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_DEPTH_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_GREEN_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_HEIGHT_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_INTERNAL_FORMAT_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_RED_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_SAMPLES_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_STENCIL_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_WIDTH_ : gl_enum Js.t Js.readonly_prop
  method _RENDERER : gl_enum Js.t Js.readonly_prop
  method _REPEAT : gl_enum Js.t Js.readonly_prop
  method _REPLACE : gl_enum Js.t Js.readonly_prop
  method _RG : gl_enum Js.t Js.readonly_prop
  method _RG16F : gl_enum Js.t Js.readonly_prop
  method _RG16I : gl_enum Js.t Js.readonly_prop
  method _RG16UI : gl_enum Js.t Js.readonly_prop
  method _RG32F : gl_enum Js.t Js.readonly_prop
  method _RG32I : gl_enum Js.t Js.readonly_prop
  method _RG32UI : gl_enum Js.t Js.readonly_prop
  method _RG8 : gl_enum Js.t Js.readonly_prop
  method _RG8I : gl_enum Js.t Js.readonly_prop
  method _RG8UI : gl_enum Js.t Js.readonly_prop
  method _RG8_SNORM_ : gl_enum Js.t Js.readonly_prop
  method _RGB : gl_enum Js.t Js.readonly_prop
  method _RGB10_A2_ : gl_enum Js.t Js.readonly_prop
  method _RGB10_A2UI_ : gl_enum Js.t Js.readonly_prop
  method _RGB16F : gl_enum Js.t Js.readonly_prop
  method _RGB16I : gl_enum Js.t Js.readonly_prop
  method _RGB16UI : gl_enum Js.t Js.readonly_prop
  method _RGB32F : gl_enum Js.t Js.readonly_prop
  method _RGB32I : gl_enum Js.t Js.readonly_prop
  method _RGB32UI : gl_enum Js.t Js.readonly_prop
  method _RGB565 : gl_enum Js.t Js.readonly_prop
  method _RGB5_A1_ : gl_enum Js.t Js.readonly_prop
  method _RGB8 : gl_enum Js.t Js.readonly_prop
  method _RGB8I : gl_enum Js.t Js.readonly_prop
  method _RGB8UI : gl_enum Js.t Js.readonly_prop
  method _RGB8_SNORM_ : gl_enum Js.t Js.readonly_prop
  method _RGB9_E5_ : gl_enum Js.t Js.readonly_prop
  method _RGBA : gl_enum Js.t Js.readonly_prop
  method _RGBA16F : gl_enum Js.t Js.readonly_prop
  method _RGBA16I : gl_enum Js.t Js.readonly_prop
  method _RGBA16UI : gl_enum Js.t Js.readonly_prop
  method _RGBA32F : gl_enum Js.t Js.readonly_prop
  method _RGBA32I : gl_enum Js.t Js.readonly_prop
  method _RGBA32UI : gl_enum Js.t Js.readonly_prop
  method _RGBA4 : gl_enum Js.t Js.readonly_prop
  method _RGBA8 : gl_enum Js.t Js.readonly_prop
  method _RGBA8I : gl_enum Js.t Js.readonly_prop
  method _RGBA8UI : gl_enum Js.t Js.readonly_prop
  method _RGBA8_SNORM_ : gl_enum Js.t Js.readonly_prop
  method _RGBA_INTEGER_ : gl_enum Js.t Js.readonly_prop
  method _RGB_INTEGER_ : gl_enum Js.t Js.readonly_prop
  method _RG_INTEGER_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLER_2D_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLER_2D_ARRAY_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLER_2D_ARRAY_SHADOW_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLER_2D_SHADOW_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLER_3D_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLER_CUBE_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLER_CUBE_SHADOW_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLES : gl_enum Js.t Js.readonly_prop
  method _SAMPLE_ALPHA_TO_COVERAGE_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLE_BUFFERS_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLE_COVERAGE_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLE_COVERAGE_INVERT_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLE_COVERAGE_VALUE_ : gl_enum Js.t Js.readonly_prop
  method _SCISSOR_BOX_ : gl_enum Js.t Js.readonly_prop
  method _SCISSOR_TEST_ : gl_enum Js.t Js.readonly_prop
  method _SEPARATE_ATTRIBS_ : gl_enum Js.t Js.readonly_prop
  method _SHADER_TYPE_ : gl_enum Js.t Js.readonly_prop
  method _SHADING_LANGUAGE_VERSION_ : gl_enum Js.t Js.readonly_prop
  method _SHORT : gl_enum Js.t Js.readonly_prop
  method _SIGNALED : gl_enum Js.t Js.readonly_prop
  method _SIGNED_NORMALIZED_ : gl_enum Js.t Js.readonly_prop
  method _SRC_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _SRC_ALPHA_SATURATE_ : gl_enum Js.t Js.readonly_prop
  method _SRC_COLOR_ : gl_enum Js.t Js.readonly_prop
  method _SRGB : gl_enum Js.t Js.readonly_prop
  method _SRGB8 : gl_enum Js.t Js.readonly_prop
  method _SRGB8_ALPHA8_ : gl_enum Js.t Js.readonly_prop
  method _STATIC_COPY_ : gl_enum Js.t Js.readonly_prop
  method _STATIC_DRAW_ : gl_enum Js.t Js.readonly_prop
  method _STATIC_READ_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL : gl_enum Js.t Js.readonly_prop
  method _STENCIL_ATTACHMENT_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BACK_FAIL_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BACK_FUNC_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BACK_PASS_DEPTH_FAIL_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BACK_PASS_DEPTH_PASS_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BACK_REF_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BACK_VALUE_MASK_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BACK_WRITEMASK_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BITS_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BUFFER_BIT_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_CLEAR_VALUE_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_FAIL_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_FUNC_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_INDEX8_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_PASS_DEPTH_FAIL_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_PASS_DEPTH_PASS_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_REF_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_TEST_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_VALUE_MASK_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_WRITEMASK_ : gl_enum Js.t Js.readonly_prop
  method _STREAM_COPY_ : gl_enum Js.t Js.readonly_prop
  method _STREAM_DRAW_ : gl_enum Js.t Js.readonly_prop
  method _STREAM_READ_ : gl_enum Js.t Js.readonly_prop
  method _SUBPIXEL_BITS_ : gl_enum Js.t Js.readonly_prop
  method _SYNC_CONDITION_ : gl_enum Js.t Js.readonly_prop
  method _SYNC_FENCE_ : gl_enum Js.t Js.readonly_prop
  method _SYNC_FLAGS_ : gl_enum Js.t Js.readonly_prop
  method _SYNC_FLUSH_COMMANDS_BIT_ : gl_enum Js.t Js.readonly_prop
  method _SYNC_GPU_COMMANDS_COMPLETE_ : gl_enum Js.t Js.readonly_prop
  method _SYNC_STATUS_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE : gl_enum Js.t Js.readonly_prop
  method _TEXTURE0 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE1 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE10 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE11 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE12 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE13 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE14 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE15 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE16 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE17 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE18 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE19 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE2 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE20 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE21 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE22 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE23 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE24 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE25 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE26 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE27 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE28 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE29 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE3 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE30 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE31 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE4 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE5 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE6 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE7 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE8 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE9 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_2D_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_2D_ARRAY_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_3D_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_BASE_LEVEL_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_BINDING_2D_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_BINDING_2D_ARRAY_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_BINDING_3D_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_BINDING_CUBE_MAP_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_COMPARE_FUNC_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_COMPARE_MODE_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_CUBE_MAP_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_CUBE_MAP_NEGATIVE_X_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_CUBE_MAP_NEGATIVE_Y_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_CUBE_MAP_NEGATIVE_Z_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_CUBE_MAP_POSITIVE_X_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_CUBE_MAP_POSITIVE_Y_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_CUBE_MAP_POSITIVE_Z_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_IMMUTABLE_FORMAT_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_IMMUTABLE_LEVELS_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_MAG_FILTER_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_MAX_LEVEL_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_MAX_LOD_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_MIN_FILTER_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_MIN_LOD_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_WRAP_R_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_WRAP_S_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_WRAP_T_ : gl_enum Js.t Js.readonly_prop
  method _TIMEOUT_EXPIRED_ : gl_enum Js.t Js.readonly_prop
  method _TIMEOUT_IGNORED_ : gl_int Js.t Js.readonly_prop
  method _TRANSFORM_FEEDBACK_ : gl_enum Js.t Js.readonly_prop
  method _TRANSFORM_FEEDBACK_ACTIVE_ : gl_enum Js.t Js.readonly_prop
  method _TRANSFORM_FEEDBACK_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _TRANSFORM_FEEDBACK_BUFFER_ : gl_enum Js.t Js.readonly_prop
  method _TRANSFORM_FEEDBACK_BUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _TRANSFORM_FEEDBACK_BUFFER_MODE_ : gl_enum Js.t Js.readonly_prop
  method _TRANSFORM_FEEDBACK_BUFFER_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _TRANSFORM_FEEDBACK_BUFFER_START_ : gl_enum Js.t Js.readonly_prop
  method _TRANSFORM_FEEDBACK_PAUSED_ : gl_enum Js.t Js.readonly_prop
  method _TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_ : gl_enum Js.t Js.readonly_prop
  method _TRANSFORM_FEEDBACK_VARYINGS_ : gl_enum Js.t Js.readonly_prop
  method _TRIANGLES : gl_enum Js.t Js.readonly_prop
  method _TRIANGLE_FAN_ : gl_enum Js.t Js.readonly_prop
  method _TRIANGLE_STRIP_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_ARRAY_STRIDE_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_BLOCK_ACTIVE_UNIFORMS_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_BLOCK_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_BLOCK_DATA_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_BLOCK_INDEX_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_BUFFER_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_BUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_BUFFER_OFFSET_ALIGNMENT_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_BUFFER_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_BUFFER_START_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_IS_ROW_MAJOR_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_MATRIX_STRIDE_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_OFFSET_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _UNIFORM_TYPE_ : gl_enum Js.t Js.readonly_prop
  method _UNPACK_ALIGNMENT_ : gl_enum Js.t Js.readonly_prop
  method _UNPACK_COLORSPACE_CONVERSION_WEBGL_ : gl_enum Js.t Js.readonly_prop
  method _UNPACK_FLIP_Y_WEBGL_ : gl_enum Js.t Js.readonly_prop
  method _UNPACK_IMAGE_HEIGHT_ : gl_enum Js.t Js.readonly_prop
  method _UNPACK_PREMULTIPLY_ALPHA_WEBGL_ : gl_enum Js.t Js.readonly_prop
  method _UNPACK_ROW_LENGTH_ : gl_enum Js.t Js.readonly_prop
  method _UNPACK_SKIP_IMAGES_ : gl_enum Js.t Js.readonly_prop
  method _UNPACK_SKIP_PIXELS_ : gl_enum Js.t Js.readonly_prop
  method _UNPACK_SKIP_ROWS_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNALED : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_BYTE_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_INT_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_INT_10F_11F_11F_REV_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_INT_24_8_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_INT_2_10_10_10_REV_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_INT_5_9_9_9_REV_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_INT_SAMPLER_2D_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_INT_SAMPLER_2D_ARRAY_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_INT_SAMPLER_3D_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_INT_SAMPLER_CUBE_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_INT_VEC2_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_INT_VEC3_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_INT_VEC4_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_NORMALIZED_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_SHORT_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_SHORT_4_4_4_4_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_SHORT_5_5_5_1_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_SHORT_5_6_5_ : gl_enum Js.t Js.readonly_prop
  method _VALIDATE_STATUS_ : gl_enum Js.t Js.readonly_prop
  method _VENDOR : gl_enum Js.t Js.readonly_prop
  method _VERSION : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ARRAY_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_DIVISOR_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_ENABLED_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_INTEGER_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_NORMALIZED_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_POINTER_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_STRIDE_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_TYPE_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_SHADER_ : gl_enum Js.t Js.readonly_prop
  method _VIEWPORT : gl_enum Js.t Js.readonly_prop
  method _WAIT_FAILED_ : gl_enum Js.t Js.readonly_prop
  method _ZERO : gl_enum Js.t Js.readonly_prop
end

(* see {!Browser.Web_gl_rendering_context} for module definition *)
class type web_gl_rendering_context = object
  method _ACTIVE_ATTRIBUTES_ : gl_enum Js.t Js.readonly_prop
  method _ACTIVE_TEXTURE_ : gl_enum Js.t Js.readonly_prop
  method _ACTIVE_UNIFORMS_ : gl_enum Js.t Js.readonly_prop
  method _ALIASED_LINE_WIDTH_RANGE_ : gl_enum Js.t Js.readonly_prop
  method _ALIASED_POINT_SIZE_RANGE_ : gl_enum Js.t Js.readonly_prop
  method _ALPHA : gl_enum Js.t Js.readonly_prop
  method _ALPHA_BITS_ : gl_enum Js.t Js.readonly_prop
  method _ALWAYS : gl_enum Js.t Js.readonly_prop
  method _ARRAY_BUFFER_ : gl_enum Js.t Js.readonly_prop
  method _ARRAY_BUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _ATTACHED_SHADERS_ : gl_enum Js.t Js.readonly_prop
  method _BACK : gl_enum Js.t Js.readonly_prop
  method _BLEND : gl_enum Js.t Js.readonly_prop
  method _BLEND_COLOR_ : gl_enum Js.t Js.readonly_prop
  method _BLEND_DST_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _BLEND_DST_RGB_ : gl_enum Js.t Js.readonly_prop
  method _BLEND_EQUATION_ : gl_enum Js.t Js.readonly_prop
  method _BLEND_EQUATION_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _BLEND_EQUATION_RGB_ : gl_enum Js.t Js.readonly_prop
  method _BLEND_SRC_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _BLEND_SRC_RGB_ : gl_enum Js.t Js.readonly_prop
  method _BLUE_BITS_ : gl_enum Js.t Js.readonly_prop
  method _BOOL : gl_enum Js.t Js.readonly_prop
  method _BOOL_VEC2_ : gl_enum Js.t Js.readonly_prop
  method _BOOL_VEC3_ : gl_enum Js.t Js.readonly_prop
  method _BOOL_VEC4_ : gl_enum Js.t Js.readonly_prop
  method _BROWSER_DEFAULT_WEBGL_ : gl_enum Js.t Js.readonly_prop
  method _BUFFER_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _BUFFER_USAGE_ : gl_enum Js.t Js.readonly_prop
  method _BYTE : gl_enum Js.t Js.readonly_prop
  method _CCW : gl_enum Js.t Js.readonly_prop
  method _CLAMP_TO_EDGE_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_ATTACHMENT0_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_BUFFER_BIT_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_CLEAR_VALUE_ : gl_enum Js.t Js.readonly_prop
  method _COLOR_WRITEMASK_ : gl_enum Js.t Js.readonly_prop
  method _COMPILE_STATUS_ : gl_enum Js.t Js.readonly_prop
  method _COMPRESSED_TEXTURE_FORMATS_ : gl_enum Js.t Js.readonly_prop
  method _CONSTANT_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _CONSTANT_COLOR_ : gl_enum Js.t Js.readonly_prop
  method _CONTEXT_LOST_WEBGL_ : gl_enum Js.t Js.readonly_prop
  method _CULL_FACE_ : gl_enum Js.t Js.readonly_prop
  method _CULL_FACE_MODE_ : gl_enum Js.t Js.readonly_prop
  method _CURRENT_PROGRAM_ : gl_enum Js.t Js.readonly_prop
  method _CURRENT_VERTEX_ATTRIB_ : gl_enum Js.t Js.readonly_prop
  method _CW : gl_enum Js.t Js.readonly_prop
  method _DECR : gl_enum Js.t Js.readonly_prop
  method _DECR_WRAP_ : gl_enum Js.t Js.readonly_prop
  method _DELETE_STATUS_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_ATTACHMENT_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_BITS_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_BUFFER_BIT_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_CLEAR_VALUE_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_COMPONENT_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_COMPONENT16_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_FUNC_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_RANGE_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_STENCIL_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_STENCIL_ATTACHMENT_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_TEST_ : gl_enum Js.t Js.readonly_prop
  method _DEPTH_WRITEMASK_ : gl_enum Js.t Js.readonly_prop
  method _DITHER : gl_enum Js.t Js.readonly_prop
  method _DONT_CARE_ : gl_enum Js.t Js.readonly_prop
  method _DST_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _DST_COLOR_ : gl_enum Js.t Js.readonly_prop
  method _DYNAMIC_DRAW_ : gl_enum Js.t Js.readonly_prop
  method _ELEMENT_ARRAY_BUFFER_ : gl_enum Js.t Js.readonly_prop
  method _ELEMENT_ARRAY_BUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _EQUAL : gl_enum Js.t Js.readonly_prop
  method _FASTEST : gl_enum Js.t Js.readonly_prop
  method _FLOAT : gl_enum Js.t Js.readonly_prop
  method _FLOAT_MAT2_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_MAT3_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_MAT4_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_VEC2_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_VEC3_ : gl_enum Js.t Js.readonly_prop
  method _FLOAT_VEC4_ : gl_enum Js.t Js.readonly_prop
  method _FRAGMENT_SHADER_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_COMPLETE_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_INCOMPLETE_ATTACHMENT_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_INCOMPLETE_DIMENSIONS_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_ : gl_enum Js.t Js.readonly_prop
  method _FRAMEBUFFER_UNSUPPORTED_ : gl_enum Js.t Js.readonly_prop
  method _FRONT : gl_enum Js.t Js.readonly_prop
  method _FRONT_AND_BACK_ : gl_enum Js.t Js.readonly_prop
  method _FRONT_FACE_ : gl_enum Js.t Js.readonly_prop
  method _FUNC_ADD_ : gl_enum Js.t Js.readonly_prop
  method _FUNC_REVERSE_SUBTRACT_ : gl_enum Js.t Js.readonly_prop
  method _FUNC_SUBTRACT_ : gl_enum Js.t Js.readonly_prop
  method _GENERATE_MIPMAP_HINT_ : gl_enum Js.t Js.readonly_prop
  method _GEQUAL : gl_enum Js.t Js.readonly_prop
  method _GREATER : gl_enum Js.t Js.readonly_prop
  method _GREEN_BITS_ : gl_enum Js.t Js.readonly_prop
  method _HIGH_FLOAT_ : gl_enum Js.t Js.readonly_prop
  method _HIGH_INT_ : gl_enum Js.t Js.readonly_prop
  method _IMPLEMENTATION_COLOR_READ_FORMAT_ : gl_enum Js.t Js.readonly_prop
  method _IMPLEMENTATION_COLOR_READ_TYPE_ : gl_enum Js.t Js.readonly_prop
  method _INCR : gl_enum Js.t Js.readonly_prop
  method _INCR_WRAP_ : gl_enum Js.t Js.readonly_prop
  method _INT : gl_enum Js.t Js.readonly_prop
  method _INT_VEC2_ : gl_enum Js.t Js.readonly_prop
  method _INT_VEC3_ : gl_enum Js.t Js.readonly_prop
  method _INT_VEC4_ : gl_enum Js.t Js.readonly_prop
  method _INVALID_ENUM_ : gl_enum Js.t Js.readonly_prop
  method _INVALID_FRAMEBUFFER_OPERATION_ : gl_enum Js.t Js.readonly_prop
  method _INVALID_OPERATION_ : gl_enum Js.t Js.readonly_prop
  method _INVALID_VALUE_ : gl_enum Js.t Js.readonly_prop
  method _INVERT : gl_enum Js.t Js.readonly_prop
  method _KEEP : gl_enum Js.t Js.readonly_prop
  method _LEQUAL : gl_enum Js.t Js.readonly_prop
  method _LESS : gl_enum Js.t Js.readonly_prop
  method _LINEAR : gl_enum Js.t Js.readonly_prop
  method _LINEAR_MIPMAP_LINEAR_ : gl_enum Js.t Js.readonly_prop
  method _LINEAR_MIPMAP_NEAREST_ : gl_enum Js.t Js.readonly_prop
  method _LINES : gl_enum Js.t Js.readonly_prop
  method _LINE_LOOP_ : gl_enum Js.t Js.readonly_prop
  method _LINE_STRIP_ : gl_enum Js.t Js.readonly_prop
  method _LINE_WIDTH_ : gl_enum Js.t Js.readonly_prop
  method _LINK_STATUS_ : gl_enum Js.t Js.readonly_prop
  method _LOW_FLOAT_ : gl_enum Js.t Js.readonly_prop
  method _LOW_INT_ : gl_enum Js.t Js.readonly_prop
  method _LUMINANCE : gl_enum Js.t Js.readonly_prop
  method _LUMINANCE_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _MAX_COMBINED_TEXTURE_IMAGE_UNITS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_CUBE_MAP_TEXTURE_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _MAX_FRAGMENT_UNIFORM_VECTORS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_RENDERBUFFER_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _MAX_TEXTURE_IMAGE_UNITS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_TEXTURE_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _MAX_VARYING_VECTORS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_VERTEX_ATTRIBS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_VERTEX_TEXTURE_IMAGE_UNITS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_VERTEX_UNIFORM_VECTORS_ : gl_enum Js.t Js.readonly_prop
  method _MAX_VIEWPORT_DIMS_ : gl_enum Js.t Js.readonly_prop
  method _MEDIUM_FLOAT_ : gl_enum Js.t Js.readonly_prop
  method _MEDIUM_INT_ : gl_enum Js.t Js.readonly_prop
  method _MIRRORED_REPEAT_ : gl_enum Js.t Js.readonly_prop
  method _NEAREST : gl_enum Js.t Js.readonly_prop
  method _NEAREST_MIPMAP_LINEAR_ : gl_enum Js.t Js.readonly_prop
  method _NEAREST_MIPMAP_NEAREST_ : gl_enum Js.t Js.readonly_prop
  method _NEVER : gl_enum Js.t Js.readonly_prop
  method _NICEST : gl_enum Js.t Js.readonly_prop
  method _NONE : gl_enum Js.t Js.readonly_prop
  method _NOTEQUAL : gl_enum Js.t Js.readonly_prop
  method _NO_ERROR_ : gl_enum Js.t Js.readonly_prop
  method _ONE : gl_enum Js.t Js.readonly_prop
  method _ONE_MINUS_CONSTANT_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _ONE_MINUS_CONSTANT_COLOR_ : gl_enum Js.t Js.readonly_prop
  method _ONE_MINUS_DST_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _ONE_MINUS_DST_COLOR_ : gl_enum Js.t Js.readonly_prop
  method _ONE_MINUS_SRC_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _ONE_MINUS_SRC_COLOR_ : gl_enum Js.t Js.readonly_prop
  method _OUT_OF_MEMORY_ : gl_enum Js.t Js.readonly_prop
  method _PACK_ALIGNMENT_ : gl_enum Js.t Js.readonly_prop
  method _POINTS : gl_enum Js.t Js.readonly_prop
  method _POLYGON_OFFSET_FACTOR_ : gl_enum Js.t Js.readonly_prop
  method _POLYGON_OFFSET_FILL_ : gl_enum Js.t Js.readonly_prop
  method _POLYGON_OFFSET_UNITS_ : gl_enum Js.t Js.readonly_prop
  method _RED_BITS_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_ALPHA_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_BLUE_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_DEPTH_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_GREEN_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_HEIGHT_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_INTERNAL_FORMAT_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_RED_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_STENCIL_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _RENDERBUFFER_WIDTH_ : gl_enum Js.t Js.readonly_prop
  method _RENDERER : gl_enum Js.t Js.readonly_prop
  method _REPEAT : gl_enum Js.t Js.readonly_prop
  method _REPLACE : gl_enum Js.t Js.readonly_prop
  method _RGB : gl_enum Js.t Js.readonly_prop
  method _RGB565 : gl_enum Js.t Js.readonly_prop
  method _RGB5_A1_ : gl_enum Js.t Js.readonly_prop
  method _RGBA : gl_enum Js.t Js.readonly_prop
  method _RGBA4 : gl_enum Js.t Js.readonly_prop
  method _SAMPLER_2D_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLER_CUBE_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLES : gl_enum Js.t Js.readonly_prop
  method _SAMPLE_ALPHA_TO_COVERAGE_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLE_BUFFERS_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLE_COVERAGE_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLE_COVERAGE_INVERT_ : gl_enum Js.t Js.readonly_prop
  method _SAMPLE_COVERAGE_VALUE_ : gl_enum Js.t Js.readonly_prop
  method _SCISSOR_BOX_ : gl_enum Js.t Js.readonly_prop
  method _SCISSOR_TEST_ : gl_enum Js.t Js.readonly_prop
  method _SHADER_TYPE_ : gl_enum Js.t Js.readonly_prop
  method _SHADING_LANGUAGE_VERSION_ : gl_enum Js.t Js.readonly_prop
  method _SHORT : gl_enum Js.t Js.readonly_prop
  method _SRC_ALPHA_ : gl_enum Js.t Js.readonly_prop
  method _SRC_ALPHA_SATURATE_ : gl_enum Js.t Js.readonly_prop
  method _SRC_COLOR_ : gl_enum Js.t Js.readonly_prop
  method _STATIC_DRAW_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_ATTACHMENT_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BACK_FAIL_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BACK_FUNC_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BACK_PASS_DEPTH_FAIL_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BACK_PASS_DEPTH_PASS_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BACK_REF_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BACK_VALUE_MASK_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BACK_WRITEMASK_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BITS_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_BUFFER_BIT_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_CLEAR_VALUE_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_FAIL_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_FUNC_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_INDEX8_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_PASS_DEPTH_FAIL_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_PASS_DEPTH_PASS_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_REF_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_TEST_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_VALUE_MASK_ : gl_enum Js.t Js.readonly_prop
  method _STENCIL_WRITEMASK_ : gl_enum Js.t Js.readonly_prop
  method _STREAM_DRAW_ : gl_enum Js.t Js.readonly_prop
  method _SUBPIXEL_BITS_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE : gl_enum Js.t Js.readonly_prop
  method _TEXTURE0 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE1 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE10 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE11 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE12 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE13 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE14 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE15 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE16 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE17 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE18 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE19 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE2 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE20 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE21 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE22 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE23 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE24 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE25 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE26 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE27 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE28 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE29 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE3 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE30 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE31 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE4 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE5 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE6 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE7 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE8 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE9 : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_2D_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_BINDING_2D_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_BINDING_CUBE_MAP_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_CUBE_MAP_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_CUBE_MAP_NEGATIVE_X_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_CUBE_MAP_NEGATIVE_Y_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_CUBE_MAP_NEGATIVE_Z_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_CUBE_MAP_POSITIVE_X_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_CUBE_MAP_POSITIVE_Y_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_CUBE_MAP_POSITIVE_Z_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_MAG_FILTER_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_MIN_FILTER_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_WRAP_S_ : gl_enum Js.t Js.readonly_prop
  method _TEXTURE_WRAP_T_ : gl_enum Js.t Js.readonly_prop
  method _TRIANGLES : gl_enum Js.t Js.readonly_prop
  method _TRIANGLE_FAN_ : gl_enum Js.t Js.readonly_prop
  method _TRIANGLE_STRIP_ : gl_enum Js.t Js.readonly_prop
  method _UNPACK_ALIGNMENT_ : gl_enum Js.t Js.readonly_prop
  method _UNPACK_COLORSPACE_CONVERSION_WEBGL_ : gl_enum Js.t Js.readonly_prop
  method _UNPACK_FLIP_Y_WEBGL_ : gl_enum Js.t Js.readonly_prop
  method _UNPACK_PREMULTIPLY_ALPHA_WEBGL_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_BYTE_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_INT_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_SHORT_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_SHORT_4_4_4_4_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_SHORT_5_5_5_1_ : gl_enum Js.t Js.readonly_prop
  method _UNSIGNED_SHORT_5_6_5_ : gl_enum Js.t Js.readonly_prop
  method _VALIDATE_STATUS_ : gl_enum Js.t Js.readonly_prop
  method _VENDOR : gl_enum Js.t Js.readonly_prop
  method _VERSION : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_ENABLED_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_NORMALIZED_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_POINTER_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_SIZE_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_STRIDE_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_ATTRIB_ARRAY_TYPE_ : gl_enum Js.t Js.readonly_prop
  method _VERTEX_SHADER_ : gl_enum Js.t Js.readonly_prop
  method _VIEWPORT : gl_enum Js.t Js.readonly_prop
  method _ZERO : gl_enum Js.t Js.readonly_prop
end

(* see {!Browser.Web_socket} for module definition *)
class type web_socket = object
  method _CLOSED : Js.number Js.t Js.readonly_prop
  method _CLOSING : Js.number Js.t Js.readonly_prop
  method _CONNECTING : Js.number Js.t Js.readonly_prop
  method _OPEN : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Wheel_event} for module definition *)
class type wheel_event = object
  method _DOM_DELTA_LINE_ : Js.number Js.t Js.readonly_prop
  method _DOM_DELTA_PAGE_ : Js.number Js.t Js.readonly_prop
  method _DOM_DELTA_PIXEL_ : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Window} for module definition *)
class type window = object
  method _PERSISTENT : Js.number Js.t Js.readonly_prop
  method _TEMPORARY : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Worker} for module definition *)
class type worker = object end

(* see {!Browser.Writable_stream} for module definition *)
class type writable_stream = object end

(* see {!Browser.Writable_stream_default_writer} for module definition *)
class type writable_stream_default_writer = object end

(* see {!Browser.Xml_http_request} for module definition *)
class type xml_http_request = object
  method _DONE : Js.number Js.t Js.readonly_prop
  method _HEADERS_RECEIVED_ : Js.number Js.t Js.readonly_prop
  method _LOADING : Js.number Js.t Js.readonly_prop
  method _OPENED : Js.number Js.t Js.readonly_prop
  method _UNSENT : Js.number Js.t Js.readonly_prop
end
