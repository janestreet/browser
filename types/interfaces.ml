open! Import
open! Enums
open! Types
open! Browser_js_types

class type internal_settings_generated = object end

(* see {!Browser.Event_listener_options} for module definition *)
and event_listener_options = object ('self)
  method capture : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Add_event_listener_options} for module definition *)
and add_event_listener_options = object ('self)
  inherit event_listener_options
  method once : bool Js.t Js.optdef Js.prop
  method passive : bool Js.t Js.optdef Js.prop
  method signal : abort_signal Js.t Js.optdef Js.prop
end

(* see {!Browser.Event_init} for module definition *)
and event_init = object ('self)
  method bubbles : bool Js.t Js.optdef Js.prop
  method cancelable : bool Js.t Js.optdef Js.prop
  method composed : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Animation_event} for module definition *)
and animation_event_init = object ('self)
  inherit event_init
  method animationName : Js.js_string Js.t Js.optdef Js.prop
  method elapsedTime : Js.number Js.t Js.optdef Js.prop
  method pseudoElement : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and authentication_extensions_client_inputs = object ('self)
  method appid : Js.js_string Js.t Js.optdef Js.prop
  method appidExclude : Js.js_string Js.t Js.optdef Js.prop

  method cableAuthentication :
    cable_authentication_data Js.t Js.js_array Js.t Js.optdef Js.prop

  method credBlob : buffer_source Js.t Js.optdef Js.prop
  method credProps : bool Js.t Js.optdef Js.prop
  method credentialProtectionPolicy : Js.js_string Js.t Js.optdef Js.prop
  method enforceCredentialProtectionPolicy : bool Js.t Js.optdef Js.prop
  method getCredBlob : bool Js.t Js.optdef Js.prop
  method hmacCreateSecret : bool Js.t Js.optdef Js.prop
  method minPinLength : bool Js.t Js.optdef Js.prop
  method uvm : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Public_key_credential} for module definition *)
and authentication_extensions_client_outputs = object ('self)
  method appid : bool Js.t Js.optdef Js.prop
  method credBlob : bool Js.t Js.optdef Js.prop
  method credProps : credential_properties_output Js.t Js.optdef Js.prop
  method getCredBlob : Js_of_ocaml.Typed_array.arrayBuffer Js.t Js.optdef Js.prop
  method hmacCreateSecret : bool Js.t Js.optdef Js.prop
  method uvm : Js.number Js.t Js.js_array Js.t Js.js_array Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and authenticator_selection_criteria = object ('self)
  method authenticatorAttachment : Js.js_string Js.t Js.optdef Js.prop
  method requireResidentKey : bool Js.t Js.optdef Js.prop
  method residentKey : Js.js_string Js.t Js.optdef Js.prop
  method userVerification : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Blob_property_bag} for module definition *)
and blob_property_bag = object ('self)
  method endings : ending_type Js.optdef Js.prop
  method type_ : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Css_numeric_value} for module definition *)
and css_numeric_type = object ('self)
  method angle : Js.number Js.t Js.optdef Js.prop
  method flex : Js.number Js.t Js.optdef Js.prop
  method frequency : Js.number Js.t Js.optdef Js.prop
  method length : Js.number Js.t Js.optdef Js.prop
  method percent : Js.number Js.t Js.optdef Js.prop
  method percentHint : css_numeric_base_type Js.optdef Js.prop
  method resolution : Js.number Js.t Js.optdef Js.prop
  method time : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Css_style_sheet} for module definition *)
and css_style_sheet_init = object ('self)
  method alternate : bool Js.t Js.optdef Js.prop
  method disabled : bool Js.t Js.optdef Js.prop
  method media : media_list_or_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and cable_authentication_data = object ('self)
  method authenticatorEid : buffer_source Js.t Js.prop
  method clientEid : buffer_source Js.t Js.prop
  method sessionPreKey : buffer_source Js.t Js.prop
  method version : Js.number Js.t Js.prop
end

(* see {!Browser.Canvas_context_creation_attributes_module} for module definition *)
and canvas_context_creation_attributes_module = object ('self)
  method alpha : bool Js.t Js.optdef Js.prop
  method antialias : bool Js.t Js.optdef Js.prop
  method colorSpace : predefined_color_space Js.optdef Js.prop
  method depth : bool Js.t Js.optdef Js.prop
  method desynchronized : bool Js.t Js.optdef Js.prop
  method failIfMajorPerformanceCaveat : bool Js.t Js.optdef Js.prop
  method powerPreference : canvas_power_preference Js.optdef Js.prop
  method premultipliedAlpha : bool Js.t Js.optdef Js.prop
  method preserveDrawingBuffer : bool Js.t Js.optdef Js.prop
  method stencil : bool Js.t Js.optdef Js.prop
  method willReadFrequently : canvas_will_read_frequently Js.optdef Js.prop
end

(* see {!Browser.Html_canvas_element} for module definition *)
and canvas_rendering_context2d_settings = object ('self)
  method alpha : bool Js.t Js.optdef Js.prop
  method colorSpace : predefined_color_space Js.optdef Js.prop
  method desynchronized : bool Js.t Js.optdef Js.prop
  method willReadFrequently : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Element} for module definition *)
and check_visibility_options = object ('self)
  method checkOpacity : bool Js.t Js.optdef Js.prop
  method checkVisibilityCSS : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Clipboard_event} for module definition *)
and clipboard_event_init = object ('self)
  inherit event_init
  method clipboardData : data_transfer Js.t Js.opt Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and clipboard_unsanitized_formats = object ('self)
  method unsanitized : Js.js_string Js.t Js.js_array Js.t Js.optdef Js.prop
end

(* see {!Browser.Close_event} for module definition *)
and close_event_init = object ('self)
  inherit event_init
  method code : Js.number Js.t Js.optdef Js.prop
  method reason : Js.js_string Js.t Js.optdef Js.prop
  method wasClean : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Ui_event_init} for module definition *)
and ui_event_init = object ('self)
  inherit event_init
  method detail : Js.number Js.t Js.optdef Js.prop
  method sourceCapabilities : input_device_capabilities Js.t Js.opt Js.optdef Js.prop
  method view : window Js.t Js.opt Js.optdef Js.prop
end

(* see {!Browser.Composition_event} for module definition *)
and composition_event_init = object ('self)
  inherit ui_event_init
  method data : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Media_track_constraints} for module definition *)
and constrain_boolean_parameters = object ('self)
  method exact : bool Js.t Js.optdef Js.prop
  method ideal : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Media_track_constraints} for module definition *)
and constrain_dom_string_parameters = object ('self)
  method exact : string_array_or_string Js.t Js.optdef Js.prop
  method ideal : string_array_or_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Double_range} for module definition *)
and double_range = object ('self)
  method max : Js.number Js.t Js.optdef Js.prop
  method min : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Media_track_constraints} for module definition *)
and constrain_double_range = object ('self)
  inherit double_range
  method exact : Js.number Js.t Js.optdef Js.prop
  method ideal : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Long_range} for module definition *)
and long_range = object ('self)
  method max : Js.number Js.t Js.optdef Js.prop
  method min : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Media_track_constraints} for module definition *)
and constrain_long_range = object ('self)
  inherit long_range
  method exact : Js.number Js.t Js.optdef Js.prop
  method ideal : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Media_track_constraints} for module definition *)
and constrain_point2d_parameters = object ('self)
  method exact : point2d Js.t Js.js_array Js.t Js.optdef Js.prop
  method ideal : point2d Js.t Js.js_array Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and credential_creation_options = object ('self)
  method federated : federated_credential_init Js.t Js.optdef Js.prop
  method password : password_credential_init Js.t Js.optdef Js.prop
  method publicKey : public_key_credential_creation_options Js.t Js.optdef Js.prop
  method signal : abort_signal Js.t Js.optdef Js.prop
end

(* see {!Browser.Credential_data} for module definition *)
and credential_data = object ('self)
  method id : Js.js_string Js.t Js.prop
end

(* see {!Browser.Public_key_credential} for module definition *)
and credential_properties_output = object ('self)
  method rk : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and credential_request_options = object ('self)
  method federated : federated_credential_request_options Js.t Js.optdef Js.prop
  method identity : identity_credential_request_options Js.t Js.optdef Js.prop
  method mediation : credential_mediation_requirement Js.optdef Js.prop
  method password : bool Js.t Js.optdef Js.prop
  method publicKey : public_key_credential_request_options Js.t Js.optdef Js.prop
  method signal : abort_signal Js.t Js.optdef Js.prop
end

(* see {!Browser.Custom_event} for module definition *)
and custom_event_init = object ('self)
  inherit event_init
  method detail : Js.Unsafe.any Js.optdef Js.prop
end

(* see {!Browser.Dom_matrix2d_init} for module definition *)
and dom_matrix2d_init = object ('self)
  method a : Js.number Js.t Js.optdef Js.prop
  method b : Js.number Js.t Js.optdef Js.prop
  method c : Js.number Js.t Js.optdef Js.prop
  method d : Js.number Js.t Js.optdef Js.prop
  method e : Js.number Js.t Js.optdef Js.prop
  method f : Js.number Js.t Js.optdef Js.prop
  method m11 : Js.number Js.t Js.optdef Js.prop
  method m12 : Js.number Js.t Js.optdef Js.prop
  method m21 : Js.number Js.t Js.optdef Js.prop
  method m22 : Js.number Js.t Js.optdef Js.prop
  method m41 : Js.number Js.t Js.optdef Js.prop
  method m42 : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Dom_matrix_init} for module definition *)
and dom_matrix_init = object ('self)
  inherit dom_matrix2d_init
  method is2D : bool Js.t Js.optdef Js.prop
  method m13 : Js.number Js.t Js.optdef Js.prop
  method m14 : Js.number Js.t Js.optdef Js.prop
  method m23 : Js.number Js.t Js.optdef Js.prop
  method m24 : Js.number Js.t Js.optdef Js.prop
  method m31 : Js.number Js.t Js.optdef Js.prop
  method m32 : Js.number Js.t Js.optdef Js.prop
  method m33 : Js.number Js.t Js.optdef Js.prop
  method m34 : Js.number Js.t Js.optdef Js.prop
  method m43 : Js.number Js.t Js.optdef Js.prop
  method m44 : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Dom_point_init} for module definition *)
and dom_point_init = object ('self)
  method w : Js.number Js.t Js.optdef Js.prop
  method x : Js.number Js.t Js.optdef Js.prop
  method y : Js.number Js.t Js.optdef Js.prop
  method z : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Dom_rect_init} for module definition *)
and dom_rect_init = object ('self)
  method height : Js.number Js.t Js.optdef Js.prop
  method width : Js.number Js.t Js.optdef Js.prop
  method x : Js.number Js.t Js.optdef Js.prop
  method y : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and display_media_stream_options = object ('self)
  method audio : media_track_constraints_or_bool Js.t Js.optdef Js.prop
  method monitorTypeSurfaces : display_media_include_or_exclude Js.optdef Js.prop
  method preferCurrentTab : bool Js.t Js.optdef Js.prop
  method selfBrowserSurface : display_media_include_or_exclude Js.optdef Js.prop
  method surfaceSwitching : display_media_include_or_exclude Js.optdef Js.prop
  method systemAudio : display_media_include_or_exclude Js.optdef Js.prop
  method video : media_track_constraints_or_bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Event_modifier_init} for module definition *)
and event_modifier_init = object ('self)
  inherit ui_event_init
  method altKey : bool Js.t Js.optdef Js.prop
  method ctrlKey : bool Js.t Js.optdef Js.prop
  method metaKey : bool Js.t Js.optdef Js.prop
  method modifierAltGraph : bool Js.t Js.optdef Js.prop
  method modifierCapsLock : bool Js.t Js.optdef Js.prop
  method modifierFn : bool Js.t Js.optdef Js.prop
  method modifierNumLock : bool Js.t Js.optdef Js.prop
  method modifierScrollLock : bool Js.t Js.optdef Js.prop
  method modifierSymbol : bool Js.t Js.optdef Js.prop
  method shiftKey : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Mouse_event_init} for module definition *)
and mouse_event_init = object ('self)
  inherit event_modifier_init
  method button : Js.number Js.t Js.optdef Js.prop
  method buttons : Js.number Js.t Js.optdef Js.prop
  method clientX : Js.number Js.t Js.optdef Js.prop
  method clientY : Js.number Js.t Js.optdef Js.prop
  method movementX : Js.number Js.t Js.optdef Js.prop
  method movementY : Js.number Js.t Js.optdef Js.prop
  method region : Js.js_string Js.t Js.opt Js.optdef Js.prop
  method relatedTarget : event_target Js.t Js.opt Js.optdef Js.prop
  method screenX : Js.number Js.t Js.optdef Js.prop
  method screenY : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Drag_event} for module definition *)
and drag_event_init = object ('self)
  inherit mouse_event_init
  method dataTransfer : data_transfer Js.t Js.opt Js.optdef Js.prop
end

(* see {!Browser.Effect_timing} for module definition *)
and effect_timing = object ('self)
  method delay : css_numeric_value_or_float Js.t Js.optdef Js.prop
  method direction : playback_direction Js.optdef Js.prop
  method duration : css_numeric_value_or_float_or_string Js.t Js.optdef Js.prop
  method easing : Js.js_string Js.t Js.optdef Js.prop
  method endDelay : css_numeric_value_or_float Js.t Js.optdef Js.prop
  method fill : fill_mode Js.optdef Js.prop
  method iterationStart : Js.number Js.t Js.optdef Js.prop
  method iterations : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Document} for module definition *)
and element_creation_options = object ('self)
  method is : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Error_event} for module definition *)
and error_event_init = object ('self)
  inherit event_init
  method colno : Js.number Js.t Js.optdef Js.prop
  method error : Js.Unsafe.any Js.optdef Js.prop
  method filename : Js.js_string Js.t Js.optdef Js.prop
  method lineno : Js.number Js.t Js.optdef Js.prop
  method message : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and federated_credential_init = object ('self)
  inherit credential_data
  method iconURL : Js.js_string Js.t Js.optdef Js.prop
  method name : Js.js_string Js.t Js.optdef Js.prop
  method protocol : Js.js_string Js.t Js.optdef Js.prop
  method provider : Js.js_string Js.t Js.prop
end

(* see {!Browser.Window} for module definition *)
and federated_credential_request_options = object ('self)
  method protocols : Js.js_string Js.t Js.js_array Js.t Js.optdef Js.prop
  method providers : Js.js_string Js.t Js.js_array Js.t Js.optdef Js.prop
end

(* see {!Browser.File} for module definition *)
and file_property_bag = object ('self)
  inherit blob_property_bag
  method lastModified : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Focus_event} for module definition *)
and focus_event_init = object ('self)
  inherit ui_event_init
  method relatedTarget : event_target Js.t Js.opt Js.optdef Js.prop
end

(* see {!Browser.Focus_options} for module definition *)
and focus_options = object ('self)
  method preventScroll : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Font_face} for module definition *)
and font_face_descriptors = object ('self)
  method ascentOverride : cssom_string Js.t Js.optdef Js.prop
  method descentOverride : cssom_string Js.t Js.optdef Js.prop
  method display : cssom_string Js.t Js.optdef Js.prop
  method featureSettings : cssom_string Js.t Js.optdef Js.prop
  method lineGapOverride : cssom_string Js.t Js.optdef Js.prop
  method sizeAdjust : cssom_string Js.t Js.optdef Js.prop
  method stretch : cssom_string Js.t Js.optdef Js.prop
  method style : cssom_string Js.t Js.optdef Js.prop
  method unicodeRange : cssom_string Js.t Js.optdef Js.prop
  method variant : cssom_string Js.t Js.optdef Js.prop
  method weight : cssom_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Element} for module definition *)
and fullscreen_options = object ('self)
  method navigationUI : fullscreen_navigation_ui Js.optdef Js.prop
  method screen : screen Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_object_descriptor_base} for module definition *)
and gpu_object_descriptor_base = object ('self)
  method label : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_bind_group_descriptor} for module definition *)
and gpu_bind_group_descriptor = object ('self)
  inherit gpu_object_descriptor_base
  method entries : gpu_bind_group_entry Js.t Js.js_array Js.t Js.prop
  method layout : (* unresolved GPUBindGroupLayout *) untranslated Js.prop
end

(* see {!Browser.Gpu_bind_group_entry} for module definition *)
and gpu_bind_group_entry = object ('self)
  method binding : gpu_index32 Js.t Js.prop
  method resource : gpu_binding_resource Js.t Js.prop
end

(* see {!Browser.Gpu_bind_group_layout_descriptor} for module definition *)
and gpu_bind_group_layout_descriptor = object ('self)
  inherit gpu_object_descriptor_base
  method entries : gpu_bind_group_layout_entry Js.t Js.js_array Js.t Js.prop
end

(* see {!Browser.Gpu_bind_group_layout_entry} for module definition *)
and gpu_bind_group_layout_entry = object ('self)
  method binding : gpu_index32 Js.t Js.prop
  method buffer : gpu_buffer_binding_layout Js.t Js.optdef Js.prop
  method externalTexture : gpu_external_texture_binding_layout Js.t Js.optdef Js.prop
  method sampler : gpu_sampler_binding_layout Js.t Js.optdef Js.prop
  method storageTexture : gpu_storage_texture_binding_layout Js.t Js.optdef Js.prop
  method texture : gpu_texture_binding_layout Js.t Js.optdef Js.prop
  method visibility : gpu_shader_stage_flags Js.t Js.prop
end

(* see {!Browser.Gpu_blend_component} for module definition *)
and gpu_blend_component = object ('self)
  method dstFactor : gpu_blend_factor Js.optdef Js.prop
  method operation : gpu_blend_operation Js.optdef Js.prop
  method srcFactor : gpu_blend_factor Js.optdef Js.prop
end

(* see {!Browser.Gpu_blend_state} for module definition *)
and gpu_blend_state = object ('self)
  method alpha : gpu_blend_component Js.t Js.prop
  method color : gpu_blend_component Js.t Js.prop
end

(* see {!Browser.Gpu_buffer_binding} for module definition *)
and gpu_buffer_binding = object ('self)
  method buffer : (* unresolved GPUBuffer *) untranslated Js.prop
  method offset : gpu_size64 Js.t Js.optdef Js.prop
  method size : gpu_size64 Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_buffer_binding_layout} for module definition *)
and gpu_buffer_binding_layout = object ('self)
  method hasDynamicOffset : bool Js.t Js.optdef Js.prop
  method minBindingSize : gpu_size64 Js.t Js.optdef Js.prop
  method type_ : gpu_buffer_binding_type Js.optdef Js.prop
end

(* see {!Browser.Gpu_buffer_descriptor} for module definition *)
and gpu_buffer_descriptor = object ('self)
  inherit gpu_object_descriptor_base
  method mappedAtCreation : bool Js.t Js.optdef Js.prop
  method size : gpu_size64 Js.t Js.prop
  method usage : gpu_buffer_usage_flags Js.t Js.prop
end

(* see {!Browser.Gpu_canvas_context} for module definition *)
and gpu_canvas_configuration = object ('self)
  method alphaMode : gpu_canvas_alpha_mode Js.optdef Js.prop
  method colorSpace : predefined_color_space Js.optdef Js.prop
  method device : gpu_device Js.t Js.prop
  method format : gpu_texture_format Js.prop
  method toneMapping : gpu_canvas_tone_mapping Js.t Js.optdef Js.prop
  method usage : gpu_texture_usage_flags Js.t Js.optdef Js.prop
  method viewFormats : gpu_texture_format Js.js_array Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_canvas_context} for module definition *)
and gpu_canvas_tone_mapping = object ('self)
  method mode : gpu_canvas_tone_mapping_mode Js.optdef Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_color_dict = object ('self)
  method a : Js.number Js.t Js.prop
  method b : Js.number Js.t Js.prop
  method g : Js.number Js.t Js.prop
  method r : Js.number Js.t Js.prop
end

(* see {!Browser.Gpu_color_target_state} for module definition *)
and gpu_color_target_state = object ('self)
  method blend : gpu_blend_state Js.t Js.optdef Js.prop
  method format : gpu_texture_format Js.prop
  method writeMask : gpu_color_write_flags Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_command_buffer_descriptor = object ('self)
  inherit gpu_object_descriptor_base
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_command_encoder_descriptor = object ('self)
  inherit gpu_object_descriptor_base
end

(* see {!Browser.Gpu_compute_pass_descriptor} for module definition *)
and gpu_compute_pass_descriptor = object ('self)
  inherit gpu_object_descriptor_base
  method timestampWrites : gpu_compute_pass_timestamp_writes Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_compute_pass_timestamp_writes} for module definition *)
and gpu_compute_pass_timestamp_writes = object ('self)
  method beginningOfPassWriteIndex : gpu_size32 Js.t Js.optdef Js.prop
  method endOfPassWriteIndex : gpu_size32 Js.t Js.optdef Js.prop
  method querySet : gpu_query_set Js.t Js.prop
end

(* see {!Browser.Gpu_pipeline_descriptor_base} for module definition *)
and gpu_pipeline_descriptor_base = object ('self)
  inherit gpu_object_descriptor_base
  method layout : gpu_auto_layout_mode_or_gpu_pipeline_layout Js.t Js.prop
end

(* see {!Browser.Gpu_compute_pipeline_descriptor} for module definition *)
and gpu_compute_pipeline_descriptor = object ('self)
  inherit gpu_pipeline_descriptor_base
  method compute : gpu_programmable_stage Js.t Js.prop
end

(* see {!Browser.Gpu_depth_stencil_state} for module definition *)
and gpu_depth_stencil_state = object ('self)
  method depthBias : gpu_depth_bias Js.t Js.optdef Js.prop
  method depthBiasClamp : Js.number Js.t Js.optdef Js.prop
  method depthBiasSlopeScale : Js.number Js.t Js.optdef Js.prop
  method depthCompare : gpu_compare_function Js.optdef Js.prop
  method depthWriteEnabled : bool Js.t Js.optdef Js.prop
  method format : gpu_texture_format Js.prop
  method stencilBack : gpu_stencil_face_state Js.t Js.optdef Js.prop
  method stencilFront : gpu_stencil_face_state Js.t Js.optdef Js.prop
  method stencilReadMask : gpu_stencil_value Js.t Js.optdef Js.prop
  method stencilWriteMask : gpu_stencil_value Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and gpu_device_descriptor = object ('self)
  inherit gpu_object_descriptor_base
  method defaultQueue : gpu_queue_descriptor Js.t Js.optdef Js.prop
  method requiredFeatures : gpu_feature_name Js.js_array Js.t Js.optdef Js.prop
  method requiredLimits : gpu_size64 Js.t record Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_extent3d_dict = object ('self)
  method depth : Js.Unsafe.any Js.optdef Js.prop
  method depthOrArrayLayers : gpu_integer_coordinate Js.t Js.optdef Js.prop
  method height : gpu_integer_coordinate Js.t Js.optdef Js.prop
  method width : gpu_integer_coordinate Js.t Js.prop
end

(* see {!Browser.Gpu_external_texture_binding_layout} for module definition *)
and gpu_external_texture_binding_layout = object ('self) end

(* see {!Browser.Gpu_external_texture_descriptor} for module definition *)
and gpu_external_texture_descriptor = object ('self)
  inherit gpu_object_descriptor_base
  method colorSpace : predefined_color_space Js.optdef Js.prop
  method source : html_video_element_or_video_frame Js.t Js.prop
end

(* see {!Browser.Gpu_programmable_stage} for module definition *)
and gpu_programmable_stage = object ('self)
  method constants : gpu_pipeline_constant_value Js.t record Js.t Js.optdef Js.prop
  method entryPoint : Js.js_string Js.t Js.optdef Js.prop
  method module_ : (* unresolved GPUShaderModule *) untranslated Js.prop
end

(* see {!Browser.Gpu_fragment_state} for module definition *)
and gpu_fragment_state = object ('self)
  inherit gpu_programmable_stage
  method targets : gpu_color_target_state Js.t Js.opt Js.js_array Js.t Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_image_copy_external_image = object ('self)
  method flipY : bool Js.t Js.optdef Js.prop
  method origin : gpu_origin2d Js.t Js.optdef Js.prop
  method source : gpu_image_copy_external_image_source Js.t Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_texel_copy_texture_info = object ('self)
  method aspect : gpu_texture_aspect Js.optdef Js.prop
  method mipLevel : gpu_size32 Js.t Js.optdef Js.prop
  method origin : gpu_origin3d Js.t Js.optdef Js.prop
  method texture : gpu_texture Js.t Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_image_copy_texture_tagged = object ('self)
  inherit gpu_texel_copy_texture_info
  method colorSpace : predefined_color_space Js.optdef Js.prop
  method premultipliedAlpha : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_multisample_state} for module definition *)
and gpu_multisample_state = object ('self)
  method alphaToCoverageEnabled : bool Js.t Js.optdef Js.prop
  method count : gpu_size32 Js.t Js.optdef Js.prop
  method mask : gpu_sample_mask Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_origin2d_dict = object ('self)
  method x : gpu_integer_coordinate Js.t Js.optdef Js.prop
  method y : gpu_integer_coordinate Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_origin3d_dict = object ('self)
  method x : gpu_integer_coordinate Js.t Js.optdef Js.prop
  method y : gpu_integer_coordinate Js.t Js.optdef Js.prop
  method z : gpu_integer_coordinate Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_pipeline_layout_descriptor} for module definition *)
and gpu_pipeline_layout_descriptor = object ('self)
  inherit gpu_object_descriptor_base

  method bindGroupLayouts :
    (* unresolved GPUBindGroupLayout *)
    untranslated Js.opt Js.js_array Js.t Js.prop
end

(* see {!Browser.Gpu_primitive_state} for module definition *)
and gpu_primitive_state = object ('self)
  method cullMode : gpu_cull_mode Js.optdef Js.prop
  method frontFace : gpu_front_face Js.optdef Js.prop
  method stripIndexFormat : gpu_index_format Js.optdef Js.prop
  method topology : gpu_primitive_topology Js.optdef Js.prop
  method unclippedDepth : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_query_set_descriptor = object ('self)
  inherit gpu_object_descriptor_base
  method count : gpu_size32 Js.t Js.prop
  method type_ : gpu_query_type Js.prop
end

(* see {!Browser.Window} for module definition *)
and gpu_queue_descriptor = object ('self)
  inherit gpu_object_descriptor_base
end

(* see {!Browser.Gpu_render_pass_layout} for module definition *)
and gpu_render_pass_layout = object ('self)
  inherit gpu_object_descriptor_base
  method colorFormats : gpu_texture_format Js.opt Js.js_array Js.t Js.prop
  method depthStencilFormat : gpu_texture_format Js.optdef Js.prop
  method sampleCount : gpu_size32 Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_render_bundle_encoder_descriptor} for module definition *)
and gpu_render_bundle_encoder_descriptor = object ('self)
  inherit gpu_render_pass_layout
  method depthReadOnly : bool Js.t Js.optdef Js.prop
  method stencilReadOnly : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_render_pass_color_attachment = object ('self)
  method clearValue : gpu_color Js.t Js.optdef Js.prop
  method depthSlice : gpu_size32 Js.t Js.optdef Js.prop
  method loadOp : gpu_load_op Js.prop
  method resolveTarget : gpu_texture_view Js.t Js.optdef Js.prop
  method storeOp : gpu_store_op Js.prop
  method view : gpu_texture_view Js.t Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_render_pass_depth_stencil_attachment = object ('self)
  method depthClearValue : Js.number Js.t Js.optdef Js.prop
  method depthLoadOp : gpu_load_op Js.optdef Js.prop
  method depthReadOnly : bool Js.t Js.optdef Js.prop
  method depthStoreOp : gpu_store_op Js.optdef Js.prop
  method stencilClearValue : gpu_stencil_value Js.t Js.optdef Js.prop
  method stencilLoadOp : gpu_load_op Js.optdef Js.prop
  method stencilReadOnly : bool Js.t Js.optdef Js.prop
  method stencilStoreOp : gpu_store_op Js.optdef Js.prop
  method view : gpu_texture_view Js.t Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_render_pass_descriptor = object ('self)
  inherit gpu_object_descriptor_base

  method colorAttachments :
    gpu_render_pass_color_attachment Js.t Js.opt Js.js_array Js.t Js.prop

  method depthStencilAttachment :
    gpu_render_pass_depth_stencil_attachment Js.t Js.optdef Js.prop

  method maxDrawCount : gpu_size64 Js.t Js.optdef Js.prop
  method occlusionQuerySet : gpu_query_set Js.t Js.optdef Js.prop
  method timestampWrites : gpu_render_pass_timestamp_writes Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_render_pass_timestamp_writes = object ('self)
  method beginningOfPassWriteIndex : gpu_size32 Js.t Js.optdef Js.prop
  method endOfPassWriteIndex : gpu_size32 Js.t Js.optdef Js.prop
  method querySet : gpu_query_set Js.t Js.prop
end

(* see {!Browser.Gpu_render_pipeline_descriptor} for module definition *)
and gpu_render_pipeline_descriptor = object ('self)
  inherit gpu_pipeline_descriptor_base
  method depthStencil : gpu_depth_stencil_state Js.t Js.optdef Js.prop
  method fragment : gpu_fragment_state Js.t Js.optdef Js.prop
  method multisample : gpu_multisample_state Js.t Js.optdef Js.prop
  method primitive : gpu_primitive_state Js.t Js.optdef Js.prop
  method vertex : gpu_vertex_state Js.t Js.prop
end

(* see {!Browser.Window} for module definition *)
and gpu_request_adapter_options = object ('self)
  method forceFallbackAdapter : bool Js.t Js.optdef Js.prop
  method powerPreference : gpu_power_preference Js.optdef Js.prop
end

(* see {!Browser.Gpu_sampler_binding_layout} for module definition *)
and gpu_sampler_binding_layout = object ('self)
  method type_ : gpu_sampler_binding_type Js.optdef Js.prop
end

(* see {!Browser.Gpu_sampler_descriptor} for module definition *)
and gpu_sampler_descriptor = object ('self)
  inherit gpu_object_descriptor_base
  method addressModeU : gpu_address_mode Js.optdef Js.prop
  method addressModeV : gpu_address_mode Js.optdef Js.prop
  method addressModeW : gpu_address_mode Js.optdef Js.prop
  method compare : gpu_compare_function Js.optdef Js.prop
  method lodMaxClamp : Js.number Js.t Js.optdef Js.prop
  method lodMinClamp : Js.number Js.t Js.optdef Js.prop
  method magFilter : gpu_filter_mode Js.optdef Js.prop
  method maxAnisotropy : Js.number Js.t Js.optdef Js.prop
  method minFilter : gpu_filter_mode Js.optdef Js.prop
  method mipmapFilter : gpu_mipmap_filter_mode Js.optdef Js.prop
end

(* see {!Browser.Gpu_shader_module_compilation_hint} for module definition *)
and gpu_shader_module_compilation_hint = object ('self)
  method entryPoint : Js.js_string Js.t Js.prop
  method layout : gpu_auto_layout_mode_or_gpu_pipeline_layout Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_shader_module_descriptor} for module definition *)
and gpu_shader_module_descriptor = object ('self)
  inherit gpu_object_descriptor_base
  method code : Js.js_string Js.t Js.prop

  method compilationHints :
    gpu_shader_module_compilation_hint Js.t Js.js_array Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_stencil_face_state} for module definition *)
and gpu_stencil_face_state = object ('self)
  method compare : gpu_compare_function Js.optdef Js.prop
  method depthFailOp : gpu_stencil_operation Js.optdef Js.prop
  method failOp : gpu_stencil_operation Js.optdef Js.prop
  method passOp : gpu_stencil_operation Js.optdef Js.prop
end

(* see {!Browser.Gpu_storage_texture_binding_layout} for module definition *)
and gpu_storage_texture_binding_layout = object ('self)
  method access : gpu_storage_texture_access Js.optdef Js.prop
  method format : gpu_texture_format Js.prop
  method viewDimension : gpu_texture_view_dimension Js.optdef Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_texel_copy_buffer_layout = object ('self)
  method bytesPerRow : gpu_size32 Js.t Js.optdef Js.prop
  method offset : gpu_size64 Js.t Js.optdef Js.prop
  method rowsPerImage : gpu_size32 Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_texel_copy_buffer_info = object ('self)
  inherit gpu_texel_copy_buffer_layout
  method buffer : (* unresolved GPUBuffer *) untranslated Js.prop
end

(* see {!Browser.Gpu_texture_binding_layout} for module definition *)
and gpu_texture_binding_layout = object ('self)
  method multisampled : bool Js.t Js.optdef Js.prop
  method sampleType : gpu_texture_sample_type Js.optdef Js.prop
  method viewDimension : gpu_texture_view_dimension Js.optdef Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_texture_descriptor = object ('self)
  inherit gpu_object_descriptor_base
  method dimension : gpu_texture_dimension Js.optdef Js.prop
  method format : gpu_texture_format Js.prop
  method mipLevelCount : gpu_integer_coordinate Js.t Js.optdef Js.prop
  method sampleCount : gpu_size32 Js.t Js.optdef Js.prop
  method size : gpu_extent3d Js.t Js.prop
  method usage : gpu_texture_usage_flags Js.t Js.prop
  method viewFormats : gpu_texture_format Js.js_array Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_texture} for module definition *)
and gpu_texture_view_descriptor = object ('self)
  inherit gpu_object_descriptor_base
  method arrayLayerCount : gpu_integer_coordinate Js.t Js.optdef Js.prop
  method aspect : gpu_texture_aspect Js.optdef Js.prop
  method baseArrayLayer : gpu_integer_coordinate Js.t Js.optdef Js.prop
  method baseMipLevel : gpu_integer_coordinate Js.t Js.optdef Js.prop
  method dimension : gpu_texture_view_dimension Js.optdef Js.prop
  method format : gpu_texture_format Js.optdef Js.prop
  method mipLevelCount : gpu_integer_coordinate Js.t Js.optdef Js.prop
  method usage : gpu_texture_usage_flags Js.t Js.optdef Js.prop
end

(* see {!Browser.Gpu_vertex_attribute} for module definition *)
and gpu_vertex_attribute = object ('self)
  method format : gpu_vertex_format Js.prop
  method offset : gpu_size64 Js.t Js.prop
  method shaderLocation : gpu_index32 Js.t Js.prop
end

(* see {!Browser.Gpu_vertex_buffer_layout} for module definition *)
and gpu_vertex_buffer_layout = object ('self)
  method arrayStride : gpu_size64 Js.t Js.prop
  method attributes : gpu_vertex_attribute Js.t Js.js_array Js.t Js.prop
  method stepMode : gpu_vertex_step_mode Js.optdef Js.prop
end

(* see {!Browser.Gpu_vertex_state} for module definition *)
and gpu_vertex_state = object ('self)
  inherit gpu_programmable_stage
  method buffers : gpu_vertex_buffer_layout Js.t Js.opt Js.js_array Js.t Js.optdef Js.prop
end

(* see {!Browser.Get_animations_options} for module definition *)
and get_animations_options = object ('self)
  method subtree : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Element} for module definition *)
and get_html_options = object ('self)
  method serializableShadowRoots : bool Js.t Js.optdef Js.prop

  method shadowRoots :
    (* unresolved ShadowRoot *)
    untranslated Js.js_array Js.t Js.optdef Js.prop
end

(* see {!Browser.Node} for module definition *)
and get_root_node_options = object ('self)
  method composed : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Hash_change_event} for module definition *)
and hash_change_event_init = object ('self)
  inherit event_init
  method newURL : Js.js_string Js.t Js.optdef Js.prop
  method oldURL : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and identity_credential_request_options = object ('self)
  method context : identity_credential_request_options_context Js.optdef Js.prop
  method mediation : Js.js_string Js.t Js.optdef Js.prop
  method mode : identity_credential_request_options_mode Js.optdef Js.prop
  method providers : identity_provider_request_options Js.t Js.js_array Js.t Js.prop
end

(* see {!Browser.Identity_provider_config} for module definition *)
and identity_provider_config = object ('self)
  method clientId : Js.js_string Js.t Js.optdef Js.prop
  method configURL : Js.js_string Js.t Js.prop
end

(* see {!Browser.Window} for module definition *)
and identity_provider_field = object ('self)
  method name : Js.js_string Js.t Js.prop
end

(* see {!Browser.Window} for module definition *)
and identity_provider_request_options = object ('self)
  inherit identity_provider_config
  method domainHint : Js.js_string Js.t Js.optdef Js.prop

  method fields :
    identity_provider_field_or_string Js.t Js.js_array Js.t Js.optdef Js.prop

  method loginHint : Js.js_string Js.t Js.optdef Js.prop
  method nonce : Js.js_string Js.t Js.optdef Js.prop
  method params : Js.Unsafe.any Js.optdef Js.prop
end

(* see {!Browser.Idle_request_options} for module definition *)
and idle_request_options = object ('self)
  method timeout : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Image_bitmap_options} for module definition *)
and image_bitmap_options = object ('self)
  method colorSpaceConversion : color_space_conversion Js.optdef Js.prop
  method imageOrientation : image_orientation Js.optdef Js.prop
  method premultiplyAlpha : premultiply_alpha Js.optdef Js.prop
  method resizeHeight : Js.number Js.t Js.optdef Js.prop
  method resizeQuality : resize_quality Js.optdef Js.prop
  method resizeWidth : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Image_data_settings} for module definition *)
and image_data_settings = object ('self)
  method colorSpace : predefined_color_space Js.optdef Js.prop
end

(* see {!Browser.Offscreen_canvas} for module definition *)
and image_encode_options = object ('self)
  method quality : Js.number Js.t Js.optdef Js.prop
  method type_ : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Input_device_capabilities} for module definition *)
and input_device_capabilities_init = object ('self)
  method firesTouchEvents : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Input_event} for module definition *)
and input_event_init = object ('self)
  inherit ui_event_init
  method data : Js.js_string Js.t Js.opt Js.optdef Js.prop
  method dataTransfer : data_transfer Js.t Js.opt Js.optdef Js.prop
  method inputType : Js.js_string Js.t Js.optdef Js.prop
  method isComposing : bool Js.t Js.optdef Js.prop

  method targetRanges :
    (* unresolved StaticRange *)
    untranslated Js.js_array Js.t Js.optdef Js.prop
end

(* see {!Browser.Intersection_observer} for module definition *)
and intersection_observer_init = object ('self)
  method delay : Js.number Js.t Js.optdef Js.prop
  method root : document_or_element Js.t Js.opt Js.optdef Js.prop
  method rootMargin : Js.js_string Js.t Js.optdef Js.prop
  method scrollMargin : Js.js_string Js.t Js.optdef Js.prop
  method threshold : float_array_or_float Js.t Js.optdef Js.prop
  method trackVisibility : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Keyboard_event} for module definition *)
and keyboard_event_init = object ('self)
  inherit event_modifier_init
  method charCode : Js.number Js.t Js.optdef Js.prop
  method code : Js.js_string Js.t Js.optdef Js.prop
  method isComposing : bool Js.t Js.optdef Js.prop
  method key : Js.js_string Js.t Js.optdef Js.prop
  method keyCode : Js.number Js.t Js.optdef Js.prop
  method location : Js.number Js.t Js.optdef Js.prop
  method repeat : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Keyframe_effect_options} for module definition *)
and keyframe_effect_options = object ('self)
  inherit effect_timing
  method composite : composite_operation Js.optdef Js.prop
  method pseudoElement : cssom_string Js.t Js.opt Js.optdef Js.prop
end

(* see {!Browser.Keyframe_animation_options} for module definition *)
and keyframe_animation_options = object ('self)
  inherit keyframe_effect_options
  method id : Js.js_string Js.t Js.optdef Js.prop
  method rangeEnd : timeline_range_offset_or_string Js.t Js.optdef Js.prop
  method rangeStart : timeline_range_offset_or_string Js.t Js.optdef Js.prop

  method timeline :
    (* unresolved AnimationTimeline *)
    untranslated Js.opt Js.optdef Js.prop
end

(* see {!Browser.Midi_options} for module definition *)
and midi_options = object ('self)
  method sysex : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Media_key_system_configuration} for module definition *)
and media_key_system_configuration = object ('self)
  method audioCapabilities :
    media_key_system_media_capability Js.t Js.js_array Js.t Js.optdef Js.prop

  method distinctiveIdentifier : media_keys_requirement Js.optdef Js.prop
  method initDataTypes : Js.js_string Js.t Js.js_array Js.t Js.optdef Js.prop
  method label : Js.js_string Js.t Js.optdef Js.prop
  method persistentState : media_keys_requirement Js.optdef Js.prop
  method sessionTypes : Js.js_string Js.t Js.js_array Js.t Js.optdef Js.prop

  method videoCapabilities :
    media_key_system_media_capability Js.t Js.js_array Js.t Js.optdef Js.prop
end

(* see {!Browser.Media_key_system_configuration} for module definition *)
and media_key_system_media_capability = object ('self)
  method contentType : Js.js_string Js.t Js.optdef Js.prop
  method encryptionScheme : Js.js_string Js.t Js.opt Js.optdef Js.prop
  method robustness : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Media_stream_track} for module definition *)
and media_settings_range = object ('self)
  method max : Js.number Js.t Js.optdef Js.prop
  method min : Js.number Js.t Js.optdef Js.prop
  method step : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Media_stream_constraints} for module definition *)
and media_stream_constraints = object ('self)
  method audio : media_track_constraints_or_bool Js.t Js.optdef Js.prop
  method controller : (* unresolved CaptureController *) untranslated Js.optdef Js.prop
  method monitorTypeSurfaces : display_media_include_or_exclude Js.optdef Js.prop
  method preferCurrentTab : bool Js.t Js.optdef Js.prop
  method selfBrowserSurface : display_media_include_or_exclude Js.optdef Js.prop
  method surfaceSwitching : display_media_include_or_exclude Js.optdef Js.prop
  method systemAudio : display_media_include_or_exclude Js.optdef Js.prop
  method video : media_track_constraints_or_bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Media_stream_track} for module definition *)
and media_track_capabilities = object ('self)
  method aspectRatio : double_range Js.t Js.optdef Js.prop
  method autoGainControl : bool Js.t Js.js_array Js.t Js.optdef Js.prop
  method brightness : media_settings_range Js.t Js.optdef Js.prop
  method channelCount : long_range Js.t Js.optdef Js.prop
  method colorTemperature : media_settings_range Js.t Js.optdef Js.prop
  method contrast : media_settings_range Js.t Js.optdef Js.prop
  method deviceId : Js.js_string Js.t Js.optdef Js.prop
  method displaySurface : Js.js_string Js.t Js.optdef Js.prop
  method echoCancellation : bool Js.t Js.js_array Js.t Js.optdef Js.prop
  method exposureCompensation : media_settings_range Js.t Js.optdef Js.prop
  method exposureMode : Js.js_string Js.t Js.js_array Js.t Js.optdef Js.prop
  method exposureTime : media_settings_range Js.t Js.optdef Js.prop
  method facingMode : Js.js_string Js.t Js.js_array Js.t Js.optdef Js.prop
  method focusDistance : media_settings_range Js.t Js.optdef Js.prop
  method focusMode : Js.js_string Js.t Js.js_array Js.t Js.optdef Js.prop
  method frameRate : double_range Js.t Js.optdef Js.prop
  method groupId : Js.js_string Js.t Js.optdef Js.prop
  method height : long_range Js.t Js.optdef Js.prop
  method iso : media_settings_range Js.t Js.optdef Js.prop
  method latency : double_range Js.t Js.optdef Js.prop
  method noiseSuppression : bool Js.t Js.js_array Js.t Js.optdef Js.prop
  method pan : media_settings_range Js.t Js.optdef Js.prop
  method resizeMode : Js.js_string Js.t Js.js_array Js.t Js.optdef Js.prop
  method sampleRate : long_range Js.t Js.optdef Js.prop
  method sampleSize : long_range Js.t Js.optdef Js.prop
  method saturation : media_settings_range Js.t Js.optdef Js.prop
  method sharpness : media_settings_range Js.t Js.optdef Js.prop
  method tilt : media_settings_range Js.t Js.optdef Js.prop
  method torch : bool Js.t Js.optdef Js.prop
  method voiceIsolation : bool Js.t Js.js_array Js.t Js.optdef Js.prop
  method whiteBalanceMode : Js.js_string Js.t Js.js_array Js.t Js.optdef Js.prop
  method width : long_range Js.t Js.optdef Js.prop
  method zoom : media_settings_range Js.t Js.optdef Js.prop
end

(* see {!Browser.Media_track_constraint_set} for module definition *)
and media_track_constraint_set = object ('self)
  method _optional : Js.Unsafe.any Js.js_array Js.t Js.optdef Js.prop
  method aspectRatio : constrain_double Js.t Js.optdef Js.prop
  method autoGainControl : constrain_boolean Js.t Js.optdef Js.prop
  method brightness : constrain_double Js.t Js.optdef Js.prop
  method channelCount : constrain_long Js.t Js.optdef Js.prop
  method colorTemperature : constrain_double Js.t Js.optdef Js.prop
  method contrast : constrain_double Js.t Js.optdef Js.prop
  method deviceId : constrain_dom_string Js.t Js.optdef Js.prop
  method displaySurface : constrain_dom_string Js.t Js.optdef Js.prop
  method echoCancellation : constrain_boolean Js.t Js.optdef Js.prop
  method exposureCompensation : constrain_double Js.t Js.optdef Js.prop
  method exposureMode : constrain_dom_string Js.t Js.optdef Js.prop
  method exposureTime : constrain_double Js.t Js.optdef Js.prop
  method facingMode : constrain_dom_string Js.t Js.optdef Js.prop
  method focusDistance : constrain_double Js.t Js.optdef Js.prop
  method focusMode : constrain_dom_string Js.t Js.optdef Js.prop
  method frameRate : constrain_double Js.t Js.optdef Js.prop
  method groupId : constrain_dom_string Js.t Js.optdef Js.prop
  method height : constrain_long Js.t Js.optdef Js.prop
  method iso : constrain_double Js.t Js.optdef Js.prop
  method latency : constrain_double Js.t Js.optdef Js.prop
  method mandatory : Js.Unsafe.any Js.optdef Js.prop
  method noiseSuppression : constrain_boolean Js.t Js.optdef Js.prop
  method pan : constrain_double_or_bool Js.t Js.optdef Js.prop
  method pointsOfInterest : constrain_point2d Js.t Js.optdef Js.prop
  method resizeMode : constrain_dom_string Js.t Js.optdef Js.prop
  method sampleRate : constrain_long Js.t Js.optdef Js.prop
  method sampleSize : constrain_long Js.t Js.optdef Js.prop
  method saturation : constrain_double Js.t Js.optdef Js.prop
  method sharpness : constrain_double Js.t Js.optdef Js.prop
  method suppressLocalAudioPlayback : constrain_boolean Js.t Js.optdef Js.prop
  method tilt : constrain_double_or_bool Js.t Js.optdef Js.prop
  method torch : constrain_boolean Js.t Js.optdef Js.prop
  method voiceIsolation : constrain_boolean Js.t Js.optdef Js.prop
  method whiteBalanceMode : constrain_dom_string Js.t Js.optdef Js.prop
  method width : constrain_long Js.t Js.optdef Js.prop
  method zoom : constrain_double_or_bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Media_track_constraints} for module definition *)
and media_track_constraints = object ('self)
  inherit media_track_constraint_set
  method advanced : media_track_constraint_set Js.t Js.js_array Js.t Js.optdef Js.prop
end

(* see {!Browser.Media_stream_track} for module definition *)
and media_track_settings = object ('self)
  method aspectRatio : Js.number Js.t Js.optdef Js.prop
  method autoGainControl : bool Js.t Js.optdef Js.prop
  method brightness : Js.number Js.t Js.optdef Js.prop
  method channelCount : Js.number Js.t Js.optdef Js.prop
  method colorTemperature : Js.number Js.t Js.optdef Js.prop
  method contrast : Js.number Js.t Js.optdef Js.prop
  method cursor : Js.js_string Js.t Js.optdef Js.prop
  method deviceId : Js.js_string Js.t Js.optdef Js.prop
  method displaySurface : Js.js_string Js.t Js.optdef Js.prop
  method echoCancellation : bool Js.t Js.optdef Js.prop
  method exposureCompensation : Js.number Js.t Js.optdef Js.prop
  method exposureMode : Js.js_string Js.t Js.optdef Js.prop
  method exposureTime : Js.number Js.t Js.optdef Js.prop
  method facingMode : Js.js_string Js.t Js.optdef Js.prop
  method focusDistance : Js.number Js.t Js.optdef Js.prop
  method focusMode : Js.js_string Js.t Js.optdef Js.prop
  method frameRate : Js.number Js.t Js.optdef Js.prop
  method groupId : Js.js_string Js.t Js.optdef Js.prop
  method height : Js.number Js.t Js.optdef Js.prop
  method iso : Js.number Js.t Js.optdef Js.prop
  method latency : Js.number Js.t Js.optdef Js.prop
  method logicalSurface : bool Js.t Js.optdef Js.prop
  method noiseSuppression : bool Js.t Js.optdef Js.prop
  method pan : Js.number Js.t Js.optdef Js.prop
  method pointsOfInterest : point2d Js.t Js.js_array Js.t Js.optdef Js.prop
  method resizeMode : Js.js_string Js.t Js.optdef Js.prop
  method sampleRate : Js.number Js.t Js.optdef Js.prop
  method sampleSize : Js.number Js.t Js.optdef Js.prop
  method saturation : Js.number Js.t Js.optdef Js.prop
  method sharpness : Js.number Js.t Js.optdef Js.prop
  method suppressLocalAudioPlayback : bool Js.t Js.optdef Js.prop
  method tilt : Js.number Js.t Js.optdef Js.prop
  method torch : bool Js.t Js.optdef Js.prop
  method voiceIsolation : bool Js.t Js.optdef Js.prop
  method whiteBalanceMode : Js.js_string Js.t Js.optdef Js.prop
  method width : Js.number Js.t Js.optdef Js.prop
  method zoom : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and media_track_supported_constraints = object ('self)
  method aspectRatio : bool Js.t Js.optdef Js.prop
  method autoGainControl : bool Js.t Js.optdef Js.prop
  method brightness : bool Js.t Js.optdef Js.prop
  method channelCount : bool Js.t Js.optdef Js.prop
  method colorTemperature : bool Js.t Js.optdef Js.prop
  method contrast : bool Js.t Js.optdef Js.prop
  method deviceId : bool Js.t Js.optdef Js.prop
  method displaySurface : bool Js.t Js.optdef Js.prop
  method echoCancellation : bool Js.t Js.optdef Js.prop
  method exposureCompensation : bool Js.t Js.optdef Js.prop
  method exposureMode : bool Js.t Js.optdef Js.prop
  method exposureTime : bool Js.t Js.optdef Js.prop
  method facingMode : bool Js.t Js.optdef Js.prop
  method focusDistance : bool Js.t Js.optdef Js.prop
  method focusMode : bool Js.t Js.optdef Js.prop
  method frameRate : bool Js.t Js.optdef Js.prop
  method groupId : bool Js.t Js.optdef Js.prop
  method height : bool Js.t Js.optdef Js.prop
  method iso : bool Js.t Js.optdef Js.prop
  method latency : bool Js.t Js.optdef Js.prop
  method noiseSuppression : bool Js.t Js.optdef Js.prop
  method pan : bool Js.t Js.optdef Js.prop
  method pointsOfInterest : bool Js.t Js.optdef Js.prop
  method resizeMode : bool Js.t Js.optdef Js.prop
  method sampleRate : bool Js.t Js.optdef Js.prop
  method sampleSize : bool Js.t Js.optdef Js.prop
  method saturation : bool Js.t Js.optdef Js.prop
  method sharpness : bool Js.t Js.optdef Js.prop
  method suppressLocalAudioPlayback : bool Js.t Js.optdef Js.prop
  method tilt : bool Js.t Js.optdef Js.prop
  method torch : bool Js.t Js.optdef Js.prop
  method voiceIsolation : bool Js.t Js.optdef Js.prop
  method whiteBalanceMode : bool Js.t Js.optdef Js.prop
  method width : bool Js.t Js.optdef Js.prop
  method zoom : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Message_event} for module definition *)
and message_event_init = object ('self)
  inherit event_init
  method data : Js.Unsafe.any Js.optdef Js.prop
  method lastEventId : Js.js_string Js.t Js.optdef Js.prop
  method origin : Js.js_string Js.t Js.optdef Js.prop

  method ports :
    (* unresolved MessagePort *)
    untranslated Js.js_array Js.t Js.optdef Js.prop

  method source : event_target Js.t Js.opt Js.optdef Js.prop

  method userActivation :
    (* unresolved UserActivation *)
    untranslated Js.opt Js.optdef Js.prop
end

(* see {!Browser.Mutation_observer} for module definition *)
and mutation_observer_init = object ('self)
  method attributeFilter : Js.js_string Js.t Js.js_array Js.t Js.optdef Js.prop
  method attributeOldValue : bool Js.t Js.optdef Js.prop
  method attributes : bool Js.t Js.optdef Js.prop
  method characterData : bool Js.t Js.optdef Js.prop
  method characterDataOldValue : bool Js.t Js.optdef Js.prop
  method childList : bool Js.t Js.optdef Js.prop
  method subtree : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Navigate_event} for module definition *)
and navigate_event_init = object ('self)
  inherit event_init
  method canIntercept : bool Js.t Js.optdef Js.prop
  method destination : (* unresolved NavigationDestination *) untranslated Js.prop
  method downloadRequest : Js.js_string Js.t Js.opt Js.optdef Js.prop
  method formData : form_data Js.t Js.opt Js.optdef Js.prop
  method hasUAVisualTransition : bool Js.t Js.optdef Js.prop
  method hashChange : bool Js.t Js.optdef Js.prop
  method info : Js.Unsafe.any Js.optdef Js.prop
  method navigationType : navigation_type Js.optdef Js.prop
  method signal : abort_signal Js.t Js.prop
  method sourceElement : element Js.t Js.opt Js.optdef Js.prop
  method userInitiated : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Navigate_event} for module definition *)
and navigation_intercept_options = object ('self)
  method commit : navigation_commit_behavior Js.optdef Js.prop
  method focusReset : navigation_focus_reset Js.optdef Js.prop
  method handler : (unit, unit js_promise Js.t) Js.meth_callback Js.optdef Js.prop
  method scroll : navigation_scroll_behavior Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and navigation_options = object ('self)
  method info : Js.Unsafe.any Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and navigation_navigate_options = object ('self)
  inherit navigation_options
  method history : navigation_history_behavior Js.optdef Js.prop
  method state : Js.Unsafe.any Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and navigation_reload_options = object ('self)
  inherit navigation_options
  method state : Js.Unsafe.any Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and navigation_result = object ('self)
  method committed : navigation_history_entry Js.t js_promise Js.t Js.optdef Js.prop
  method finished : navigation_history_entry Js.t js_promise Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and navigation_update_current_entry_options = object ('self)
  method state : Js.Unsafe.any Js.prop
end

(* see {!Browser.Window} for module definition *)
and password_credential_data = object ('self)
  inherit credential_data
  method iconURL : Js.js_string Js.t Js.optdef Js.prop
  method name : Js.js_string Js.t Js.optdef Js.prop
  method password : Js.js_string Js.t Js.prop
end

(* see {!Browser.Performance_mark_options} for module definition *)
and performance_mark_options = object ('self)
  method detail : Js.Unsafe.any Js.optdef Js.prop
  method startTime : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Performance_measure_options} for module definition *)
and performance_measure_options = object ('self)
  method detail : Js.Unsafe.any Js.optdef Js.prop
  method duration : Js.number Js.t Js.optdef Js.prop
  method end_ : float_or_string Js.t Js.optdef Js.prop
  method start : float_or_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Performance_observer_callback_options} for module definition *)
and performance_observer_callback_options = object ('self)
  method droppedEntriesCount : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Performance_observer} for module definition *)
and performance_observer_init = object ('self)
  method buffered : bool Js.t Js.optdef Js.prop
  method durationThreshold : Js.number Js.t Js.optdef Js.prop
  method entryTypes : Js.js_string Js.t Js.js_array Js.t Js.optdef Js.prop
  method includeSoftNavigationObservations : bool Js.t Js.optdef Js.prop
  method type_ : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Video_frame} for module definition *)
and plane_layout = object ('self)
  method offset : Js.number Js.t Js.prop
  method stride : Js.number Js.t Js.prop
end

(* see {!Browser.Point2d} for module definition *)
and point2d = object ('self)
  method x : Js.number Js.t Js.optdef Js.prop
  method y : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Pointer_event} for module definition *)
and pointer_event_init = object ('self)
  inherit mouse_event_init
  method altitudeAngle : Js.number Js.t Js.optdef Js.prop
  method azimuthAngle : Js.number Js.t Js.optdef Js.prop
  method coalescedEvents : pointer_event Js.t Js.js_array Js.t Js.optdef Js.prop
  method height : Js.number Js.t Js.optdef Js.prop
  method isPrimary : bool Js.t Js.optdef Js.prop
  method persistentDeviceId : Js.number Js.t Js.optdef Js.prop
  method pointerId : Js.number Js.t Js.optdef Js.prop
  method pointerType : Js.js_string Js.t Js.optdef Js.prop
  method predictedEvents : pointer_event Js.t Js.js_array Js.t Js.optdef Js.prop
  method pressure : Js.number Js.t Js.optdef Js.prop
  method tangentialPressure : Js.number Js.t Js.optdef Js.prop
  method tiltX : Js.number Js.t Js.optdef Js.prop
  method tiltY : Js.number Js.t Js.optdef Js.prop
  method twist : Js.number Js.t Js.optdef Js.prop
  method width : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Element} for module definition *)
and pointer_lock_options = object ('self)
  method unadjustedMovement : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Pop_state_event} for module definition *)
and pop_state_event_init = object ('self)
  inherit event_init
  method hasUAVisualTransition : bool Js.t Js.optdef Js.prop
  method state : Js.Unsafe.any Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and position_options = object ('self)
  method enableHighAccuracy : bool Js.t Js.optdef Js.prop
  method maximumAge : Js.number Js.t Js.optdef Js.prop
  method timeout : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Structured_serialize_options} for module definition *)
and structured_serialize_options = object ('self)
  method transfer : Js.Unsafe.any Js.js_array Js.t Js.optdef Js.prop
end

(* see {!Browser.Post_message_options} for module definition *)
and post_message_options = object ('self)
  inherit structured_serialize_options
  method includeUserActivation : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Progress_event} for module definition *)
and progress_event_init = object ('self)
  inherit event_init
  method lengthComputable : bool Js.t Js.optdef Js.prop
  method loaded : Js.number Js.t Js.optdef Js.prop
  method total : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Css} for module definition *)
and property_definition = object ('self)
  method inherits : bool Js.t Js.prop
  method initialValue : Js.js_string Js.t Js.optdef Js.prop
  method name : Js.js_string Js.t Js.prop
  method syntax : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and public_key_credential_creation_options = object ('self)
  method attestation : Js.js_string Js.t Js.optdef Js.prop
  method authenticatorSelection : authenticator_selection_criteria Js.t Js.optdef Js.prop
  method challenge : buffer_source Js.t Js.prop

  method excludeCredentials :
    public_key_credential_descriptor Js.t Js.js_array Js.t Js.optdef Js.prop

  method extensions : authentication_extensions_client_inputs Js.t Js.optdef Js.prop
  method hints : Js.js_string Js.t Js.js_array Js.t Js.optdef Js.prop
  method pubKeyCredParams : public_key_credential_parameters Js.t Js.js_array Js.t Js.prop
  method rp : public_key_credential_rp_entity Js.t Js.prop
  method timeout : Js.number Js.t Js.optdef Js.prop
  method user : public_key_credential_user_entity Js.t Js.prop
end

(* see {!Browser.Window} for module definition *)
and public_key_credential_descriptor = object ('self)
  method id : buffer_source Js.t Js.prop
  method transports : Js.js_string Js.t Js.js_array Js.t Js.optdef Js.prop
  method type_ : Js.js_string Js.t Js.prop
end

(* see {!Browser.Public_key_credential_entity} for module definition *)
and public_key_credential_entity = object ('self)
  method name : Js.js_string Js.t Js.prop
end

(* see {!Browser.Window} for module definition *)
and public_key_credential_parameters = object ('self)
  method alg : cose_algorithm_identifier Js.t Js.prop
  method type_ : Js.js_string Js.t Js.prop
end

(* see {!Browser.Window} for module definition *)
and public_key_credential_request_options = object ('self)
  method allowCredentials :
    public_key_credential_descriptor Js.t Js.js_array Js.t Js.optdef Js.prop

  method challenge : buffer_source Js.t Js.optdef Js.prop
  method extensions : authentication_extensions_client_inputs Js.t Js.optdef Js.prop
  method hints : Js.js_string Js.t Js.js_array Js.t Js.optdef Js.prop
  method rpId : Js.js_string Js.t Js.optdef Js.prop
  method timeout : Js.number Js.t Js.optdef Js.prop
  method userVerification : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and public_key_credential_rp_entity = object ('self)
  inherit public_key_credential_entity
  method id : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and public_key_credential_user_entity = object ('self)
  inherit public_key_credential_entity
  method displayName : Js.js_string Js.t Js.prop
  method id : buffer_source Js.t Js.prop
end

(* see {!Browser.Readable_stream_get_reader_options} for module definition *)
and readable_stream_get_reader_options = object ('self)
  method mode : readable_stream_reader_mode Js.optdef Js.prop
end

(* see {!Browser.Readable_stream} for module definition *)
and readable_writable_pair = object ('self)
  method readable : readable_stream Js.t Js.prop
  method writable : writable_stream Js.t Js.prop
end

(* see {!Browser.Request_init} for module definition *)
and request_init = object ('self)
  method body : Js.Unsafe.any Js.optdef Js.prop
  method cache : request_cache Js.optdef Js.prop
  method credentials : request_credentials Js.optdef Js.prop
  method headers : headers_init Js.t Js.optdef Js.prop
  method integrity : Js.js_string Js.t Js.optdef Js.prop
  method keepalive : bool Js.t Js.optdef Js.prop
  method method_ : Js.js_string Js.t Js.optdef Js.prop
  method mode : request_mode Js.optdef Js.prop
  method priority : fetch_priority Js.optdef Js.prop
  method redirect : request_redirect Js.optdef Js.prop
  method referrer : Js.js_string Js.t Js.optdef Js.prop
  method referrerPolicy : referrer_policy Js.optdef Js.prop
  method signal : abort_signal Js.t Js.opt Js.optdef Js.prop
end

(* see {!Browser.Resize_observer} for module definition *)
and resize_observer_options = object ('self)
  method box : resize_observer_box_options Js.optdef Js.prop
end

(* see {!Browser.Response} for module definition *)
and response_init = object ('self)
  method headers : headers_init Js.t Js.optdef Js.prop
  method status : Js.number Js.t Js.optdef Js.prop
  method statusText : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Scroll_options} for module definition *)
and scroll_options = object ('self)
  method behavior : scroll_behavior Js.optdef Js.prop
end

(* see {!Browser.Element} for module definition *)
and scroll_into_view_options = object ('self)
  inherit scroll_options
  method block : scroll_logical_position Js.optdef Js.prop
  method inline : scroll_logical_position Js.optdef Js.prop
end

(* see {!Browser.Scroll_to_options} for module definition *)
and scroll_to_options = object ('self)
  inherit scroll_options
  method left : Js.number Js.t Js.optdef Js.prop
  method top : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Shadow_root_init} for module definition *)
and shadow_root_init = object ('self)
  method clonable : bool Js.t Js.optdef Js.prop
  method delegatesFocus : bool Js.t Js.optdef Js.prop
  method mode : shadow_root_mode Js.prop
  method serializable : bool Js.t Js.optdef Js.prop
  method slotAssignment : slot_assignment_mode Js.optdef Js.prop
end

(* see {!Browser.Html_element} for module definition *)
and show_popover_options = object ('self)
  method source : html_element Js.t Js.optdef Js.prop
end

(* see {!Browser.Storage_access_types} for module definition *)
and storage_access_types = object ('self)
  method _BroadcastChannel : bool Js.t Js.optdef Js.prop
  method _SharedWorker : bool Js.t Js.optdef Js.prop
  method all : bool Js.t Js.optdef Js.prop
  method caches : bool Js.t Js.optdef Js.prop
  method cookies : bool Js.t Js.optdef Js.prop
  method createObjectURL : bool Js.t Js.optdef Js.prop
  method estimate : bool Js.t Js.optdef Js.prop
  method getDirectory : bool Js.t Js.optdef Js.prop
  method indexedDB : bool Js.t Js.optdef Js.prop
  method localStorage : bool Js.t Js.optdef Js.prop
  method locks : bool Js.t Js.optdef Js.prop
  method revokeObjectURL : bool Js.t Js.optdef Js.prop
  method sessionStorage : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Storage_event} for module definition *)
and storage_event_init = object ('self)
  inherit event_init
  method key : Js.js_string Js.t Js.opt Js.optdef Js.prop
  method newValue : Js.js_string Js.t Js.opt Js.optdef Js.prop
  method oldValue : Js.js_string Js.t Js.opt Js.optdef Js.prop
  method storageArea : storage Js.t Js.opt Js.optdef Js.prop
  method url : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Readable_stream} for module definition *)
and stream_pipe_options = object ('self)
  method preventAbort : bool Js.t Js.optdef Js.prop
  method preventCancel : bool Js.t Js.optdef Js.prop
  method preventClose : bool Js.t Js.optdef Js.prop
  method signal : abort_signal Js.t Js.optdef Js.prop
end

(* see {!Browser.Submit_event} for module definition *)
and submit_event_init = object ('self)
  inherit event_init
  method submitter : html_element Js.t Js.opt Js.optdef Js.prop
end

(* see {!Browser.Timeline_range_offset} for module definition *)
and timeline_range_offset = object ('self)
  method offset : css_numeric_value Js.t Js.optdef Js.prop
  method rangeName : timeline_range Js.optdef Js.prop
end

(* see {!Browser.Toggle_event} for module definition *)
and toggle_event_init = object ('self)
  inherit event_init
  method newState : Js.js_string Js.t Js.optdef Js.prop
  method oldState : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Html_element} for module definition *)
and toggle_popover_options = object ('self)
  inherit show_popover_options
  method force : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Touch_event} for module definition *)
and touch_event_init = object ('self)
  inherit event_modifier_init
  method changedTouches : touch Js.t Js.js_array Js.t Js.optdef Js.prop
  method targetTouches : touch Js.t Js.js_array Js.t Js.optdef Js.prop
  method touches : touch Js.t Js.js_array Js.t Js.optdef Js.prop
end

(* see {!Browser.Touch} for module definition *)
and touch_init = object ('self)
  method clientX : Js.number Js.t Js.optdef Js.prop
  method clientY : Js.number Js.t Js.optdef Js.prop
  method force : Js.number Js.t Js.optdef Js.prop
  method identifier : Js.number Js.t Js.prop
  method pageX : Js.number Js.t Js.optdef Js.prop
  method pageY : Js.number Js.t Js.optdef Js.prop
  method radiusX : Js.number Js.t Js.optdef Js.prop
  method radiusY : Js.number Js.t Js.optdef Js.prop
  method rotationAngle : Js.number Js.t Js.optdef Js.prop
  method screenX : Js.number Js.t Js.optdef Js.prop
  method screenY : Js.number Js.t Js.optdef Js.prop
  method target : event_target Js.t Js.prop
end

(* see {!Browser.Transition_event} for module definition *)
and transition_event_init = object ('self)
  inherit event_init
  method elapsedTime : Js.number Js.t Js.optdef Js.prop
  method propertyName : Js.js_string Js.t Js.optdef Js.prop
  method pseudoElement : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and user_media_stream_constraints = object ('self)
  method audio : media_track_constraints_or_bool Js.t Js.optdef Js.prop
  method video : media_track_constraints_or_bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Video_frame} for module definition *)
and video_color_space_init = object ('self)
  method fullRange : bool Js.t Js.opt Js.optdef Js.prop
  method matrix : video_matrix_coefficients Js.opt Js.optdef Js.prop
  method primaries : video_color_primaries Js.opt Js.optdef Js.prop
  method transfer : video_transfer_characteristics Js.opt Js.optdef Js.prop
end

(* see {!Browser.Video_frame} for module definition *)
and video_frame_buffer_init = object ('self)
  method codedHeight : Js.number Js.t Js.prop
  method codedWidth : Js.number Js.t Js.prop
  method colorSpace : video_color_space_init Js.t Js.optdef Js.prop
  method displayHeight : Js.number Js.t Js.optdef Js.prop
  method displayWidth : Js.number Js.t Js.optdef Js.prop
  method duration : Js.number Js.t Js.optdef Js.prop
  method format : video_pixel_format Js.prop
  method layout : plane_layout Js.t Js.js_array Js.t Js.optdef Js.prop
  method timestamp : Js.number Js.t Js.prop

  method transfer :
    Js_of_ocaml.Typed_array.arrayBuffer Js.t Js.js_array Js.t Js.optdef Js.prop

  method visibleRect : dom_rect_init Js.t Js.optdef Js.prop
end

(* see {!Browser.Html_video_element} for module definition *)
and video_frame_callback_metadata = object ('self)
  method captureTime : Js.number Js.t Js.optdef Js.prop
  method expectedDisplayTime : Js.number Js.t Js.prop
  method height : Js.number Js.t Js.prop
  method mediaTime : Js.number Js.t Js.prop
  method presentationTime : Js.number Js.t Js.prop
  method presentedFrames : Js.number Js.t Js.prop
  method processingDuration : Js.number Js.t Js.optdef Js.prop
  method receiveTime : Js.number Js.t Js.optdef Js.prop
  method rtpTimestamp : Js.number Js.t Js.optdef Js.prop
  method width : Js.number Js.t Js.prop
end

(* see {!Browser.Video_frame} for module definition *)
and video_frame_copy_to_options = object ('self)
  method layout : plane_layout Js.t Js.js_array Js.t Js.optdef Js.prop
  method rect : dom_rect_init Js.t Js.optdef Js.prop
end

(* see {!Browser.Video_frame} for module definition *)
and video_frame_init = object ('self)
  method alpha : alpha_option Js.optdef Js.prop
  method displayHeight : Js.number Js.t Js.optdef Js.prop
  method displayWidth : Js.number Js.t Js.optdef Js.prop
  method duration : Js.number Js.t Js.optdef Js.prop
  method timestamp : Js.number Js.t Js.optdef Js.prop
  method visibleRect : dom_rect_init Js.t Js.optdef Js.prop
end

(* see {!Browser.View_transition_options} for module definition *)
and view_transition_options = object ('self)
  method types : Js.js_string Js.t Js.js_array Js.t Js.opt Js.optdef Js.prop
  method update : (unit, unit js_promise Js.t) Js.meth_callback Js.opt Js.optdef Js.prop
end

(* see {!Browser.Web_gl_context_attributes} for module definition *)
and web_gl_context_attributes = object ('self)
  method alpha : bool Js.t Js.optdef Js.prop
  method antialias : bool Js.t Js.optdef Js.prop
  method depth : bool Js.t Js.optdef Js.prop
  method desynchronized : bool Js.t Js.optdef Js.prop
  method failIfMajorPerformanceCaveat : bool Js.t Js.optdef Js.prop
  method powerPreference : web_gl_power_preference Js.optdef Js.prop
  method premultipliedAlpha : bool Js.t Js.optdef Js.prop
  method preserveDrawingBuffer : bool Js.t Js.optdef Js.prop
  method stencil : bool Js.t Js.optdef Js.prop
end

(* see {!Browser.Wheel_event} for module definition *)
and wheel_event_init = object ('self)
  inherit mouse_event_init
  method deltaMode : Js.number Js.t Js.optdef Js.prop
  method deltaX : Js.number Js.t Js.optdef Js.prop
  method deltaY : Js.number Js.t Js.optdef Js.prop
  method deltaZ : Js.number Js.t Js.optdef Js.prop
  method wheelDeltaX : Js.number Js.t Js.optdef Js.prop
  method wheelDeltaY : Js.number Js.t Js.optdef Js.prop
end

(* see {!Browser.Window} for module definition *)
and window_post_message_options = object ('self)
  inherit post_message_options
  method delegate : Js.js_string Js.t Js.opt Js.optdef Js.prop
  method targetOrigin : Js.js_string Js.t Js.optdef Js.prop
end

(* see {!Browser.Worker} for module definition *)
and worker_options = object ('self)
  method credentials : request_credentials Js.optdef Js.prop
  method name : Js.js_string Js.t Js.optdef Js.prop
  method type_ : worker_type Js.optdef Js.prop
end

(* see {!Browser.Event_target} for module definition *)
and event_target = object
  method addEventListener :
    type_:Js.js_string Js.t
    -> listener:('self, event:event Js.t -> unit) Js.meth_callback Js.opt
    -> options:add_event_listener_options_or_bool Js.t Js.optdef
    -> unit Js.meth

  method dispatchEvent : event:event Js.t -> bool Js.t Js.meth

  method removeEventListener :
    type_:Js.js_string Js.t
    -> listener:('self, event:event Js.t -> unit) Js.meth_callback Js.opt
    -> options:event_listener_options_or_bool Js.t Js.optdef
    -> unit Js.meth
end

(* see {!Browser.Abort_signal} for module definition *)
and abort_signal = object
  inherit event_target
  method aborted : bool Js.t Js.readonly_prop

  method onabort :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method reason : Js.Unsafe.any Js.readonly_prop
  method throwIfAborted : unit Js.meth
end

(* see {!Browser.Abstract_range} for module definition *)
and abstract_range = object
  method collapsed : bool Js.t Js.readonly_prop
  method endContainer : node Js.t Js.readonly_prop
  method endOffset : Js.number Js.t Js.readonly_prop
  method startContainer : node Js.t Js.readonly_prop
  method startOffset : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Event} for module definition *)
and event = object
  method bubbles : bool Js.t Js.readonly_prop
  method cancelBubble : bool Js.t Js.prop
  method cancelable : bool Js.t Js.readonly_prop
  method composed : bool Js.t Js.readonly_prop
  method currentTarget : event_target Js.t Js.opt Js.readonly_prop
  method defaultPrevented : bool Js.t Js.readonly_prop
  method eventPhase : Js.number Js.t Js.readonly_prop
  method isTrusted : bool Js.t Js.readonly_prop

  (* This attribute has a type conflict in the inheritance hierarchy (i.e. a derived
     interface will override this attribute). We use an opaque type to handle both the
     original and overridden types safely. *)
  method returnValue : return_value_type Js.t Js.prop
  method srcElement : event_target Js.t Js.readonly_prop
  method target : event_target Js.t Js.opt Js.readonly_prop
  method timeStamp : Js.number Js.t Js.readonly_prop
  method type_ : Js.js_string Js.t Js.readonly_prop
  method composedPath : event_target Js.t Js.js_array Js.t Js.meth

  method initEvent :
    type_:Js.js_string Js.t
    -> bubbles:bool Js.t Js.optdef
    -> cancelable:bool Js.t Js.optdef
    -> unit Js.meth

  method preventDefault : unit Js.meth
  method stopImmediatePropagation : unit Js.meth
  method stopPropagation : unit Js.meth
end

(* see {!Browser.Animation_event} for module definition *)
and animation_event = object
  inherit event
  method animationName : Js.js_string Js.t Js.readonly_prop
  method elapsedTime : Js.number Js.t Js.readonly_prop
  method pseudoElement : Js.js_string Js.t Js.readonly_prop
end

(* see {!Browser.Node} for module definition *)
and node = object
  inherit event_target
  method baseURI : Js.js_string Js.t Js.readonly_prop
  method childNodes : node_list Js.t Js.readonly_prop
  method firstChild : node Js.t Js.opt Js.readonly_prop
  method isConnected : bool Js.t Js.readonly_prop
  method lastChild : node Js.t Js.opt Js.readonly_prop
  method nextSibling : node Js.t Js.opt Js.readonly_prop
  method nodeName : Js.js_string Js.t Js.readonly_prop
  method nodeType : Js.number Js.t Js.readonly_prop
  method nodeValue : Js.js_string Js.t Js.opt Js.prop
  method ownerDocument : document Js.t Js.opt Js.readonly_prop
  method parentElement : element Js.t Js.opt Js.readonly_prop
  method parentNode : node Js.t Js.opt Js.readonly_prop
  method previousSibling : node Js.t Js.opt Js.readonly_prop
  method textContent : trusted_script_or_string Js.t Js.opt Js.prop
  method appendChild : node:node Js.t -> node Js.t Js.meth
  method cloneNode : deep:bool Js.t Js.optdef -> node Js.t Js.meth
  method compareDocumentPosition : other:node Js.t -> Js.number Js.t Js.meth
  method contains : other:node Js.t Js.opt -> bool Js.t Js.meth
  method getRootNode : options:get_root_node_options Js.t Js.optdef -> node Js.t Js.meth
  method hasChildNodes : bool Js.t Js.meth
  method insertBefore : node:node Js.t -> child:node Js.t Js.opt -> node Js.t Js.meth
  method isDefaultNamespace : namespaceURI:Js.js_string Js.t Js.opt -> bool Js.t Js.meth
  method isEqualNode : otherNode:node Js.t Js.opt -> bool Js.t Js.meth
  method isSameNode : otherNode:node Js.t Js.opt -> bool Js.t Js.meth

  method lookupNamespaceURI :
    prefix:Js.js_string Js.t Js.opt -> Js.js_string Js.t Js.opt Js.meth

  method lookupPrefix :
    namespaceURI:Js.js_string Js.t Js.opt -> Js.js_string Js.t Js.opt Js.meth

  method normalize : unit Js.meth
  method removeChild : child:node Js.t -> node Js.t Js.meth
  method replaceChild : node:node Js.t -> child:node Js.t -> node Js.t Js.meth
end

(* see {!Browser.Attr} for module definition *)
and attr = object
  inherit node
  method localName : Js.js_string Js.t Js.readonly_prop
  method name : Js.js_string Js.t Js.readonly_prop
  method namespaceURI : Js.js_string Js.t Js.opt Js.readonly_prop
  method ownerElement : element Js.t Js.opt Js.readonly_prop
  method prefix : Js.js_string Js.t Js.opt Js.readonly_prop
  method specified : bool Js.t Js.readonly_prop
  method value : Js.js_string Js.t Js.prop
end

(* see {!Browser.Authenticator_response} for module definition *)
and authenticator_response = object
  method clientDataJSON : Js_of_ocaml.Typed_array.arrayBuffer Js.t Js.readonly_prop
end

(* see {!Browser.Before_unload_event} for module definition *)
and before_unload_event = object
  inherit event

  (* skipping returnValue because it's already included in ancestor *)
end

(* see {!Browser.Blob} for module definition *)
and blob = object
  method size : Js.number Js.t Js.readonly_prop
  method type_ : Js.js_string Js.t Js.readonly_prop
  method arrayBuffer : Js_of_ocaml.Typed_array.arrayBuffer Js.t js_promise Js.t Js.meth

  method slice :
    start:Js.number Js.t Js.optdef
    -> end_:Js.number Js.t Js.optdef
    -> contentType:Js.js_string Js.t Js.optdef
    -> blob Js.t Js.meth

  method stream : readable_stream Js.t Js.meth
  method text : Js.js_string Js.t js_promise Js.t Js.meth
end

(* see {!Browser.Media_stream_track} for module definition *)
and media_stream_track = object
  inherit event_target
  method contentHint : Js.js_string Js.t Js.prop
  method enabled : bool Js.t Js.prop
  method id : Js.js_string Js.t Js.readonly_prop
  method kind : Js.js_string Js.t Js.readonly_prop
  method label : Js.js_string Js.t Js.readonly_prop
  method muted : bool Js.t Js.readonly_prop

  method onended :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmute :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onunmute :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method readyState : media_stream_track_state Js.readonly_prop

  method stats :
    media_stream_track_audio_stats_or_media_stream_track_video_stats Js.t Js.opt
      Js.readonly_prop

  method applyConstraints :
    constraints:media_track_constraints Js.t Js.optdef -> unit js_promise Js.t Js.meth

  method clone : media_stream_track Js.t Js.meth
  method getCapabilities : media_track_capabilities Js.t Js.meth
  method getConstraints : media_track_constraints Js.t Js.meth
  method getSettings : media_track_settings Js.t Js.meth
  method stop : unit Js.meth
end

(* see {!Browser.Browser_capture_media_stream_track} for module definition *)
and browser_capture_media_stream_track = object
  inherit media_stream_track
  method cropTo : crop_id:crop_target Js.t Js.opt -> unit js_promise Js.t Js.meth
end

(* see {!Browser.Css_style_value} for module definition *)
and css_style_value = object end

(* see {!Browser.Css_image_value} for module definition *)
and css_image_value = object
  inherit css_style_value
end

(* see {!Browser.Css_numeric_value} for module definition *)
and css_numeric_value = object
  inherit css_style_value
  method add : css_numeric_value Js.t Js.meth
  method add_1 : value:css_numberish Js.t -> css_numeric_value Js.t Js.meth

  method add_2 :
    value:css_numberish Js.t
    -> value1:css_numberish Js.t
    -> css_numeric_value Js.t Js.meth

  method add_3 :
    value:css_numberish Js.t
    -> value1:css_numberish Js.t
    -> value2:css_numberish Js.t
    -> css_numeric_value Js.t Js.meth

  method div : css_numeric_value Js.t Js.meth
  method div_1 : value:css_numberish Js.t -> css_numeric_value Js.t Js.meth

  method div_2 :
    value:css_numberish Js.t
    -> value1:css_numberish Js.t
    -> css_numeric_value Js.t Js.meth

  method div_3 :
    value:css_numberish Js.t
    -> value1:css_numberish Js.t
    -> value2:css_numberish Js.t
    -> css_numeric_value Js.t Js.meth

  method equals : bool Js.t Js.meth
  method equals_1 : value:css_numberish Js.t -> bool Js.t Js.meth

  method equals_2 :
    value:css_numberish Js.t -> value1:css_numberish Js.t -> bool Js.t Js.meth

  method equals_3 :
    value:css_numberish Js.t
    -> value1:css_numberish Js.t
    -> value2:css_numberish Js.t
    -> bool Js.t Js.meth

  method max : css_numeric_value Js.t Js.meth
  method max_1 : value:css_numberish Js.t -> css_numeric_value Js.t Js.meth

  method max_2 :
    value:css_numberish Js.t
    -> value1:css_numberish Js.t
    -> css_numeric_value Js.t Js.meth

  method max_3 :
    value:css_numberish Js.t
    -> value1:css_numberish Js.t
    -> value2:css_numberish Js.t
    -> css_numeric_value Js.t Js.meth

  method min : css_numeric_value Js.t Js.meth
  method min_1 : value:css_numberish Js.t -> css_numeric_value Js.t Js.meth

  method min_2 :
    value:css_numberish Js.t
    -> value1:css_numberish Js.t
    -> css_numeric_value Js.t Js.meth

  method min_3 :
    value:css_numberish Js.t
    -> value1:css_numberish Js.t
    -> value2:css_numberish Js.t
    -> css_numeric_value Js.t Js.meth

  method mul : css_numeric_value Js.t Js.meth
  method mul_1 : value:css_numberish Js.t -> css_numeric_value Js.t Js.meth

  method mul_2 :
    value:css_numberish Js.t
    -> value1:css_numberish Js.t
    -> css_numeric_value Js.t Js.meth

  method mul_3 :
    value:css_numberish Js.t
    -> value1:css_numberish Js.t
    -> value2:css_numberish Js.t
    -> css_numeric_value Js.t Js.meth

  method sub : css_numeric_value Js.t Js.meth
  method sub_1 : value:css_numberish Js.t -> css_numeric_value Js.t Js.meth

  method sub_2 :
    value:css_numberish Js.t
    -> value1:css_numberish Js.t
    -> css_numeric_value Js.t Js.meth

  method sub_3 :
    value:css_numberish Js.t
    -> value1:css_numberish Js.t
    -> value2:css_numberish Js.t
    -> css_numeric_value Js.t Js.meth

  method to_ : unit:cssom_string Js.t -> css_unit_value Js.t Js.meth
  method toSum : (* unresolved CSSMathSum *) untranslated Js.meth

  method toSum_1 :
    unit:cssom_string Js.t -> (* unresolved CSSMathSum *) untranslated Js.meth

  method toSum_2 :
    unit:cssom_string Js.t
    -> unit1:cssom_string Js.t
    -> (* unresolved CSSMathSum *) untranslated Js.meth

  method toSum_3 :
    unit:cssom_string Js.t
    -> unit1:cssom_string Js.t
    -> unit2:cssom_string Js.t
    -> (* unresolved CSSMathSum *) untranslated Js.meth

  method type_ : css_numeric_type Js.t Js.meth
end

(* see {!Browser.Css_rule} for module definition *)
and css_rule = object
  method cssText : Js.js_string Js.t Js.prop
  method parentRule : css_rule Js.t Js.opt Js.readonly_prop
  method parentStyleSheet : css_style_sheet Js.t Js.opt Js.readonly_prop
  method type_ : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Css_style_sheet} for module definition *)
and css_rule_list = object
  method length : Js.number Js.t Js.readonly_prop
  method item : index:Js.number Js.t -> css_rule Js.t Js.opt Js.meth
end

(* see {!Browser.Css_style_declaration} for module definition *)
and css_style_declaration = object
  method cssFloat : Js.js_string Js.t Js.prop
  method cssText : Js.js_string Js.t Js.prop
  method length : Js.number Js.t Js.readonly_prop
  method parentRule : css_rule Js.t Js.opt Js.readonly_prop
  method getPropertyPriority : property:Js.js_string Js.t -> Js.js_string Js.t Js.meth
  method getPropertyValue : property:Js.js_string Js.t -> Js.js_string Js.t Js.meth
  method item : index:Js.number Js.t -> Js.js_string Js.t Js.meth
  method removeProperty : property:Js.js_string Js.t -> Js.js_string Js.t Js.meth

  method setProperty :
    property:Js.js_string Js.t
    -> value:Js.js_string Js.t
    -> priority:Js.js_string Js.t Js.optdef
    -> unit Js.meth
end

(* see {!Browser.Style_sheet} for module definition *)
and style_sheet = object
  method disabled : bool Js.t Js.prop
  method href : Js.js_string Js.t Js.opt Js.readonly_prop
  method media : (* unresolved MediaList *) untranslated Js.readonly_prop
  method ownerNode : node Js.t Js.opt Js.readonly_prop
  method parentStyleSheet : style_sheet Js.t Js.opt Js.readonly_prop
  method title : Js.js_string Js.t Js.opt Js.readonly_prop
  method type_ : Js.js_string Js.t Js.readonly_prop
end

(* see {!Browser.Css_style_sheet} for module definition *)
and css_style_sheet = object
  inherit style_sheet
  method cssRules : css_rule_list Js.t Js.readonly_prop
  method ownerRule : css_rule Js.t Js.opt Js.readonly_prop
  method rules : css_rule_list Js.t Js.readonly_prop

  method addRule :
    selector:Js.js_string Js.t Js.optdef
    -> style:Js.js_string Js.t Js.optdef
    -> index:Js.number Js.t Js.optdef
    -> Js.number Js.t Js.meth

  method deleteRule : index:Js.number Js.t -> unit Js.meth

  method insertRule :
    rule:Js.js_string Js.t -> index:Js.number Js.t Js.optdef -> Js.number Js.t Js.meth

  method removeRule : index:Js.number Js.t Js.optdef -> unit Js.meth
  method replace : text:Js.js_string Js.t -> css_style_sheet Js.t js_promise Js.t Js.meth
  method replaceSync : text:Js.js_string Js.t -> unit Js.meth
end

(* see {!Browser.Css_unit_value} for module definition *)
and css_unit_value = object
  inherit css_numeric_value
  method unit : cssom_string Js.t Js.readonly_prop
  method value : Js.number Js.t Js.prop
end

(* see {!Browser.Canvas_capture_media_stream_track} for module definition *)
and canvas_capture_media_stream_track = object
  inherit media_stream_track
  method canvas : html_canvas_element Js.t Js.readonly_prop
  method requestFrame : unit Js.meth
end

(* see {!Browser.Canvas_gradient} for module definition *)
and canvas_gradient = object
  method addColorStop : offset:Js.number Js.t -> color:Js.js_string Js.t -> unit Js.meth
end

(* see {!Browser.Canvas_pattern} for module definition *)
and canvas_pattern = object
  method setTransform : transform:dom_matrix2d_init Js.t Js.optdef -> unit Js.meth
end

(* see {!Browser.Html_canvas_element} for module definition *)
and canvas_rendering_context2d = object
  method canvas : html_canvas_element Js.t Js.readonly_prop
  method direction : canvas_direction Js.prop
  method fillStyle : Js.Unsafe.any Js.prop
  method filter : canvas_filter_or_string Js.t Js.opt Js.prop
  method font : Js.js_string Js.t Js.prop
  method fontKerning : canvas_font_kerning Js.prop
  method fontStretch : canvas_font_stretch Js.prop
  method fontVariantCaps : canvas_font_variant_caps Js.prop
  method globalAlpha : Js.number Js.t Js.prop
  method globalCompositeOperation : Js.js_string Js.t Js.prop
  method imageSmoothingEnabled : bool Js.t Js.prop
  method imageSmoothingQuality : image_smoothing_quality Js.prop
  method letterSpacing : Js.js_string Js.t Js.prop
  method lineCap : Js.js_string Js.t Js.prop
  method lineDashOffset : Js.number Js.t Js.prop
  method lineJoin : Js.js_string Js.t Js.prop
  method lineWidth : Js.number Js.t Js.prop
  method miterLimit : Js.number Js.t Js.prop
  method shadowBlur : Js.number Js.t Js.prop
  method shadowColor : Js.js_string Js.t Js.prop
  method shadowOffsetX : Js.number Js.t Js.prop
  method shadowOffsetY : Js.number Js.t Js.prop
  method strokeStyle : Js.Unsafe.any Js.prop
  method textAlign : canvas_text_align Js.prop
  method textBaseline : canvas_text_baseline Js.prop
  method textRendering : canvas_text_rendering Js.prop
  method wordSpacing : Js.js_string Js.t Js.prop

  method arc :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> radius:Js.number Js.t
    -> startAngle:Js.number Js.t
    -> endAngle:Js.number Js.t
    -> anticlockwise:bool Js.t Js.optdef
    -> unit Js.meth

  method arcTo :
    x1:Js.number Js.t
    -> y1:Js.number Js.t
    -> x2:Js.number Js.t
    -> y2:Js.number Js.t
    -> radius:Js.number Js.t
    -> unit Js.meth

  method beginPath : unit Js.meth

  method bezierCurveTo :
    cp1x:Js.number Js.t
    -> cp1y:Js.number Js.t
    -> cp2x:Js.number Js.t
    -> cp2y:Js.number Js.t
    -> x:Js.number Js.t
    -> y:Js.number Js.t
    -> unit Js.meth

  method clearRect :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> width:Js.number Js.t
    -> height:Js.number Js.t
    -> unit Js.meth

  method clip : winding:canvas_fill_rule Js.optdef -> unit Js.meth
  method clip_1 : path:path2d Js.t -> winding:canvas_fill_rule Js.optdef -> unit Js.meth
  method closePath : unit Js.meth

  method createConicGradient :
    startAngle:Js.number Js.t
    -> cx:Js.number Js.t
    -> cy:Js.number Js.t
    -> canvas_gradient Js.t Js.meth

  method createImageData : imagedata:image_data Js.t -> image_data Js.t Js.meth

  method createImageData_1 :
    sw:Js.number Js.t -> sh:Js.number Js.t -> image_data Js.t Js.meth

  method createImageData_2 :
    sw:Js.number Js.t
    -> sh:Js.number Js.t
    -> imageDataSettings:image_data_settings Js.t
    -> image_data Js.t Js.meth

  method createLinearGradient :
    x0:Js.number Js.t
    -> y0:Js.number Js.t
    -> x1:Js.number Js.t
    -> y1:Js.number Js.t
    -> canvas_gradient Js.t Js.meth

  method createPattern :
    image:canvas_image_source Js.t
    -> repetitionType:Js.js_string Js.t
    -> canvas_pattern Js.t Js.opt Js.meth

  method createRadialGradient :
    x0:Js.number Js.t
    -> y0:Js.number Js.t
    -> r0:Js.number Js.t
    -> x1:Js.number Js.t
    -> y1:Js.number Js.t
    -> r1:Js.number Js.t
    -> canvas_gradient Js.t Js.meth

  method drawFocusIfNeeded : element:element Js.t -> unit Js.meth
  method drawFocusIfNeeded_1 : path:path2d Js.t -> element:element Js.t -> unit Js.meth

  method drawImage :
    image:canvas_image_source Js.t -> x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth

  method drawImage_1 :
    image:canvas_image_source Js.t
    -> x:Js.number Js.t
    -> y:Js.number Js.t
    -> width:Js.number Js.t
    -> height:Js.number Js.t
    -> unit Js.meth

  method drawImage_2 :
    image:canvas_image_source Js.t
    -> sx:Js.number Js.t
    -> sy:Js.number Js.t
    -> sw:Js.number Js.t
    -> sh:Js.number Js.t
    -> dx:Js.number Js.t
    -> dy:Js.number Js.t
    -> dw:Js.number Js.t
    -> dh:Js.number Js.t
    -> unit Js.meth

  method ellipse :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> radiusX:Js.number Js.t
    -> radiusY:Js.number Js.t
    -> rotation:Js.number Js.t
    -> startAngle:Js.number Js.t
    -> endAngle:Js.number Js.t
    -> anticlockwise:bool Js.t Js.optdef
    -> unit Js.meth

  method fill : winding:canvas_fill_rule Js.optdef -> unit Js.meth
  method fill_1 : path:path2d Js.t -> winding:canvas_fill_rule Js.optdef -> unit Js.meth

  method fillRect :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> width:Js.number Js.t
    -> height:Js.number Js.t
    -> unit Js.meth

  method fillText :
    text:Js.js_string Js.t
    -> x:Js.number Js.t
    -> y:Js.number Js.t
    -> maxWidth:Js.number Js.t Js.optdef
    -> unit Js.meth

  method getContextAttributes : canvas_rendering_context2d_settings Js.t Js.meth

  method getImageData :
    sx:Js.number Js.t
    -> sy:Js.number Js.t
    -> sw:Js.number Js.t
    -> sh:Js.number Js.t
    -> image_data Js.t Js.meth

  method getImageData_1 :
    sx:Js.number Js.t
    -> sy:Js.number Js.t
    -> sw:Js.number Js.t
    -> sh:Js.number Js.t
    -> imageDataSettings:image_data_settings Js.t
    -> image_data Js.t Js.meth

  method getLineDash : Js.number Js.t Js.js_array Js.t Js.meth
  method getTransform : dom_matrix Js.t Js.meth
  method isContextLost : bool Js.t Js.meth

  method isPointInPath :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> winding:canvas_fill_rule Js.optdef
    -> bool Js.t Js.meth

  method isPointInPath_1 :
    path:path2d Js.t
    -> x:Js.number Js.t
    -> y:Js.number Js.t
    -> winding:canvas_fill_rule Js.optdef
    -> bool Js.t Js.meth

  method isPointInStroke : x:Js.number Js.t -> y:Js.number Js.t -> bool Js.t Js.meth

  method isPointInStroke_1 :
    path:path2d Js.t -> x:Js.number Js.t -> y:Js.number Js.t -> bool Js.t Js.meth

  method lineTo : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth
  method measureText : text:Js.js_string Js.t -> text_metrics Js.t Js.meth
  method moveTo : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth

  method putImageData :
    imagedata:image_data Js.t -> dx:Js.number Js.t -> dy:Js.number Js.t -> unit Js.meth

  method putImageData_1 :
    imagedata:image_data Js.t
    -> dx:Js.number Js.t
    -> dy:Js.number Js.t
    -> dirtyX:Js.number Js.t
    -> dirtyY:Js.number Js.t
    -> dirtyWidth:Js.number Js.t
    -> dirtyHeight:Js.number Js.t
    -> unit Js.meth

  method quadraticCurveTo :
    cpx:Js.number Js.t
    -> cpy:Js.number Js.t
    -> x:Js.number Js.t
    -> y:Js.number Js.t
    -> unit Js.meth

  method rect :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> width:Js.number Js.t
    -> height:Js.number Js.t
    -> unit Js.meth

  method reset : unit Js.meth
  method resetTransform : unit Js.meth
  method restore : unit Js.meth
  method rotate : angle:Js.number Js.t -> unit Js.meth

  method roundRect :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> w:Js.number Js.t
    -> h:Js.number Js.t
    -> radii:dom_point_init_or_float Js.t Js.optdef
    -> unit Js.meth

  method roundRect_1 :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> w:Js.number Js.t
    -> h:Js.number Js.t
    -> radii:dom_point_init_or_float Js.t Js.js_array Js.t
    -> unit Js.meth

  method save : unit Js.meth
  method scale : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth
  method setLineDash : dash:Js.number Js.t Js.js_array Js.t -> unit Js.meth
  method setTransform : transform:dom_matrix_init Js.t Js.optdef -> unit Js.meth

  method setTransform_1 :
    a:Js.number Js.t
    -> b:Js.number Js.t
    -> c:Js.number Js.t
    -> d:Js.number Js.t
    -> e:Js.number Js.t
    -> f:Js.number Js.t
    -> unit Js.meth

  method stroke : unit Js.meth
  method stroke_1 : path:path2d Js.t -> unit Js.meth

  method strokeRect :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> width:Js.number Js.t
    -> height:Js.number Js.t
    -> unit Js.meth

  method strokeText :
    text:Js.js_string Js.t
    -> x:Js.number Js.t
    -> y:Js.number Js.t
    -> maxWidth:Js.number Js.t Js.optdef
    -> unit Js.meth

  method transform :
    a:Js.number Js.t
    -> b:Js.number Js.t
    -> c:Js.number Js.t
    -> d:Js.number Js.t
    -> e:Js.number Js.t
    -> f:Js.number Js.t
    -> unit Js.meth

  method translate : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth
end

(* see {!Browser.Character_data} for module definition *)
and character_data = object
  inherit node
  method data : Js.js_string Js.t Js.prop
  method length : Js.number Js.t Js.readonly_prop
  method nextElementSibling : element Js.t Js.opt Js.readonly_prop
  method previousElementSibling : element Js.t Js.opt Js.readonly_prop
  method after : unit Js.meth
  method after_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method after_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method after_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method appendData : data:Js.js_string Js.t -> unit Js.meth
  method before : unit Js.meth
  method before_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method before_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method before_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method deleteData : offset:Js.number Js.t -> count:Js.number Js.t -> unit Js.meth
  method insertData : offset:Js.number Js.t -> data:Js.js_string Js.t -> unit Js.meth
  method remove : unit Js.meth

  method replaceData :
    offset:Js.number Js.t
    -> count:Js.number Js.t
    -> data:Js.js_string Js.t
    -> unit Js.meth

  method replaceWith : unit Js.meth
  method replaceWith_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method replaceWith_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method replaceWith_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method substringData :
    offset:Js.number Js.t -> count:Js.number Js.t -> Js.js_string Js.t Js.meth
end

(* see {!Browser.Window} for module definition *)
and clipboard = object
  inherit event_target
  method read : clipboard_item Js.t Js.js_array Js.t js_promise Js.t Js.meth

  method read_1 :
    formats:clipboard_unsanitized_formats Js.t
    -> clipboard_item Js.t Js.js_array Js.t js_promise Js.t Js.meth

  method readText : Js.js_string Js.t js_promise Js.t Js.meth
  method write : data:clipboard_item Js.t Js.js_array Js.t -> unit js_promise Js.t Js.meth
  method writeText : data:Js.js_string Js.t -> unit js_promise Js.t Js.meth
end

(* see {!Browser.Clipboard_event} for module definition *)
and clipboard_event = object
  inherit event
  method clipboardData : data_transfer Js.t Js.opt Js.readonly_prop
end

(* see {!Browser.Clipboard_item} for module definition *)
and clipboard_item = object
  method types : Js.js_string Js.t Js.js_array Js.t Js.readonly_prop
  method getType : type_:Js.js_string Js.t -> blob Js.t js_promise Js.t Js.meth
end

(* see {!Browser.Close_event} for module definition *)
and close_event = object
  inherit event
  method code : Js.number Js.t Js.readonly_prop
  method reason : Js.js_string Js.t Js.readonly_prop
  method wasClean : bool Js.t Js.readonly_prop
end

(* see {!Browser.Comment} for module definition *)
and comment = object
  inherit character_data
end

(* see {!Browser.Ui_event} for module definition *)
and ui_event = object
  inherit event
  method detail : Js.number Js.t Js.readonly_prop
  method sourceCapabilities : input_device_capabilities Js.t Js.opt Js.readonly_prop
  method view : window Js.t Js.opt Js.readonly_prop
  method which : Js.number Js.t Js.readonly_prop

  method initUIEvent :
    type_:Js.js_string Js.t
    -> bubbles:bool Js.t Js.optdef
    -> cancelable:bool Js.t Js.optdef
    -> view:window Js.t Js.opt Js.optdef
    -> detail:Js.number Js.t Js.optdef
    -> unit Js.meth
end

(* see {!Browser.Composition_event} for module definition *)
and composition_event = object
  inherit ui_event
  method data : Js.js_string Js.t Js.readonly_prop

  method initCompositionEvent :
    type_:Js.js_string Js.t
    -> bubbles:bool Js.t Js.optdef
    -> cancelable:bool Js.t Js.optdef
    -> view:window Js.t Js.opt Js.optdef
    -> data:Js.js_string Js.t Js.optdef
    -> unit Js.meth
end

(* see {!Browser.Compression_stream} for module definition *)
and compression_stream = object
  method readable : readable_stream Js.t Js.readonly_prop
  method writable : writable_stream Js.t Js.readonly_prop
end

(* see {!Browser.Credential} for module definition *)
and credential = object
  method id : Js.js_string Js.t Js.readonly_prop
  method type_ : Js.js_string Js.t Js.readonly_prop
end

(* see {!Browser.Window} for module definition *)
and credentials_container = object
  method create :
    options:credential_creation_options Js.t Js.optdef
    -> credential Js.t Js.opt js_promise Js.t Js.meth

  method get :
    options:credential_request_options Js.t Js.optdef
    -> credential Js.t Js.opt js_promise Js.t Js.meth

  method preventSilentAccess : unit js_promise Js.t Js.meth
  method store : credential:credential Js.t -> credential Js.t js_promise Js.t Js.meth
end

(* see {!Browser.Browser_capture_media_stream_track} for module definition *)
and crop_target = object end

(* see {!Browser.Crypto} for module definition *)
and crypto = object
  (** [subtle] is unsafe and is only available in [Secure] contexts. In order to access
      [subtle], you must use [ppx_browser]. *)
  method subtle :
    ( (* unresolved SubtleCrypto *)
      untranslated Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method getRandomValues :
    array:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> Js_of_ocaml.Typed_array.arrayBufferView Js.t Js.meth

  (** [randomUUID] is unsafe and is only available in [Secure] contexts. In order to call
      [randomUUID], you must use [ppx_browser]. *)
  method randomUUID :
    ( Js.js_string Js.t Js.meth
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe
end

(* see {!Browser.Custom_event} for module definition *)
and custom_event = object
  inherit event
  method detail : Js.Unsafe.any Js.readonly_prop

  method initCustomEvent :
    type_:Js.js_string Js.t
    -> bubbles:bool Js.t Js.optdef
    -> cancelable:bool Js.t Js.optdef
    -> detail:Js.Unsafe.any Js.optdef
    -> unit Js.meth
end

(* see {!Browser.Dom_exception} for module definition *)
and dom_exception = object
  method code : Js.number Js.t Js.readonly_prop
  method message : Js.js_string Js.t Js.readonly_prop
  method name : Js.js_string Js.t Js.readonly_prop
end

(* see {!Browser.Document} for module definition *)
and dom_implementation = object
  method createDocument :
    namespaceURI:Js.js_string Js.t Js.opt
    -> qualifiedName:Js.js_string Js.t
    -> doctype:document_type Js.t Js.opt Js.optdef
    -> (* unresolved XMLDocument *) untranslated Js.meth

  method createDocumentType :
    qualifiedName:Js.js_string Js.t
    -> publicId:Js.js_string Js.t
    -> systemId:Js.js_string Js.t
    -> document_type Js.t Js.meth

  method createHTMLDocument : title:Js.js_string Js.t Js.optdef -> document Js.t Js.meth
  method hasFeature : bool Js.t Js.meth
end

(* [dom_matrix_read_only_base] provides the base interface for [dom_matrix_read_only] and
   its derived interfaces. This pattern handles WebIDL "inherit" attributes, where regular
   attributes inherit their getters from read-only attributes defined on an ancestor
   interface (see https://webidl.spec.whatwg.org/#dfn-inherit-getter). *)
and dom_matrix_read_only_base = object
  method is2D : bool Js.t Js.readonly_prop
  method isIdentity : bool Js.t Js.readonly_prop
  method flipX : dom_matrix Js.t Js.meth
  method flipY : dom_matrix Js.t Js.meth
  method inverse : dom_matrix Js.t Js.meth
  method multiply : other:dom_matrix_init Js.t Js.optdef -> dom_matrix Js.t Js.meth

  method rotate :
    rotX:Js.number Js.t Js.optdef
    -> rotY:Js.number Js.t Js.optdef
    -> rotZ:Js.number Js.t Js.optdef
    -> dom_matrix Js.t Js.meth

  method rotateAxisAngle :
    x:Js.number Js.t Js.optdef
    -> y:Js.number Js.t Js.optdef
    -> z:Js.number Js.t Js.optdef
    -> angle:Js.number Js.t Js.optdef
    -> dom_matrix Js.t Js.meth

  method rotateFromVector :
    x:Js.number Js.t Js.optdef -> y:Js.number Js.t Js.optdef -> dom_matrix Js.t Js.meth

  method scale :
    scaleX:Js.number Js.t Js.optdef
    -> scaleY:Js.number Js.t Js.optdef
    -> scaleZ:Js.number Js.t Js.optdef
    -> originX:Js.number Js.t Js.optdef
    -> originY:Js.number Js.t Js.optdef
    -> originZ:Js.number Js.t Js.optdef
    -> dom_matrix Js.t Js.meth

  method scale3d :
    scale:Js.number Js.t Js.optdef
    -> originX:Js.number Js.t Js.optdef
    -> originY:Js.number Js.t Js.optdef
    -> originZ:Js.number Js.t Js.optdef
    -> dom_matrix Js.t Js.meth

  method scaleNonUniform :
    scaleX:Js.number Js.t Js.optdef
    -> scaleY:Js.number Js.t Js.optdef
    -> dom_matrix Js.t Js.meth

  method skewX : sx:Js.number Js.t Js.optdef -> dom_matrix Js.t Js.meth
  method skewY : sy:Js.number Js.t Js.optdef -> dom_matrix Js.t Js.meth
  method toFloat32Array : Js_of_ocaml.Typed_array.float32Array Js.t Js.meth
  method toFloat64Array : Js_of_ocaml.Typed_array.float64Array Js.t Js.meth
  method toJSON : Js.Unsafe.any Js.meth

  method transformPoint :
    point:dom_point_init Js.t Js.optdef -> (* unresolved DOMPoint *) untranslated Js.meth

  method translate :
    tx:Js.number Js.t Js.optdef
    -> ty:Js.number Js.t Js.optdef
    -> tz:Js.number Js.t Js.optdef
    -> dom_matrix Js.t Js.meth
end

(* see {!Browser.Dom_matrix_read_only} for module definition *)
and dom_matrix_read_only = object
  inherit dom_matrix_read_only_base
  method a : Js.number Js.t Js.readonly_prop
  method b : Js.number Js.t Js.readonly_prop
  method c : Js.number Js.t Js.readonly_prop
  method d : Js.number Js.t Js.readonly_prop
  method e : Js.number Js.t Js.readonly_prop
  method f : Js.number Js.t Js.readonly_prop
  method m11 : Js.number Js.t Js.readonly_prop
  method m12 : Js.number Js.t Js.readonly_prop
  method m13 : Js.number Js.t Js.readonly_prop
  method m14 : Js.number Js.t Js.readonly_prop
  method m21 : Js.number Js.t Js.readonly_prop
  method m22 : Js.number Js.t Js.readonly_prop
  method m23 : Js.number Js.t Js.readonly_prop
  method m24 : Js.number Js.t Js.readonly_prop
  method m31 : Js.number Js.t Js.readonly_prop
  method m32 : Js.number Js.t Js.readonly_prop
  method m33 : Js.number Js.t Js.readonly_prop
  method m34 : Js.number Js.t Js.readonly_prop
  method m41 : Js.number Js.t Js.readonly_prop
  method m42 : Js.number Js.t Js.readonly_prop
  method m43 : Js.number Js.t Js.readonly_prop
  method m44 : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Dom_matrix} for module definition *)
and dom_matrix = object
  inherit dom_matrix_read_only_base
  method a : Js.number Js.t Js.prop
  method b : Js.number Js.t Js.prop
  method c : Js.number Js.t Js.prop
  method d : Js.number Js.t Js.prop
  method e : Js.number Js.t Js.prop
  method f : Js.number Js.t Js.prop
  method m11 : Js.number Js.t Js.prop
  method m12 : Js.number Js.t Js.prop
  method m13 : Js.number Js.t Js.prop
  method m14 : Js.number Js.t Js.prop
  method m21 : Js.number Js.t Js.prop
  method m22 : Js.number Js.t Js.prop
  method m23 : Js.number Js.t Js.prop
  method m24 : Js.number Js.t Js.prop
  method m31 : Js.number Js.t Js.prop
  method m32 : Js.number Js.t Js.prop
  method m33 : Js.number Js.t Js.prop
  method m34 : Js.number Js.t Js.prop
  method m41 : Js.number Js.t Js.prop
  method m42 : Js.number Js.t Js.prop
  method m43 : Js.number Js.t Js.prop
  method m44 : Js.number Js.t Js.prop
  method invertSelf : dom_matrix Js.t Js.meth
  method multiplySelf : other:dom_matrix_init Js.t Js.optdef -> dom_matrix Js.t Js.meth
  method preMultiplySelf : other:dom_matrix_init Js.t Js.optdef -> dom_matrix Js.t Js.meth

  method rotateAxisAngleSelf :
    x:Js.number Js.t Js.optdef
    -> y:Js.number Js.t Js.optdef
    -> z:Js.number Js.t Js.optdef
    -> angle:Js.number Js.t Js.optdef
    -> dom_matrix Js.t Js.meth

  method rotateFromVectorSelf :
    x:Js.number Js.t Js.optdef -> y:Js.number Js.t Js.optdef -> dom_matrix Js.t Js.meth

  method rotateSelf :
    rotX:Js.number Js.t Js.optdef
    -> rotY:Js.number Js.t Js.optdef
    -> rotZ:Js.number Js.t Js.optdef
    -> dom_matrix Js.t Js.meth

  method scale3dSelf :
    scale:Js.number Js.t Js.optdef
    -> originX:Js.number Js.t Js.optdef
    -> originY:Js.number Js.t Js.optdef
    -> originZ:Js.number Js.t Js.optdef
    -> dom_matrix Js.t Js.meth

  method scaleSelf :
    scaleX:Js.number Js.t Js.optdef
    -> scaleY:Js.number Js.t Js.optdef
    -> scaleZ:Js.number Js.t Js.optdef
    -> originX:Js.number Js.t Js.optdef
    -> originY:Js.number Js.t Js.optdef
    -> originZ:Js.number Js.t Js.optdef
    -> dom_matrix Js.t Js.meth

  method setMatrixValue : transformList:Js.js_string Js.t -> dom_matrix Js.t Js.meth
  method skewXSelf : sx:Js.number Js.t Js.optdef -> dom_matrix Js.t Js.meth
  method skewYSelf : sy:Js.number Js.t Js.optdef -> dom_matrix Js.t Js.meth

  method translateSelf :
    tx:Js.number Js.t Js.optdef
    -> ty:Js.number Js.t Js.optdef
    -> tz:Js.number Js.t Js.optdef
    -> dom_matrix Js.t Js.meth
end

(* [dom_rect_read_only_base] provides the base interface for [dom_rect_read_only] and its
   derived interfaces. This pattern handles WebIDL "inherit" attributes, where regular
   attributes inherit their getters from read-only attributes defined on an ancestor
   interface (see https://webidl.spec.whatwg.org/#dfn-inherit-getter). *)
and dom_rect_read_only_base = object
  method bottom : Js.number Js.t Js.readonly_prop
  method left : Js.number Js.t Js.readonly_prop
  method right : Js.number Js.t Js.readonly_prop
  method top : Js.number Js.t Js.readonly_prop
  method toJSON : Js.Unsafe.any Js.meth
end

(* see {!Browser.Dom_rect_read_only} for module definition *)
and dom_rect_read_only = object
  inherit dom_rect_read_only_base
  method height : Js.number Js.t Js.readonly_prop
  method width : Js.number Js.t Js.readonly_prop
  method x : Js.number Js.t Js.readonly_prop
  method y : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Dom_rect} for module definition *)
and dom_rect = object
  inherit dom_rect_read_only_base
  method height : Js.number Js.t Js.prop
  method width : Js.number Js.t Js.prop
  method x : Js.number Js.t Js.prop
  method y : Js.number Js.t Js.prop
end

(* see {!Browser.Dom_rect_list} for module definition *)
and dom_rect_list = object
  method length : Js.number Js.t Js.readonly_prop
  method item : index:Js.number Js.t -> dom_rect Js.t Js.opt Js.meth
end

(* see {!Browser.Dom_token_list} for module definition *)
and dom_token_list = object
  inherit [Js.js_string Js.t] js_indexed_iterable
  method length : Js.number Js.t Js.readonly_prop
  method value : Js.js_string Js.t Js.prop
  method add : unit Js.meth
  method add_1 : token:Js.js_string Js.t -> unit Js.meth
  method add_2 : token:Js.js_string Js.t -> token1:Js.js_string Js.t -> unit Js.meth

  method add_3 :
    token:Js.js_string Js.t
    -> token1:Js.js_string Js.t
    -> token2:Js.js_string Js.t
    -> unit Js.meth

  method contains : token:Js.js_string Js.t -> bool Js.t Js.meth
  method item : index:Js.number Js.t -> Js.js_string Js.t Js.opt Js.meth
  method remove : unit Js.meth
  method remove_1 : token:Js.js_string Js.t -> unit Js.meth
  method remove_2 : token:Js.js_string Js.t -> token1:Js.js_string Js.t -> unit Js.meth

  method remove_3 :
    token:Js.js_string Js.t
    -> token1:Js.js_string Js.t
    -> token2:Js.js_string Js.t
    -> unit Js.meth

  method replace :
    token:Js.js_string Js.t -> newToken:Js.js_string Js.t -> bool Js.t Js.meth

  method supports : token:Js.js_string Js.t -> bool Js.t Js.meth

  method toggle :
    token:Js.js_string Js.t -> force:bool Js.t Js.optdef -> bool Js.t Js.meth
end

(* see {!Browser.Data_transfer} for module definition *)
and data_transfer = object
  method dropEffect : Js.js_string Js.t Js.prop
  method effectAllowed : Js.js_string Js.t Js.prop
  method files : file_list Js.t Js.readonly_prop
  method items : data_transfer_item_list Js.t Js.readonly_prop
  method types : Js.js_string Js.t Js.js_array Js.t Js.readonly_prop
  method clearData : format:Js.js_string Js.t Js.optdef -> unit Js.meth
  method getData : format:Js.js_string Js.t -> Js.js_string Js.t Js.meth
  method setData : format:Js.js_string Js.t -> data:Js.js_string Js.t -> unit Js.meth

  method setDragImage :
    image:element Js.t -> x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth
end

(* see {!Browser.Data_transfer} for module definition *)
and data_transfer_item = object
  method kind : Js.js_string Js.t Js.readonly_prop
  method type_ : Js.js_string Js.t Js.readonly_prop
  method getAsFile : file Js.t Js.opt Js.meth

  method getAsString :
    callback:(unit, data:Js.js_string Js.t -> unit) Js.meth_callback Js.opt
    -> unit Js.meth

  method webkitGetAsEntry : entry Js.t Js.opt Js.meth
end

(* see {!Browser.Data_transfer} for module definition *)
and data_transfer_item_list = object
  method length : Js.number Js.t Js.readonly_prop
  method add : file:file Js.t -> data_transfer_item Js.t Js.opt Js.meth

  method add_1 :
    data:Js.js_string Js.t
    -> type_:Js.js_string Js.t
    -> data_transfer_item Js.t Js.opt Js.meth

  method clear : unit Js.meth
  method remove : index:Js.number Js.t -> unit Js.meth
end

(* see {!Browser.Decompression_stream} for module definition *)
and decompression_stream = object
  method readable : readable_stream Js.t Js.readonly_prop
  method writable : writable_stream Js.t Js.readonly_prop
end

(* see {!Browser.Worker_global_scope} for module definition *)
and worker_global_scope = object
  inherit event_target

  (** [caches] is unsafe and is only available in [Secure] contexts. In order to access
      [caches], you must use [ppx_browser]. *)
  method caches :
    ( (* unresolved CacheStorage *)
      untranslated Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method crossOriginIsolated : bool Js.t Js.readonly_prop
  method crypto : crypto Js.t Js.readonly_prop
  method fonts : font_face_set Js.t Js.readonly_prop
  method indexedDB : (* unresolved IDBFactory *) untranslated Js.readonly_prop
  method isSecureContext : bool Js.t Js.readonly_prop
  method location : (* unresolved WorkerLocation *) untranslated Js.readonly_prop
  method navigator : (* unresolved WorkerNavigator *) untranslated Js.readonly_prop

  method onerror :
    ( 'self
      , event:event_or_string Js.t
        -> source:Js.js_string Js.t Js.optdef
        -> lineno:Js.number Js.t Js.optdef
        -> colno:Js.number Js.t Js.optdef
        -> error:Js.Unsafe.any Js.optdef
        -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onlanguagechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onrejectionhandled :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onunhandledrejection :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method origin : Js.js_string Js.t Js.readonly_prop
  method performance : performance Js.t Js.readonly_prop
  method scheduler : (* unresolved Scheduler *) untranslated Js.readonly_prop
  method self : worker_global_scope Js.t Js.readonly_prop

  method trustedTypes :
    (* unresolved TrustedTypePolicyFactory *)
    untranslated Js.readonly_prop

  method atob : atob:Js.js_string Js.t -> Js.js_string Js.t Js.meth
  method btoa : btoa:Js.js_string Js.t -> Js.js_string Js.t Js.meth
  method clearInterval : handle:Js.number Js.t Js.optdef -> unit Js.meth
  method clearTimeout : handle:Js.number Js.t Js.optdef -> unit Js.meth

  method createImageBitmap :
    imageBitmap:image_bitmap_source Js.t
    -> options:image_bitmap_options Js.t Js.optdef
    -> image_bitmap Js.t js_promise Js.t Js.meth

  method createImageBitmap_1 :
    imageBitmap:image_bitmap_source Js.t
    -> sx:Js.number Js.t
    -> sy:Js.number Js.t
    -> sw:Js.number Js.t
    -> sh:Js.number Js.t
    -> options:image_bitmap_options Js.t Js.optdef
    -> image_bitmap Js.t js_promise Js.t Js.meth

  method fetch :
    input:request_info Js.t
    -> init:request_init Js.t Js.optdef
    -> response Js.t js_promise Js.t Js.meth

  method importScripts : unit Js.meth
  method importScripts_1 : url:script_url_string Js.t -> unit Js.meth

  method importScripts_2 :
    url:script_url_string Js.t -> url1:script_url_string Js.t -> unit Js.meth

  method importScripts_3 :
    url:script_url_string Js.t
    -> url1:script_url_string Js.t
    -> url2:script_url_string Js.t
    -> unit Js.meth

  method queueMicrotask : callback:(unit, unit) Js.meth_callback -> unit Js.meth
  method reportError : e:Js.Unsafe.any -> unit Js.meth

  method setInterval :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> Js.number Js.t Js.meth

  method setInterval_1 :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setInterval_2 :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setInterval_3 :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> argument2:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setInterval_4 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> Js.number Js.t Js.meth

  method setInterval_5 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setInterval_6 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setInterval_7 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> argument2:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setTimeout :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> Js.number Js.t Js.meth

  method setTimeout_1 :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setTimeout_2 :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setTimeout_3 :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> argument2:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setTimeout_4 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> Js.number Js.t Js.meth

  method setTimeout_5 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setTimeout_6 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setTimeout_7 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> argument2:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method structuredClone :
    value:Js.Unsafe.any
    -> options:structured_serialize_options Js.t Js.optdef
    -> Js.Unsafe.any Js.meth
end

(* see {!Browser.Dedicated_worker_global_scope} for module definition *)
and dedicated_worker_global_scope = object
  inherit worker_global_scope
  method name : Js.js_string Js.t Js.readonly_prop

  method onmessage :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmessageerror :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method cancelAnimationFrame : handle:Js.number Js.t -> unit Js.meth
  method close : unit Js.meth

  method postMessage :
    message:Js.Unsafe.any -> options:post_message_options Js.t Js.optdef -> unit Js.meth

  method postMessage_1 :
    message:Js.Unsafe.any -> transfer:Js.Unsafe.any Js.js_array Js.t -> unit Js.meth

  method requestAnimationFrame :
    callback:(unit, highResTime:Js.number Js.t -> unit) Js.meth_callback
    -> Js.number Js.t Js.meth
end

(* see {!Browser.Document} for module definition *)
and document = object
  inherit node
  method _URL : Js.js_string Js.t Js.readonly_prop
  method activeElement : element Js.t Js.opt Js.readonly_prop
  method adoptedStyleSheets : css_style_sheet Js.t Js.js_array Js.t Js.prop
  method alinkColor : Js.js_string Js.t Js.prop
  method all : (* unresolved HTMLAllCollection *) untranslated Js.readonly_prop
  method anchors : html_collection Js.t Js.readonly_prop
  method applets : html_collection Js.t Js.readonly_prop
  method bgColor : Js.js_string Js.t Js.prop
  method body : html_element Js.t Js.opt Js.prop
  method characterSet : Js.js_string Js.t Js.readonly_prop
  method charset : Js.js_string Js.t Js.readonly_prop
  method childElementCount : Js.number Js.t Js.readonly_prop
  method children : html_collection Js.t Js.readonly_prop
  method compatMode : Js.js_string Js.t Js.readonly_prop
  method contentType : Js.js_string Js.t Js.readonly_prop
  method cookie : Js.js_string Js.t Js.prop
  method currentScript : html_or_svg_script_element Js.t Js.opt Js.readonly_prop
  method defaultView : window Js.t Js.opt Js.readonly_prop
  method designMode : Js.js_string Js.t Js.prop
  method dir : Js.js_string Js.t Js.prop
  method doctype : document_type Js.t Js.opt Js.readonly_prop
  method documentElement : element Js.t Js.opt Js.readonly_prop
  method documentURI : Js.js_string Js.t Js.opt Js.readonly_prop
  method domain : Js.js_string Js.t Js.prop
  method embeds : html_collection Js.t Js.readonly_prop
  method featurePolicy : (* unresolved FeaturePolicy *) untranslated Js.readonly_prop
  method fgColor : Js.js_string Js.t Js.prop
  method firstElementChild : element Js.t Js.opt Js.readonly_prop
  method fonts : font_face_set Js.t Js.readonly_prop
  method forms : html_collection Js.t Js.readonly_prop
  method fullscreen : bool Js.t Js.readonly_prop
  method fullscreenElement : element Js.t Js.opt Js.readonly_prop
  method fullscreenEnabled : bool Js.t Js.readonly_prop
  method head : (* unresolved HTMLHeadElement *) untranslated Js.opt Js.readonly_prop
  method hidden : bool Js.t Js.readonly_prop
  method images : html_collection Js.t Js.readonly_prop
  method implementation : dom_implementation Js.t Js.readonly_prop
  method inputEncoding : Js.js_string Js.t Js.readonly_prop
  method lastElementChild : element Js.t Js.opt Js.readonly_prop
  method lastModified : Js.js_string Js.t Js.readonly_prop
  method linkColor : Js.js_string Js.t Js.prop
  method links : html_collection Js.t Js.readonly_prop
  method location : location Js.t Js.opt Js.readonly_prop

  method onabort :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onanimationend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onanimationiteration :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onanimationstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onauxclick :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforecopy :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforecut :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforeinput :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforematch :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforepaste :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforetoggle :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforexrselect :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onblur :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncancel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncanplay :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncanplaythrough :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onclick :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onclose :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontentvisibilityautostatechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontextlost :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontextmenu :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontextrestored :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncopy :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncuechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncut :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondblclick :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondrag :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragenter :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragleave :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragover :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondrop :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondurationchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onemptied :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onended :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onerror :
    ( 'self
      , event:event_or_string Js.t
        -> source:Js.js_string Js.t Js.optdef
        -> lineno:Js.number Js.t Js.optdef
        -> colno:Js.number Js.t Js.optdef
        -> error:Js.Unsafe.any Js.optdef
        -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onfocus :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onformdata :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onfreeze :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onfullscreenchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onfullscreenerror :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ongotpointercapture :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oninput :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oninvalid :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onkeydown :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onkeypress :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onkeyup :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onload :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadeddata :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadedmetadata :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onlostpointercapture :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmousedown :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseenter :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseleave :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmousemove :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseout :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseover :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseup :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmousewheel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpaste :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpause :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onplay :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onplaying :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointercancel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerdown :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerenter :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerleave :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerlockchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerlockerror :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointermove :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerout :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerover :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerrawupdate :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerup :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onprerenderingchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onprogress :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onratechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onreadystatechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onreset :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onresize :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onresume :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onscroll :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsearch :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsecuritypolicyviolation :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onseeked :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onseeking :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onselect :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onselectionchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onselectstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onslotchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onstalled :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsubmit :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsuspend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontimeupdate :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontoggle :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitioncancel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitionend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitionrun :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitionstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onvisibilitychange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onvolumechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwaiting :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitanimationend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitanimationiteration :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitanimationstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitfullscreenchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitfullscreenerror :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkittransitionend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwheel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method pictureInPictureElement : element Js.t Js.opt Js.readonly_prop
  method pictureInPictureEnabled : bool Js.t Js.readonly_prop
  method plugins : html_collection Js.t Js.readonly_prop
  method pointerLockElement : element Js.t Js.opt Js.readonly_prop
  method prerendering : bool Js.t Js.readonly_prop
  method readyState : document_ready_state Js.readonly_prop
  method referrer : Js.js_string Js.t Js.readonly_prop
  method rootElement : (* unresolved SVGSVGElement *) untranslated Js.readonly_prop
  method scripts : html_collection Js.t Js.readonly_prop
  method scrollingElement : element Js.t Js.opt Js.readonly_prop
  method styleSheets : (* unresolved StyleSheetList *) untranslated Js.readonly_prop
  method timeline : (* unresolved DocumentTimeline *) untranslated Js.readonly_prop
  method title : Js.js_string Js.t Js.prop
  method visibilityState : visibility_state Js.readonly_prop
  method vlinkColor : Js.js_string Js.t Js.prop
  method wasDiscarded : bool Js.t Js.readonly_prop
  method webkitCurrentFullScreenElement : element Js.t Js.readonly_prop
  method webkitFullscreenElement : element Js.t Js.readonly_prop
  method webkitFullscreenEnabled : bool Js.t Js.readonly_prop
  method webkitHidden : bool Js.t Js.readonly_prop
  method webkitIsFullScreen : bool Js.t Js.readonly_prop
  method webkitVisibilityState : Js.js_string Js.t Js.readonly_prop
  method xmlEncoding : Js.js_string Js.t Js.opt Js.readonly_prop
  method xmlStandalone : bool Js.t Js.prop
  method xmlVersion : Js.js_string Js.t Js.opt Js.prop
  method adoptNode : node:node Js.t -> node Js.t Js.meth
  method append : unit Js.meth
  method append_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method append_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method append_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method captureEvents : unit Js.meth

  method caretRangeFromPoint :
    x:Js.number Js.t Js.optdef -> y:Js.number Js.t Js.optdef -> range Js.t Js.meth

  method clear : unit Js.meth
  method close : unit Js.meth
  method createAttribute : localName:Js.js_string Js.t -> attr Js.t Js.meth

  method createAttributeNS :
    namespaceURI:Js.js_string Js.t Js.opt
    -> qualifiedName:Js.js_string Js.t
    -> attr Js.t Js.meth

  method createCDATASection :
    data:Js.js_string Js.t -> (* unresolved CDATASection *) untranslated Js.meth

  method createComment : data:Js.js_string Js.t -> comment Js.t Js.meth
  method createDocumentFragment : document_fragment Js.t Js.meth
  method createElement : localName:Js.js_string Js.t -> element Js.t Js.meth

  method createElement_1 :
    localName:Js.js_string Js.t
    -> options:element_creation_options_or_string Js.t
    -> element Js.t Js.meth

  method createElementNS :
    namespaceURI:Js.js_string Js.t Js.opt
    -> qualifiedName:Js.js_string Js.t
    -> element Js.t Js.meth

  method createElementNS_1 :
    namespaceURI:Js.js_string Js.t Js.opt
    -> qualifiedName:Js.js_string Js.t
    -> options:element_creation_options_or_string Js.t
    -> element Js.t Js.meth

  method createEvent : eventType:Js.js_string Js.t -> event Js.t Js.meth

  method createExpression :
    expression:Js.js_string Js.t
    -> resolver:
         ( unit
           , prefix:Js.js_string Js.t Js.optdef -> Js.js_string Js.t Js.opt )
           Js.meth_callback
           Js.opt
           Js.optdef
    -> (* unresolved XPathExpression *) untranslated Js.meth

  method createNSResolver : nodeResolver:node Js.t -> node Js.t Js.meth

  method createNodeIterator :
    root:node Js.t
    -> whatToShow:Js.number Js.t Js.optdef
    -> filter:(unit, node:node Js.t -> Js.number Js.t) Js.meth_callback Js.opt Js.optdef
    -> node_iterator Js.t Js.meth

  method createProcessingInstruction :
    target:Js.js_string Js.t
    -> data:Js.js_string Js.t
    -> (* unresolved ProcessingInstruction *) untranslated Js.meth

  method createRange : range Js.t Js.meth
  method createTextNode : data:Js.js_string Js.t -> text Js.t Js.meth

  method createTreeWalker :
    root:node Js.t
    -> whatToShow:Js.number Js.t Js.optdef
    -> filter:(unit, node:node Js.t -> Js.number Js.t) Js.meth_callback Js.opt Js.optdef
    -> (* unresolved TreeWalker *) untranslated Js.meth

  method elementFromPoint :
    x:Js.number Js.t -> y:Js.number Js.t -> element Js.t Js.opt Js.meth

  method elementsFromPoint :
    x:Js.number Js.t -> y:Js.number Js.t -> element Js.t Js.js_array Js.t Js.meth

  method evaluate :
    expression:Js.js_string Js.t
    -> contextNode:node Js.t
    -> resolver:
         ( unit
           , prefix:Js.js_string Js.t Js.optdef -> Js.js_string Js.t Js.opt )
           Js.meth_callback
           Js.opt
           Js.optdef
    -> type_:Js.number Js.t Js.optdef
    -> inResult:Js.Unsafe.any Js.opt Js.optdef
    -> (* unresolved XPathResult *) untranslated Js.meth

  method execCommand :
    commandId:Js.js_string Js.t
    -> showUI:bool Js.t Js.optdef
    -> value:trusted_html_or_string Js.t Js.optdef
    -> bool Js.t Js.meth

  method exitFullscreen : unit js_promise Js.t Js.meth
  method exitPictureInPicture : unit js_promise Js.t Js.meth
  method exitPointerLock : unit Js.meth
  method getAnimations : (* unresolved Animation *) untranslated Js.js_array Js.t Js.meth
  method getElementById : elementId:Js.js_string Js.t -> element Js.t Js.opt Js.meth

  method getElementsByClassName :
    classNames:Js.js_string Js.t -> html_collection Js.t Js.meth

  method getElementsByName : elementName:Js.js_string Js.t -> node_list Js.t Js.meth

  method getElementsByTagName :
    localName:Js.js_string Js.t -> html_collection Js.t Js.meth

  method getElementsByTagNameNS :
    namespaceURI:Js.js_string Js.t Js.opt
    -> localName:Js.js_string Js.t
    -> html_collection Js.t Js.meth

  method getSelection : selection Js.t Js.opt Js.meth
  method hasFocus : bool Js.t Js.meth
  method hasStorageAccess : bool Js.t js_promise Js.t Js.meth
  method hasUnpartitionedCookieAccess : bool Js.t js_promise Js.t Js.meth
  method importNode : node:node Js.t -> deep:bool Js.t Js.optdef -> node Js.t Js.meth
  method moveBefore : node:node Js.t -> child:node Js.t Js.opt -> unit Js.meth

  method open_ :
    type_:Js.js_string Js.t Js.optdef
    -> replace:Js.js_string Js.t Js.optdef
    -> document Js.t Js.meth

  method open_1 :
    url:Js.js_string Js.t
    -> name:Js.js_string Js.t
    -> features:Js.js_string Js.t
    -> window Js.t Js.meth

  method prepend : unit Js.meth
  method prepend_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method prepend_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method prepend_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method queryCommandEnabled : commandId:Js.js_string Js.t -> bool Js.t Js.meth
  method queryCommandIndeterm : commandId:Js.js_string Js.t -> bool Js.t Js.meth
  method queryCommandState : commandId:Js.js_string Js.t -> bool Js.t Js.meth
  method queryCommandSupported : commandId:Js.js_string Js.t -> bool Js.t Js.meth
  method queryCommandValue : commandId:Js.js_string Js.t -> Js.js_string Js.t Js.meth
  method querySelector : selectors:Js.js_string Js.t -> element Js.t Js.opt Js.meth
  method querySelectorAll : selectors:Js.js_string Js.t -> node_list Js.t Js.meth
  method releaseEvents : unit Js.meth
  method replaceChildren : unit Js.meth
  method replaceChildren_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method replaceChildren_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method replaceChildren_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method requestStorageAccess : unit js_promise Js.t Js.meth

  method requestStorageAccess_1 :
    types:storage_access_types Js.t
    -> (* unresolved StorageAccessHandle *) untranslated js_promise Js.t Js.meth

  method requestStorageAccessFor :
    requestedOrigin:Js.js_string Js.t -> unit js_promise Js.t Js.meth

  method startViewTransition : (* unresolved ViewTransition *) untranslated Js.meth

  method startViewTransition_1 :
    update:(unit, unit js_promise Js.t) Js.meth_callback
    -> (* unresolved ViewTransition *) untranslated Js.meth

  method startViewTransition_2 :
    opts:view_transition_options Js.t
    -> (* unresolved ViewTransition *) untranslated Js.meth

  method webkitCancelFullScreen : unit Js.meth
  method webkitExitFullscreen : unit Js.meth
  method write : text:(* unresolved TrustedHTML *) untranslated -> unit Js.meth
  method write_1 : unit Js.meth
  method write_2 : text:Js.js_string Js.t -> unit Js.meth
  method write_3 : text:Js.js_string Js.t -> text1:Js.js_string Js.t -> unit Js.meth

  method write_4 :
    text:Js.js_string Js.t
    -> text1:Js.js_string Js.t
    -> text2:Js.js_string Js.t
    -> unit Js.meth

  method writeln : text:(* unresolved TrustedHTML *) untranslated -> unit Js.meth
  method writeln_1 : unit Js.meth
  method writeln_2 : text:Js.js_string Js.t -> unit Js.meth
  method writeln_3 : text:Js.js_string Js.t -> text1:Js.js_string Js.t -> unit Js.meth

  method writeln_4 :
    text:Js.js_string Js.t
    -> text1:Js.js_string Js.t
    -> text2:Js.js_string Js.t
    -> unit Js.meth
end

(* see {!Browser.Document_fragment} for module definition *)
and document_fragment = object
  inherit node
  method childElementCount : Js.number Js.t Js.readonly_prop
  method children : html_collection Js.t Js.readonly_prop
  method firstElementChild : element Js.t Js.opt Js.readonly_prop
  method lastElementChild : element Js.t Js.opt Js.readonly_prop
  method append : unit Js.meth
  method append_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method append_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method append_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method getElementById : elementId:Js.js_string Js.t -> element Js.t Js.opt Js.meth
  method moveBefore : node:node Js.t -> child:node Js.t Js.opt -> unit Js.meth
  method prepend : unit Js.meth
  method prepend_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method prepend_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method prepend_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method querySelector : selectors:Js.js_string Js.t -> element Js.t Js.opt Js.meth
  method querySelectorAll : selectors:Js.js_string Js.t -> node_list Js.t Js.meth
  method replaceChildren : unit Js.meth
  method replaceChildren_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method replaceChildren_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method replaceChildren_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth
end

(* see {!Browser.Document} for module definition *)
and document_type = object
  inherit node
  method name : Js.js_string Js.t Js.readonly_prop
  method publicId : Js.js_string Js.t Js.readonly_prop
  method systemId : Js.js_string Js.t Js.readonly_prop
  method after : unit Js.meth
  method after_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method after_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method after_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method before : unit Js.meth
  method before_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method before_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method before_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method remove : unit Js.meth
  method replaceWith : unit Js.meth
  method replaceWith_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method replaceWith_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method replaceWith_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth
end

(* see {!Browser.Mouse_event} for module definition *)
and mouse_event = object
  inherit ui_event
  method altKey : bool Js.t Js.readonly_prop
  method button : Js.number Js.t Js.readonly_prop
  method buttons : Js.number Js.t Js.readonly_prop
  method clientX : Js.number Js.t Js.readonly_prop
  method clientY : Js.number Js.t Js.readonly_prop
  method ctrlKey : bool Js.t Js.readonly_prop
  method fromElement : node Js.t Js.readonly_prop
  method layerX : Js.number Js.t Js.readonly_prop
  method layerY : Js.number Js.t Js.readonly_prop
  method metaKey : bool Js.t Js.readonly_prop
  method movementX : Js.number Js.t Js.readonly_prop
  method movementY : Js.number Js.t Js.readonly_prop
  method offsetX : Js.number Js.t Js.readonly_prop
  method offsetY : Js.number Js.t Js.readonly_prop
  method pageX : Js.number Js.t Js.readonly_prop
  method pageY : Js.number Js.t Js.readonly_prop
  method relatedTarget : event_target Js.t Js.opt Js.readonly_prop
  method screenX : Js.number Js.t Js.readonly_prop
  method screenY : Js.number Js.t Js.readonly_prop
  method shiftKey : bool Js.t Js.readonly_prop
  method toElement : node Js.t Js.readonly_prop
  method x : Js.number Js.t Js.readonly_prop
  method y : Js.number Js.t Js.readonly_prop
  method getModifierState : keyArg:Js.js_string Js.t -> bool Js.t Js.meth

  method initMouseEvent :
    type_:Js.js_string Js.t
    -> bubbles:bool Js.t Js.optdef
    -> cancelable:bool Js.t Js.optdef
    -> view:window Js.t Js.opt Js.optdef
    -> detail:Js.number Js.t Js.optdef
    -> screenX:Js.number Js.t Js.optdef
    -> screenY:Js.number Js.t Js.optdef
    -> clientX:Js.number Js.t Js.optdef
    -> clientY:Js.number Js.t Js.optdef
    -> ctrlKey:bool Js.t Js.optdef
    -> altKey:bool Js.t Js.optdef
    -> shiftKey:bool Js.t Js.optdef
    -> metaKey:bool Js.t Js.optdef
    -> button:Js.number Js.t Js.optdef
    -> relatedTarget:event_target Js.t Js.opt Js.optdef
    -> unit Js.meth
end

(* see {!Browser.Drag_event} for module definition *)
and drag_event = object
  inherit mouse_event
  method dataTransfer : data_transfer Js.t Js.opt Js.readonly_prop
end

(* see {!Browser.Element} for module definition *)
and element = object
  inherit node
  method ariaAtomic : Js.js_string Js.t Js.opt Js.prop
  method ariaAutoComplete : Js.js_string Js.t Js.opt Js.prop
  method ariaBrailleLabel : Js.js_string Js.t Js.opt Js.prop
  method ariaBrailleRoleDescription : Js.js_string Js.t Js.opt Js.prop
  method ariaBusy : Js.js_string Js.t Js.opt Js.prop
  method ariaChecked : Js.js_string Js.t Js.opt Js.prop
  method ariaColCount : Js.js_string Js.t Js.opt Js.prop
  method ariaColIndex : Js.js_string Js.t Js.opt Js.prop
  method ariaColSpan : Js.js_string Js.t Js.opt Js.prop
  method ariaCurrent : Js.js_string Js.t Js.opt Js.prop
  method ariaDescription : Js.js_string Js.t Js.opt Js.prop
  method ariaDisabled : Js.js_string Js.t Js.opt Js.prop
  method ariaExpanded : Js.js_string Js.t Js.opt Js.prop
  method ariaHasPopup : Js.js_string Js.t Js.opt Js.prop
  method ariaHidden : Js.js_string Js.t Js.opt Js.prop
  method ariaInvalid : Js.js_string Js.t Js.opt Js.prop
  method ariaKeyShortcuts : Js.js_string Js.t Js.opt Js.prop
  method ariaLabel : Js.js_string Js.t Js.opt Js.prop
  method ariaLevel : Js.js_string Js.t Js.opt Js.prop
  method ariaLive : Js.js_string Js.t Js.opt Js.prop
  method ariaModal : Js.js_string Js.t Js.opt Js.prop
  method ariaMultiLine : Js.js_string Js.t Js.opt Js.prop
  method ariaMultiSelectable : Js.js_string Js.t Js.opt Js.prop
  method ariaOrientation : Js.js_string Js.t Js.opt Js.prop
  method ariaPlaceholder : Js.js_string Js.t Js.opt Js.prop
  method ariaPosInSet : Js.js_string Js.t Js.opt Js.prop
  method ariaPressed : Js.js_string Js.t Js.opt Js.prop
  method ariaReadOnly : Js.js_string Js.t Js.opt Js.prop
  method ariaRelevant : Js.js_string Js.t Js.opt Js.prop
  method ariaRequired : Js.js_string Js.t Js.opt Js.prop
  method ariaRoleDescription : Js.js_string Js.t Js.opt Js.prop
  method ariaRowCount : Js.js_string Js.t Js.opt Js.prop
  method ariaRowIndex : Js.js_string Js.t Js.opt Js.prop
  method ariaRowSpan : Js.js_string Js.t Js.opt Js.prop
  method ariaSelected : Js.js_string Js.t Js.opt Js.prop
  method ariaSetSize : Js.js_string Js.t Js.opt Js.prop
  method ariaSort : Js.js_string Js.t Js.opt Js.prop
  method ariaValueMax : Js.js_string Js.t Js.opt Js.prop
  method ariaValueMin : Js.js_string Js.t Js.opt Js.prop
  method ariaValueNow : Js.js_string Js.t Js.opt Js.prop
  method ariaValueText : Js.js_string Js.t Js.opt Js.prop

  method assignedSlot :
    (* unresolved HTMLSlotElement *)
    untranslated Js.opt Js.readonly_prop

  method attributes : named_node_map Js.t Js.readonly_prop
  method childElementCount : Js.number Js.t Js.readonly_prop
  method children : html_collection Js.t Js.readonly_prop
  method classList : dom_token_list Js.t Js.readonly_prop

  (* This attribute has a type conflict in the inheritance hierarchy (i.e. a derived
     interface will override this attribute). We use an opaque type to handle both the
     original and overridden types safely. *)
  method className : class_name_type Js.t Js.prop
  method clientHeight : Js.number Js.t Js.readonly_prop
  method clientLeft : Js.number Js.t Js.readonly_prop
  method clientTop : Js.number Js.t Js.readonly_prop
  method clientWidth : Js.number Js.t Js.readonly_prop
  method elementTiming : Js.js_string Js.t Js.prop
  method firstElementChild : element Js.t Js.opt Js.readonly_prop
  method id : Js.js_string Js.t Js.prop
  method innerHTML : Js.js_string Js.t Js.prop
  method lastElementChild : element Js.t Js.opt Js.readonly_prop
  method localName : Js.js_string Js.t Js.readonly_prop
  method namespaceURI : Js.js_string Js.t Js.opt Js.readonly_prop
  method nextElementSibling : element Js.t Js.opt Js.readonly_prop

  method onbeforecopy :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforecut :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforepaste :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onfullscreenchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onfullscreenerror :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsearch :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitfullscreenchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitfullscreenerror :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method outerHTML : Js.js_string Js.t Js.prop
  method part : dom_token_list Js.t Js.readonly_prop
  method prefix : Js.js_string Js.t Js.opt Js.readonly_prop
  method previousElementSibling : element Js.t Js.opt Js.readonly_prop
  method role : Js.js_string Js.t Js.opt Js.prop
  method scrollHeight : Js.number Js.t Js.readonly_prop
  method scrollLeft : Js.number Js.t Js.prop
  method scrollTop : Js.number Js.t Js.prop
  method scrollWidth : Js.number Js.t Js.readonly_prop
  method shadowRoot : (* unresolved ShadowRoot *) untranslated Js.opt Js.readonly_prop
  method slot : Js.js_string Js.t Js.prop
  method tagName : Js.js_string Js.t Js.readonly_prop
  method after : unit Js.meth
  method after_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method after_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method after_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method animate :
    keyframes:Js.Unsafe.any Js.opt
    -> options:keyframe_animation_options_or_float Js.t Js.optdef
    -> (* unresolved Animation *) untranslated Js.meth

  method append : unit Js.meth
  method append_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method append_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method append_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method attachShadow :
    shadowRootInitDict:shadow_root_init Js.t
    -> (* unresolved ShadowRoot *) untranslated Js.meth

  method before : unit Js.meth
  method before_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method before_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method before_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method checkVisibility :
    options:check_visibility_options Js.t Js.optdef -> bool Js.t Js.meth

  method closest : selectors:Js.js_string Js.t -> element Js.t Js.opt Js.meth
  method computedStyleMap : style_property_map_read_only Js.t Js.meth

  method getAnimations :
    options:get_animations_options Js.t Js.optdef
    -> (* unresolved Animation *) untranslated Js.js_array Js.t Js.meth

  method getAttribute : name:Js.js_string Js.t -> Js.js_string Js.t Js.opt Js.meth

  method getAttributeNS :
    namespaceURI:Js.js_string Js.t Js.opt
    -> localName:Js.js_string Js.t
    -> Js.js_string Js.t Js.opt Js.meth

  method getAttributeNames : Js.js_string Js.t Js.js_array Js.t Js.meth
  method getAttributeNode : name:Js.js_string Js.t -> attr Js.t Js.opt Js.meth

  method getAttributeNodeNS :
    namespaceURI:Js.js_string Js.t Js.opt
    -> localName:Js.js_string Js.t
    -> attr Js.t Js.opt Js.meth

  method getBoundingClientRect : dom_rect Js.t Js.meth
  method getClientRects : dom_rect_list Js.t Js.meth

  method getElementsByClassName :
    classNames:Js.js_string Js.t -> html_collection Js.t Js.meth

  method getElementsByTagName :
    localName:Js.js_string Js.t -> html_collection Js.t Js.meth

  method getElementsByTagNameNS :
    namespaceURI:Js.js_string Js.t Js.opt
    -> localName:Js.js_string Js.t
    -> html_collection Js.t Js.meth

  method getHTML : options:get_html_options Js.t Js.optdef -> Js.js_string Js.t Js.meth
  method hasAttribute : name:Js.js_string Js.t -> bool Js.t Js.meth

  method hasAttributeNS :
    namespaceURI:Js.js_string Js.t Js.opt
    -> localName:Js.js_string Js.t
    -> bool Js.t Js.meth

  method hasAttributes : bool Js.t Js.meth
  method hasPointerCapture : pointerId:Js.number Js.t -> bool Js.t Js.meth

  method insertAdjacentElement :
    where:Js.js_string Js.t -> element:element Js.t -> element Js.t Js.opt Js.meth

  method insertAdjacentHTML :
    position:Js.js_string Js.t -> text:html_string Js.t -> unit Js.meth

  method insertAdjacentText :
    where:Js.js_string Js.t -> data:Js.js_string Js.t -> unit Js.meth

  method matches : selectors:Js.js_string Js.t -> bool Js.t Js.meth
  method moveBefore : node:node Js.t -> child:node Js.t Js.opt -> unit Js.meth
  method prepend : unit Js.meth
  method prepend_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method prepend_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method prepend_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method querySelector : selectors:Js.js_string Js.t -> element Js.t Js.opt Js.meth
  method querySelectorAll : selectors:Js.js_string Js.t -> node_list Js.t Js.meth
  method releasePointerCapture : pointerId:Js.number Js.t -> unit Js.meth
  method remove : unit Js.meth
  method removeAttribute : name:Js.js_string Js.t -> unit Js.meth

  method removeAttributeNS :
    namespaceURI:Js.js_string Js.t Js.opt -> localName:Js.js_string Js.t -> unit Js.meth

  method removeAttributeNode : attr:attr Js.t -> attr Js.t Js.meth
  method replaceChildren : unit Js.meth
  method replaceChildren_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method replaceChildren_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method replaceChildren_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method replaceWith : unit Js.meth
  method replaceWith_1 : node:node_or_trusted_script_or_string Js.t -> unit Js.meth

  method replaceWith_2 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method replaceWith_3 :
    node:node_or_trusted_script_or_string Js.t
    -> node1:node_or_trusted_script_or_string Js.t
    -> node2:node_or_trusted_script_or_string Js.t
    -> unit Js.meth

  method requestFullscreen :
    options:fullscreen_options Js.t Js.optdef -> unit js_promise Js.t Js.meth

  method requestPointerLock :
    options:pointer_lock_options Js.t Js.optdef -> unit js_promise Js.t Js.meth

  method scroll : options:scroll_to_options Js.t Js.optdef -> unit Js.meth
  method scroll_1 : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth
  method scrollBy : options:scroll_to_options Js.t Js.optdef -> unit Js.meth
  method scrollBy_1 : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth

  method scrollIntoView :
    arg:scroll_into_view_options_or_bool Js.t Js.optdef -> unit Js.meth

  method scrollIntoViewIfNeeded : centerIfNeeded:bool Js.t Js.optdef -> unit Js.meth
  method scrollTo : options:scroll_to_options Js.t Js.optdef -> unit Js.meth
  method scrollTo_1 : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth
  method setAttribute : name:Js.js_string Js.t -> value:trusted_type Js.t -> unit Js.meth

  method setAttribute_1 :
    name:Js.js_string Js.t -> value:Js.js_string Js.t -> unit Js.meth

  method setAttributeNS :
    namespaceURI:Js.js_string Js.t Js.opt
    -> name:Js.js_string Js.t
    -> value:trusted_type Js.t
    -> unit Js.meth

  method setAttributeNS_1 :
    namespaceURI:Js.js_string Js.t Js.opt
    -> name:Js.js_string Js.t
    -> value:Js.js_string Js.t
    -> unit Js.meth

  method setAttributeNode : attr:attr Js.t -> attr Js.t Js.opt Js.meth
  method setAttributeNodeNS : attr:attr Js.t -> attr Js.t Js.opt Js.meth
  method setHTMLUnsafe : html:html_string Js.t -> unit Js.meth
  method setPointerCapture : pointerId:Js.number Js.t -> unit Js.meth

  method toggleAttribute :
    qualifiedName:Js.js_string Js.t -> force:bool Js.t Js.optdef -> bool Js.t Js.meth

  method webkitMatchesSelector : selectors:Js.js_string Js.t -> bool Js.t Js.meth

  method webkitRequestFullScreen :
    options:fullscreen_options Js.t Js.optdef -> unit Js.meth

  method webkitRequestFullscreen :
    options:fullscreen_options Js.t Js.optdef -> unit Js.meth
end

(* see {!Browser.Entry} for module definition *)
and entry = object
  method filesystem : (* unresolved DOMFileSystem *) untranslated Js.readonly_prop
  method fullPath : Js.js_string Js.t Js.readonly_prop
  method isDirectory : bool Js.t Js.readonly_prop
  method isFile : bool Js.t Js.readonly_prop
  method name : Js.js_string Js.t Js.readonly_prop

  method copyTo :
    parent:(* unresolved DirectoryEntry *) untranslated
    -> name:Js.js_string Js.t Js.opt Js.optdef
    -> successCallback:(unit, entry:entry Js.t -> unit) Js.meth_callback Js.opt Js.optdef
    -> errorCallback:
         (unit, error:dom_exception Js.t -> unit) Js.meth_callback Js.opt Js.optdef
    -> unit Js.meth

  method getMetadata :
    successCallback:
      (unit, metadata:(* unresolved Metadata *) untranslated -> unit) Js.meth_callback
    -> errorCallback:
         (unit, error:dom_exception Js.t -> unit) Js.meth_callback Js.opt Js.optdef
    -> unit Js.meth

  method getParent :
    successCallback:(unit, entry:entry Js.t -> unit) Js.meth_callback Js.opt Js.optdef
    -> errorCallback:
         (unit, error:dom_exception Js.t -> unit) Js.meth_callback Js.opt Js.optdef
    -> unit Js.meth

  method moveTo :
    parent:(* unresolved DirectoryEntry *) untranslated
    -> name:Js.js_string Js.t Js.opt Js.optdef
    -> successCallback:(unit, entry:entry Js.t -> unit) Js.meth_callback Js.opt Js.optdef
    -> errorCallback:
         (unit, error:dom_exception Js.t -> unit) Js.meth_callback Js.opt Js.optdef
    -> unit Js.meth

  method remove :
    successCallback:(unit, unit) Js.meth_callback
    -> errorCallback:
         (unit, error:dom_exception Js.t -> unit) Js.meth_callback Js.opt Js.optdef
    -> unit Js.meth

  method toURL : Js.js_string Js.t Js.meth
end

(* see {!Browser.Error_event} for module definition *)
and error_event = object
  inherit event
  method colno : Js.number Js.t Js.readonly_prop
  method error : Js.Unsafe.any Js.readonly_prop
  method filename : Js.js_string Js.t Js.readonly_prop
  method lineno : Js.number Js.t Js.readonly_prop
  method message : Js.js_string Js.t Js.readonly_prop
end

(* see {!Browser.File} for module definition *)
and file = object
  inherit blob
  method lastModified : Js.number Js.t Js.readonly_prop
  method lastModifiedDate : Js.Unsafe.any Js.opt Js.readonly_prop
  method name : Js.js_string Js.t Js.readonly_prop
  method webkitRelativePath : Js.js_string Js.t Js.readonly_prop
end

(* see {!Browser.File_list} for module definition *)
and file_list = object
  method length : Js.number Js.t Js.readonly_prop
  method item : index:Js.number Js.t -> file Js.t Js.opt Js.meth
end

(* see {!Browser.File_reader} for module definition *)
and file_reader = object
  inherit event_target
  method error : dom_exception Js.t Js.opt Js.readonly_prop

  method onabort :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onerror :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onload :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onprogress :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method readyState : Js.number Js.t Js.readonly_prop
  method result : array_buffer_or_string Js.t Js.opt Js.readonly_prop
  method abort : unit Js.meth
  method readAsArrayBuffer : blob:blob Js.t -> unit Js.meth
  method readAsBinaryString : blob:blob Js.t -> unit Js.meth
  method readAsDataURL : blob:blob Js.t -> unit Js.meth
  method readAsText : blob:blob Js.t -> label:Js.js_string Js.t Js.optdef -> unit Js.meth
end

(* see {!Browser.Focus_event} for module definition *)
and focus_event = object
  inherit ui_event
  method relatedTarget : event_target Js.t Js.opt Js.readonly_prop
end

(* see {!Browser.Font_face} for module definition *)
and font_face = object
  method ascentOverride : cssom_string Js.t Js.prop
  method descentOverride : cssom_string Js.t Js.prop
  method display : cssom_string Js.t Js.prop
  method family : cssom_string Js.t Js.prop
  method featureSettings : cssom_string Js.t Js.prop
  method lineGapOverride : cssom_string Js.t Js.prop
  method loaded : font_face Js.t js_promise Js.t Js.readonly_prop
  method sizeAdjust : cssom_string Js.t Js.prop
  method status : font_face_load_status Js.readonly_prop
  method stretch : cssom_string Js.t Js.prop
  method style : cssom_string Js.t Js.prop
  method unicodeRange : cssom_string Js.t Js.prop
  method variant : cssom_string Js.t Js.prop
  method weight : cssom_string Js.t Js.prop
  method load : font_face Js.t js_promise Js.t Js.meth
end

(* see {!Browser.Font_face_set} for module definition *)
and font_face_set = object
  inherit event_target
  inherit [font_face Js.t] js_setlike

  method onloading :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadingdone :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadingerror :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ready : font_face_set Js.t js_promise Js.t Js.readonly_prop
  method status : font_face_set_load_status Js.readonly_prop

  method check :
    font:Js.js_string Js.t -> text:Js.js_string Js.t Js.optdef -> bool Js.t Js.meth

  method load :
    font:Js.js_string Js.t
    -> text:Js.js_string Js.t Js.optdef
    -> font_face Js.t Js.js_array Js.t js_promise Js.t Js.meth
end

(* see {!Browser.Form_data} for module definition *)
and form_data = object
  inherit [Js.js_string Js.t, form_data_entry_value Js.t] js_iterable
  method append : name:Js.js_string Js.t -> value:Js.js_string Js.t -> unit Js.meth

  method append_1 :
    name:Js.js_string Js.t
    -> value:blob Js.t
    -> filename:Js.js_string Js.t Js.optdef
    -> unit Js.meth

  method delete : name:Js.js_string Js.t -> unit Js.meth
  method get : name:Js.js_string Js.t -> form_data_entry_value Js.t Js.opt Js.meth

  method getAll :
    name:Js.js_string Js.t -> form_data_entry_value Js.t Js.js_array Js.t Js.meth

  method has : name:Js.js_string Js.t -> bool Js.t Js.meth
  method set : name:Js.js_string Js.t -> value:Js.js_string Js.t -> unit Js.meth

  method set_1 :
    name:Js.js_string Js.t
    -> value:blob Js.t
    -> filename:Js.js_string Js.t Js.optdef
    -> unit Js.meth
end

(* see {!Browser.Window} for module definition *)
and gpu = object
  method wgslLanguageFeatures :
    (* unresolved WGSLLanguageFeatures *)
    untranslated Js.readonly_prop

  method getPreferredCanvasFormat : gpu_texture_format Js.meth

  method requestAdapter :
    options:gpu_request_adapter_options Js.t Js.optdef
    -> gpu_adapter Js.t Js.opt js_promise Js.t Js.meth
end

(* see {!Browser.Window} for module definition *)
and gpu_adapter = object
  method features : (* unresolved GPUSupportedFeatures *) untranslated Js.readonly_prop
  method info : (* unresolved GPUAdapterInfo *) untranslated Js.readonly_prop
  method isFallbackAdapter : bool Js.t Js.readonly_prop
  method limits : (* unresolved GPUSupportedLimits *) untranslated Js.readonly_prop

  method requestDevice :
    descriptor:gpu_device_descriptor Js.t Js.optdef
    -> gpu_device Js.t js_promise Js.t Js.meth
end

(* see {!Browser.Gpu_canvas_context} for module definition *)
and gpu_canvas_context = object
  method canvas : html_canvas_element_or_offscreen_canvas Js.t Js.readonly_prop
  method configure : descriptor:gpu_canvas_configuration Js.t -> unit Js.meth
  method getConfiguration : gpu_canvas_configuration Js.t Js.opt Js.meth
  method getCurrentTexture : gpu_texture Js.t Js.meth
  method unconfigure : unit Js.meth
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_command_buffer = object
  method label : Js.js_string Js.t Js.prop
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_command_encoder = object
  method label : Js.js_string Js.t Js.prop

  method beginComputePass :
    descriptor:gpu_compute_pass_descriptor Js.t Js.optdef
    -> (* unresolved GPUComputePassEncoder *) untranslated Js.meth

  method beginRenderPass :
    descriptor:gpu_render_pass_descriptor Js.t -> gpu_render_pass_encoder Js.t Js.meth

  method clearBuffer :
    buffer:(* unresolved GPUBuffer *) untranslated
    -> offset:gpu_size64 Js.t Js.optdef
    -> size:gpu_size64 Js.t Js.optdef
    -> unit Js.meth

  method copyBufferToBuffer :
    src:(* unresolved GPUBuffer *) untranslated
    -> srcOffset:gpu_size64 Js.t
    -> dst:(* unresolved GPUBuffer *) untranslated
    -> dstOffset:gpu_size64 Js.t
    -> size:gpu_size64 Js.t
    -> unit Js.meth

  method copyBufferToTexture :
    source:gpu_texel_copy_buffer_info Js.t
    -> destination:gpu_texel_copy_texture_info Js.t
    -> copySize:gpu_extent3d Js.t
    -> unit Js.meth

  method copyTextureToBuffer :
    source:gpu_texel_copy_texture_info Js.t
    -> destination:gpu_texel_copy_buffer_info Js.t
    -> copySize:gpu_extent3d Js.t
    -> unit Js.meth

  method copyTextureToTexture :
    source:gpu_texel_copy_texture_info Js.t
    -> destination:gpu_texel_copy_texture_info Js.t
    -> copySize:gpu_extent3d Js.t
    -> unit Js.meth

  method finish :
    descriptor:gpu_command_buffer_descriptor Js.t Js.optdef
    -> gpu_command_buffer Js.t Js.meth

  method insertDebugMarker : markerLabel:Js.js_string Js.t -> unit Js.meth
  method popDebugGroup : unit Js.meth
  method pushDebugGroup : groupLabel:Js.js_string Js.t -> unit Js.meth

  method resolveQuerySet :
    querySet:gpu_query_set Js.t
    -> firstQuery:gpu_size32 Js.t
    -> queryCount:gpu_size32 Js.t
    -> destination:(* unresolved GPUBuffer *) untranslated
    -> destinationOffset:gpu_size64 Js.t
    -> unit Js.meth
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_device = object
  inherit event_target
  method adapterInfo : (* unresolved GPUAdapterInfo *) untranslated Js.readonly_prop
  method features : (* unresolved GPUSupportedFeatures *) untranslated Js.readonly_prop
  method label : Js.js_string Js.t Js.prop
  method limits : (* unresolved GPUSupportedLimits *) untranslated Js.readonly_prop

  method lost :
    (* unresolved GPUDeviceLostInfo *)
    untranslated js_promise Js.t Js.readonly_prop

  method onuncapturederror :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method queue : gpu_queue Js.t Js.readonly_prop

  method createBindGroup :
    descriptor:gpu_bind_group_descriptor Js.t
    -> (* unresolved GPUBindGroup *) untranslated Js.meth

  method createBindGroupLayout :
    descriptor:gpu_bind_group_layout_descriptor Js.t
    -> (* unresolved GPUBindGroupLayout *) untranslated Js.meth

  method createBuffer :
    descriptor:gpu_buffer_descriptor Js.t
    -> (* unresolved GPUBuffer *) untranslated Js.meth

  method createCommandEncoder :
    descriptor:gpu_command_encoder_descriptor Js.t Js.optdef
    -> gpu_command_encoder Js.t Js.meth

  method createComputePipeline :
    descriptor:gpu_compute_pipeline_descriptor Js.t
    -> (* unresolved GPUComputePipeline *) untranslated Js.meth

  method createComputePipelineAsync :
    descriptor:gpu_compute_pipeline_descriptor Js.t
    -> (* unresolved GPUComputePipeline *) untranslated js_promise Js.t Js.meth

  method createPipelineLayout :
    descriptor:gpu_pipeline_layout_descriptor Js.t
    -> (* unresolved GPUPipelineLayout *) untranslated Js.meth

  method createQuerySet :
    descriptor:gpu_query_set_descriptor Js.t -> gpu_query_set Js.t Js.meth

  method createRenderBundleEncoder :
    descriptor:gpu_render_bundle_encoder_descriptor Js.t
    -> (* unresolved GPURenderBundleEncoder *) untranslated Js.meth

  method createRenderPipeline :
    descriptor:gpu_render_pipeline_descriptor Js.t
    -> (* unresolved GPURenderPipeline *) untranslated Js.meth

  method createRenderPipelineAsync :
    descriptor:gpu_render_pipeline_descriptor Js.t
    -> (* unresolved GPURenderPipeline *) untranslated js_promise Js.t Js.meth

  method createSampler :
    descriptor:gpu_sampler_descriptor Js.t Js.optdef
    -> (* unresolved GPUSampler *) untranslated Js.meth

  method createShaderModule :
    descriptor:gpu_shader_module_descriptor Js.t
    -> (* unresolved GPUShaderModule *) untranslated Js.meth

  method createTexture :
    descriptor:gpu_texture_descriptor Js.t -> gpu_texture Js.t Js.meth

  method destroy : unit Js.meth

  method importExternalTexture :
    descriptor:gpu_external_texture_descriptor Js.t
    -> (* unresolved GPUExternalTexture *) untranslated Js.meth

  method popErrorScope :
    (* unresolved GPUError *)
    untranslated Js.opt js_promise Js.t Js.meth

  method pushErrorScope : filter:gpu_error_filter -> unit Js.meth
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_query_set = object
  method count : gpu_size32 Js.t Js.readonly_prop
  method label : Js.js_string Js.t Js.prop
  method type_ : gpu_query_type Js.readonly_prop
  method destroy : unit Js.meth
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_queue = object
  method label : Js.js_string Js.t Js.prop

  method copyExternalImageToTexture :
    source:gpu_image_copy_external_image Js.t
    -> destination:gpu_image_copy_texture_tagged Js.t
    -> copySize:gpu_extent3d Js.t
    -> unit Js.meth

  method onSubmittedWorkDone : unit js_promise Js.t Js.meth
  method submit : buffers:gpu_command_buffer Js.t Js.js_array Js.t -> unit Js.meth

  method writeBuffer :
    buffer:(* unresolved GPUBuffer *) untranslated
    -> bufferOffset:gpu_size64 Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> dataElementOffset:gpu_size64 Js.t Js.optdef
    -> dataElementCount:gpu_size64 Js.t Js.optdef
    -> unit Js.meth

  method writeBuffer_1 :
    buffer:(* unresolved GPUBuffer *) untranslated
    -> bufferOffset:gpu_size64 Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBuffer Js.t
    -> dataByteOffset:gpu_size64 Js.t Js.optdef
    -> byteSize:gpu_size64 Js.t Js.optdef
    -> unit Js.meth

  method writeTexture :
    destination:gpu_texel_copy_texture_info Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> dataLayout:gpu_texel_copy_buffer_layout Js.t
    -> size:gpu_extent3d Js.t
    -> unit Js.meth

  method writeTexture_1 :
    destination:gpu_texel_copy_texture_info Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBuffer Js.t
    -> dataLayout:gpu_texel_copy_buffer_layout Js.t
    -> size:gpu_extent3d Js.t
    -> unit Js.meth
end

(* see {!Browser.Gpu_device} for module definition *)
and gpu_render_pass_encoder = object
  method label : Js.js_string Js.t Js.prop
  method beginOcclusionQuery : queryIndex:gpu_size32 Js.t -> unit Js.meth

  method draw :
    vertexCount:gpu_size32 Js.t
    -> instanceCount:gpu_size32 Js.t Js.optdef
    -> firstVertex:gpu_size32 Js.t Js.optdef
    -> firstInstance:gpu_size32 Js.t Js.optdef
    -> unit Js.meth

  method drawIndexed :
    indexCount:gpu_size32 Js.t
    -> instanceCount:gpu_size32 Js.t Js.optdef
    -> firstIndex:gpu_size32 Js.t Js.optdef
    -> baseVertex:gpu_signed_offset32 Js.t Js.optdef
    -> firstInstance:gpu_size32 Js.t Js.optdef
    -> unit Js.meth

  method drawIndexedIndirect :
    indirectBuffer:(* unresolved GPUBuffer *) untranslated
    -> indirectOffset:gpu_size64 Js.t
    -> unit Js.meth

  method drawIndirect :
    indirectBuffer:(* unresolved GPUBuffer *) untranslated
    -> indirectOffset:gpu_size64 Js.t
    -> unit Js.meth

  method end_ : unit Js.meth
  method endOcclusionQuery : unit Js.meth

  method executeBundles :
    bundles:(* unresolved GPURenderBundle *) untranslated Js.js_array Js.t -> unit Js.meth

  method insertDebugMarker : markerLabel:Js.js_string Js.t -> unit Js.meth
  method popDebugGroup : unit Js.meth
  method pushDebugGroup : groupLabel:Js.js_string Js.t -> unit Js.meth

  method setBindGroup :
    index:gpu_index32 Js.t
    -> bindGroup:(* unresolved GPUBindGroup *) untranslated Js.opt
    -> dynamicOffsets:gpu_buffer_dynamic_offset Js.t Js.js_array Js.t Js.optdef
    -> unit Js.meth

  method setBindGroup_1 :
    index:gpu_index32 Js.t
    -> bindGroup:(* unresolved GPUBindGroup *) untranslated Js.opt
    -> dynamicOffsetsData:Js_of_ocaml.Typed_array.uint32Array Js.t
    -> dynamicOffsetsDataStart:gpu_size64 Js.t
    -> dynamicOffsetsDataLength:gpu_size32 Js.t
    -> unit Js.meth

  method setBlendConstant : color:gpu_color Js.t -> unit Js.meth

  method setIndexBuffer :
    buffer:(* unresolved GPUBuffer *) untranslated
    -> format:gpu_index_format
    -> offset:gpu_size64 Js.t Js.optdef
    -> size:gpu_size64 Js.t Js.optdef
    -> unit Js.meth

  method setPipeline :
    pipeline:(* unresolved GPURenderPipeline *) untranslated -> unit Js.meth

  method setScissorRect :
    x:gpu_integer_coordinate Js.t
    -> y:gpu_integer_coordinate Js.t
    -> width:gpu_integer_coordinate Js.t
    -> height:gpu_integer_coordinate Js.t
    -> unit Js.meth

  method setStencilReference : reference:gpu_stencil_value Js.t -> unit Js.meth

  method setVertexBuffer :
    slot:gpu_index32 Js.t
    -> buffer:(* unresolved GPUBuffer *) untranslated Js.opt
    -> offset:gpu_size64 Js.t Js.optdef
    -> size:gpu_size64 Js.t Js.optdef
    -> unit Js.meth

  method setViewport :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> width:Js.number Js.t
    -> height:Js.number Js.t
    -> minDepth:Js.number Js.t
    -> maxDepth:Js.number Js.t
    -> unit Js.meth

  method writeTimestamp :
    querySet:gpu_query_set Js.t -> queryIndex:gpu_size32 Js.t -> unit Js.meth
end

(* see {!Browser.Gpu_texture} for module definition *)
and gpu_texture = object
  method depthOrArrayLayers : gpu_integer_coordinate Js.t Js.readonly_prop
  method dimension : gpu_texture_dimension Js.readonly_prop
  method format : gpu_texture_format Js.readonly_prop
  method height : gpu_integer_coordinate Js.t Js.readonly_prop
  method label : Js.js_string Js.t Js.prop
  method mipLevelCount : gpu_integer_coordinate Js.t Js.readonly_prop
  method sampleCount : gpu_size32 Js.t Js.readonly_prop
  method usage : gpu_flags_constant Js.t Js.readonly_prop
  method width : gpu_integer_coordinate Js.t Js.readonly_prop

  method createView :
    descriptor:gpu_texture_view_descriptor Js.t Js.optdef -> gpu_texture_view Js.t Js.meth

  method destroy : unit Js.meth
end

(* see {!Browser.Gpu_texture_view} for module definition *)
and gpu_texture_view = object
  method label : Js.js_string Js.t Js.prop
end

(* see {!Browser.Window} for module definition *)
and geolocation = object
  method clearWatch : watchID:Js.number Js.t -> unit Js.meth

  method getCurrentPosition :
    successCallback:(unit, position:geolocation_position Js.t -> unit) Js.meth_callback
    -> errorCallback:
         (unit, positionError:geolocation_position_error Js.t -> unit) Js.meth_callback
           Js.opt
           Js.optdef
    -> options:position_options Js.t Js.optdef
    -> unit Js.meth

  method watchPosition :
    successCallback:(unit, position:geolocation_position Js.t -> unit) Js.meth_callback
    -> errorCallback:
         (unit, positionError:geolocation_position_error Js.t -> unit) Js.meth_callback
           Js.opt
           Js.optdef
    -> options:position_options Js.t Js.optdef
    -> Js.number Js.t Js.meth
end

(* see {!Browser.Window} for module definition *)
and geolocation_position = object
  method coords : (* unresolved GeolocationCoordinates *) untranslated Js.readonly_prop
  method timestamp : epoch_time_stamp Js.t Js.readonly_prop
  method toJSON : Js.Unsafe.any Js.meth
end

(* see {!Browser.Window} for module definition *)
and geolocation_position_error = object
  method code : Js.number Js.t Js.readonly_prop
  method message : Js.js_string Js.t Js.readonly_prop
end

(* see {!Browser.Html_element} for module definition *)
and html_element = object
  inherit element
  method accessKey : Js.js_string Js.t Js.prop
  method attributeStyleMap : style_property_map Js.t Js.readonly_prop
  method autocapitalize : Js.js_string Js.t Js.prop
  method autofocus : bool Js.t Js.prop
  method contentEditable : Js.js_string Js.t Js.prop
  method dataset : (* unresolved DOMStringMap *) untranslated Js.readonly_prop
  method dir : Js.js_string Js.t Js.prop
  method draggable : bool Js.t Js.prop
  method editContext : (* unresolved EditContext *) untranslated Js.opt Js.prop
  method enterKeyHint : Js.js_string Js.t Js.prop
  method hidden : float_or_bool_or_string Js.t Js.opt Js.prop
  method inert : bool Js.t Js.prop
  method innerText : trusted_script_or_string Js.t Js.prop
  method inputMode : Js.js_string Js.t Js.prop
  method isContentEditable : bool Js.t Js.readonly_prop
  method lang : Js.js_string Js.t Js.prop
  method nonce : Js.js_string Js.t Js.prop
  method offsetHeight : Js.number Js.t Js.readonly_prop
  method offsetLeft : Js.number Js.t Js.readonly_prop
  method offsetParent : element Js.t Js.opt Js.readonly_prop
  method offsetTop : Js.number Js.t Js.readonly_prop
  method offsetWidth : Js.number Js.t Js.readonly_prop

  method onabort :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onanimationend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onanimationiteration :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onanimationstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onauxclick :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforeinput :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforematch :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforetoggle :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforexrselect :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onblur :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncancel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncanplay :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncanplaythrough :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onclick :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onclose :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontentvisibilityautostatechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontextlost :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontextmenu :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontextrestored :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncopy :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncuechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncut :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondblclick :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondrag :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragenter :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragleave :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragover :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondrop :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondurationchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onemptied :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onended :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onerror :
    ( 'self
      , event:event_or_string Js.t
        -> source:Js.js_string Js.t Js.optdef
        -> lineno:Js.number Js.t Js.optdef
        -> colno:Js.number Js.t Js.optdef
        -> error:Js.Unsafe.any Js.optdef
        -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onfocus :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onformdata :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ongotpointercapture :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oninput :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oninvalid :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onkeydown :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onkeypress :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onkeyup :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onload :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadeddata :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadedmetadata :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onlostpointercapture :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmousedown :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseenter :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseleave :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmousemove :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseout :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseover :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseup :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmousewheel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpaste :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpause :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onplay :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onplaying :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointercancel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerdown :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerenter :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerleave :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointermove :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerout :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerover :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerrawupdate :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerup :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onprogress :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onratechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onreset :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onresize :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onscroll :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsecuritypolicyviolation :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onseeked :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onseeking :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onselect :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onselectionchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onselectstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onslotchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onstalled :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsubmit :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsuspend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontimeupdate :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontoggle :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitioncancel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitionend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitionrun :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitionstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onvolumechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwaiting :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitanimationend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitanimationiteration :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitanimationstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkittransitionend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwheel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method outerText : Js.js_string Js.t Js.prop
  method popover : Js.js_string Js.t Js.opt Js.prop
  method spellcheck : bool Js.t Js.prop
  method style : css_style_declaration Js.t Js.readonly_prop
  method tabIndex : Js.number Js.t Js.prop
  method title : Js.js_string Js.t Js.prop
  method translate : bool Js.t Js.prop
  method virtualKeyboardPolicy : Js.js_string Js.t Js.prop
  method writingSuggestions : Js.js_string Js.t Js.prop
  method attachInternals : (* unresolved ElementInternals *) untranslated Js.meth
  method blur : unit Js.meth
  method click : unit Js.meth
  method focus : options:focus_options Js.t Js.optdef -> unit Js.meth
  method hidePopover : unit Js.meth
  method showPopover : options:show_popover_options Js.t Js.optdef -> unit Js.meth

  method togglePopover :
    options:toggle_popover_options_or_bool Js.t Js.optdef -> bool Js.t Js.meth
end

(* see {!Browser.Html_anchor_element} for module definition *)
and html_anchor_element = object
  inherit html_element
  method charset : Js.js_string Js.t Js.prop
  method coords : Js.js_string Js.t Js.prop
  method download : Js.js_string Js.t Js.prop
  method hash : Js.js_string Js.t Js.prop
  method host : Js.js_string Js.t Js.prop
  method hostname : Js.js_string Js.t Js.prop
  method href : Js.js_string Js.t Js.prop
  method hreflang : Js.js_string Js.t Js.prop
  method name : Js.js_string Js.t Js.prop
  method origin : Js.js_string Js.t Js.readonly_prop
  method password : Js.js_string Js.t Js.prop
  method pathname : Js.js_string Js.t Js.prop
  method ping : Js.js_string Js.t Js.prop
  method port : Js.js_string Js.t Js.prop
  method protocol : Js.js_string Js.t Js.prop
  method referrerPolicy : Js.js_string Js.t Js.prop
  method rel : Js.js_string Js.t Js.prop
  method relList : dom_token_list Js.t Js.readonly_prop
  method rev : Js.js_string Js.t Js.prop
  method search : Js.js_string Js.t Js.prop
  method shape : Js.js_string Js.t Js.prop
  method target : Js.js_string Js.t Js.prop
  method text : Js.js_string Js.t Js.prop
  method type_ : Js.js_string Js.t Js.prop
  method username : Js.js_string Js.t Js.prop
end

(* see {!Browser.Html_body_element} for module definition *)
and html_body_element = object
  inherit html_element
  method aLink : Js.js_string Js.t Js.prop
  method background : Js.js_string Js.t Js.prop
  method bgColor : Js.js_string Js.t Js.prop
  method link : Js.js_string Js.t Js.prop

  method onafterprint :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforeprint :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforeunload :
    ('self, event:event Js.t -> Js.js_string Js.t Js.opt) Js.meth_callback Js.opt Js.prop

  (* skipping onblur because it's already included in ancestor *)

  (* skipping onerror because it's already included in ancestor *)

  (* skipping onfocus because it's already included in ancestor *)
  method onhashchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onlanguagechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  (* skipping onload because it's already included in ancestor *)
  method onmessage :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmessageerror :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onoffline :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ononline :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpagehide :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpageshow :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpopstate :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onrejectionhandled :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  (* skipping onresize because it's already included in ancestor *)

  (* skipping onscroll because it's already included in ancestor *)
  method onstorage :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onunhandledrejection :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onunload :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method text : Js.js_string Js.t Js.prop
  method vLink : Js.js_string Js.t Js.prop
end

(* see {!Browser.Html_button_element} for module definition *)
and html_button_element = object
  inherit html_element
  method disabled : bool Js.t Js.prop
  method form : html_form_element Js.t Js.opt Js.readonly_prop
  method formAction : Js.js_string Js.t Js.prop
  method formEnctype : Js.js_string Js.t Js.prop
  method formMethod : Js.js_string Js.t Js.prop
  method formNoValidate : bool Js.t Js.prop
  method formTarget : Js.js_string Js.t Js.prop
  method labels : node_list Js.t Js.readonly_prop
  method name : Js.js_string Js.t Js.prop
  method popoverTargetAction : Js.js_string Js.t Js.prop
  method popoverTargetElement : element Js.t Js.opt Js.prop
  method type_ : Js.js_string Js.t Js.prop
  method validationMessage : Js.js_string Js.t Js.readonly_prop
  method validity : (* unresolved ValidityState *) untranslated Js.readonly_prop
  method value : Js.js_string Js.t Js.prop
  method willValidate : bool Js.t Js.readonly_prop
  method checkValidity : bool Js.t Js.meth
  method reportValidity : bool Js.t Js.meth
  method setCustomValidity : error:Js.js_string Js.t -> unit Js.meth
end

(* see {!Browser.Html_canvas_element} for module definition *)
and html_canvas_element = object
  inherit html_element
  method height : Js.number Js.t Js.prop
  method width : Js.number Js.t Js.prop
  method captureStream : frameRate:Js.number Js.t Js.optdef -> media_stream Js.t Js.meth

  method getContext :
    contextId:Js.js_string Js.t
    -> attributes:canvas_context_creation_attributes_module Js.t Js.optdef
    -> rendering_context Js.t Js.opt Js.meth

  method toBlob :
    _callback:(unit, blob:blob Js.t Js.opt -> unit) Js.meth_callback
    -> type_:Js.js_string Js.t Js.optdef
    -> quality:Js.Unsafe.any Js.optdef
    -> unit Js.meth

  method toDataURL :
    type_:Js.js_string Js.t Js.optdef
    -> quality:Js.Unsafe.any Js.optdef
    -> Js.js_string Js.t Js.meth

  method transferControlToOffscreen : offscreen_canvas Js.t Js.meth
end

(* see {!Browser.Html_collection} for module definition *)
and html_collection = object
  method length : Js.number Js.t Js.readonly_prop
  method item : index:Js.number Js.t -> element Js.t Js.opt Js.meth
  method namedItem : name:Js.js_string Js.t -> element Js.t Js.opt Js.meth
end

(* see {!Browser.Html_div_element} for module definition *)
and html_div_element = object
  inherit html_element
  method align : Js.js_string Js.t Js.prop
end

(* see {!Browser.Html_form_element} for module definition *)
and html_form_element = object
  inherit html_element
  method acceptCharset : Js.js_string Js.t Js.prop
  method action : Js.js_string Js.t Js.prop
  method autocomplete : Js.js_string Js.t Js.prop

  method elements :
    (* unresolved HTMLFormControlsCollection *)
    untranslated Js.readonly_prop

  method encoding : Js.js_string Js.t Js.prop
  method enctype : Js.js_string Js.t Js.prop
  method length : Js.number Js.t Js.readonly_prop
  method method_ : Js.js_string Js.t Js.prop
  method name : Js.js_string Js.t Js.prop
  method noValidate : bool Js.t Js.prop
  method rel : Js.js_string Js.t Js.prop
  method relList : dom_token_list Js.t Js.readonly_prop
  method target : Js.js_string Js.t Js.prop
  method checkValidity : bool Js.t Js.meth
  method reportValidity : bool Js.t Js.meth
  method requestSubmit : submitter:html_element Js.t Js.opt Js.optdef -> unit Js.meth
  method reset : unit Js.meth
  method submit : unit Js.meth
end

(* see {!Browser.Html_iframe_element} for module definition *)
and html_iframe_element = object
  inherit html_element

  (** [adAuctionHeaders] is unsafe and is only available in [Secure] contexts. In order to
      access [adAuctionHeaders], you must use [ppx_browser]. *)
  method adAuctionHeaders :
    (bool Js.t Js.prop, [ `Secure | `Cross_origin_isolated ]) Browser_js_types.unsafe

  method align : Js.js_string Js.t Js.prop
  method allow : Js.js_string Js.t Js.prop
  method allowFullscreen : bool Js.t Js.prop
  method contentDocument : document Js.t Js.opt Js.readonly_prop
  method contentWindow : window Js.t Js.opt Js.readonly_prop
  method csp : Js.js_string Js.t Js.prop
  method featurePolicy : (* unresolved FeaturePolicy *) untranslated Js.readonly_prop
  method frameBorder : Js.js_string Js.t Js.prop
  method height : Js.js_string Js.t Js.prop
  method loading : Js.js_string Js.t Js.prop
  method longDesc : Js.js_string Js.t Js.prop
  method marginHeight : Js.js_string Js.t Js.prop
  method marginWidth : Js.js_string Js.t Js.prop
  method name : Js.js_string Js.t Js.prop
  method referrerPolicy : Js.js_string Js.t Js.prop
  method sandbox : dom_token_list Js.t Js.readonly_prop
  method scrolling : Js.js_string Js.t Js.prop
  method src : Js.js_string Js.t Js.prop
  method srcdoc : html_string Js.t Js.prop
  method width : Js.js_string Js.t Js.prop
  method getSVGDocument : document Js.t Js.opt Js.meth
end

(* see {!Browser.Html_image_element} for module definition *)
and html_image_element = object
  inherit html_element
  method align : Js.js_string Js.t Js.prop
  method alt : Js.js_string Js.t Js.prop
  method border : Js.js_string Js.t Js.prop
  method complete : bool Js.t Js.readonly_prop
  method crossOrigin : Js.js_string Js.t Js.opt Js.prop
  method currentSrc : Js.js_string Js.t Js.readonly_prop
  method decoding : Js.js_string Js.t Js.prop
  method fetchPriority : Js.js_string Js.t Js.prop
  method height : Js.number Js.t Js.prop
  method hspace : Js.number Js.t Js.prop
  method isMap : bool Js.t Js.prop
  method loading : Js.js_string Js.t Js.prop
  method longDesc : Js.js_string Js.t Js.prop
  method lowsrc : Js.js_string Js.t Js.prop
  method name : Js.js_string Js.t Js.prop
  method naturalHeight : Js.number Js.t Js.readonly_prop
  method naturalWidth : Js.number Js.t Js.readonly_prop
  method referrerPolicy : Js.js_string Js.t Js.prop
  method sizes : Js.js_string Js.t Js.prop
  method src : Js.js_string Js.t Js.prop
  method srcset : Js.js_string Js.t Js.prop
  method useMap : Js.js_string Js.t Js.prop
  method vspace : Js.number Js.t Js.prop
  method width : Js.number Js.t Js.prop
  method x : Js.number Js.t Js.readonly_prop
  method y : Js.number Js.t Js.readonly_prop
  method decode : unit js_promise Js.t Js.meth
end

(* see {!Browser.Html_input_element} for module definition *)
and html_input_element = object
  inherit html_element
  method accept : Js.js_string Js.t Js.prop
  method align : Js.js_string Js.t Js.prop
  method alt : Js.js_string Js.t Js.prop
  method autocomplete : Js.js_string Js.t Js.prop
  method checked : bool Js.t Js.prop
  method defaultChecked : bool Js.t Js.prop
  method defaultValue : Js.js_string Js.t Js.prop
  method dirName : Js.js_string Js.t Js.prop
  method disabled : bool Js.t Js.prop
  method files : file_list Js.t Js.opt Js.prop
  method form : html_form_element Js.t Js.opt Js.readonly_prop
  method formAction : Js.js_string Js.t Js.prop
  method formEnctype : Js.js_string Js.t Js.prop
  method formMethod : Js.js_string Js.t Js.prop
  method formNoValidate : bool Js.t Js.prop
  method formTarget : Js.js_string Js.t Js.prop
  method height : Js.number Js.t Js.prop
  method incremental : bool Js.t Js.prop
  method indeterminate : bool Js.t Js.prop
  method labels : node_list Js.t Js.readonly_prop
  method list : html_element Js.t Js.opt Js.readonly_prop
  method max : Js.js_string Js.t Js.prop
  method maxLength : Js.number Js.t Js.prop
  method min : Js.js_string Js.t Js.prop
  method minLength : Js.number Js.t Js.prop
  method multiple : bool Js.t Js.prop
  method name : Js.js_string Js.t Js.prop
  method pattern : Js.js_string Js.t Js.prop
  method placeholder : Js.js_string Js.t Js.prop
  method popoverTargetAction : Js.js_string Js.t Js.prop
  method popoverTargetElement : element Js.t Js.opt Js.prop
  method readOnly : bool Js.t Js.prop
  method required : bool Js.t Js.prop
  method selectionDirection : Js.js_string Js.t Js.opt Js.prop
  method selectionEnd : Js.number Js.t Js.opt Js.prop
  method selectionStart : Js.number Js.t Js.opt Js.prop
  method size : Js.number Js.t Js.prop
  method src : Js.js_string Js.t Js.prop
  method step : Js.js_string Js.t Js.prop
  method type_ : Js.js_string Js.t Js.prop
  method useMap : Js.js_string Js.t Js.prop
  method validationMessage : Js.js_string Js.t Js.readonly_prop
  method validity : (* unresolved ValidityState *) untranslated Js.readonly_prop
  method value : Js.js_string Js.t Js.prop
  method valueAsDate : Js.Unsafe.any Js.opt Js.prop
  method valueAsNumber : Js.number Js.t Js.prop
  method webkitdirectory : bool Js.t Js.prop
  method width : Js.number Js.t Js.prop
  method willValidate : bool Js.t Js.readonly_prop
  method checkValidity : bool Js.t Js.meth
  method reportValidity : bool Js.t Js.meth
  method select : unit Js.meth
  method setCustomValidity : error:Js.js_string Js.t -> unit Js.meth
  method setRangeText : replacement:Js.js_string Js.t -> unit Js.meth

  method setRangeText_1 :
    replacement:Js.js_string Js.t
    -> start:Js.number Js.t
    -> end_:Js.number Js.t
    -> selectionMode:selection_mode Js.optdef
    -> unit Js.meth

  method setSelectionRange :
    start:Js.number Js.t
    -> end_:Js.number Js.t
    -> direction:Js.js_string Js.t Js.optdef
    -> unit Js.meth

  method showPicker : unit Js.meth
  method stepDown : n:Js.number Js.t Js.optdef -> unit Js.meth
  method stepUp : n:Js.number Js.t Js.optdef -> unit Js.meth
end

(* see {!Browser.Html_media_element} for module definition *)
and html_media_element = object
  inherit html_element
  method autoplay : bool Js.t Js.prop
  method buffered : (* unresolved TimeRanges *) untranslated Js.readonly_prop
  method controls : bool Js.t Js.prop
  method controlsList : dom_token_list Js.t Js.readonly_prop
  method crossOrigin : Js.js_string Js.t Js.opt Js.prop
  method currentSrc : Js.js_string Js.t Js.readonly_prop
  method currentTime : Js.number Js.t Js.prop
  method defaultMuted : bool Js.t Js.prop
  method defaultPlaybackRate : Js.number Js.t Js.prop
  method duration : Js.number Js.t Js.readonly_prop
  method ended : bool Js.t Js.readonly_prop
  method error : (* unresolved MediaError *) untranslated Js.opt Js.readonly_prop
  method loop : bool Js.t Js.prop

  (** [mediaKeys] is unsafe and is only available in [Secure] contexts. In order to access
      [mediaKeys], you must use [ppx_browser]. *)
  method mediaKeys :
    ( (* unresolved MediaKeys *)
      untranslated Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method muted : bool Js.t Js.prop
  method networkState : Js.number Js.t Js.readonly_prop

  method onencrypted :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwaitingforkey :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method paused : bool Js.t Js.readonly_prop
  method playbackRate : Js.number Js.t Js.prop
  method played : (* unresolved TimeRanges *) untranslated Js.readonly_prop
  method preload : Js.js_string Js.t Js.prop
  method preservesPitch : bool Js.t Js.prop
  method readyState : Js.number Js.t Js.readonly_prop
  method seekable : (* unresolved TimeRanges *) untranslated Js.readonly_prop
  method seeking : bool Js.t Js.readonly_prop
  method src : Js.js_string Js.t Js.prop
  method srcObject : media_provider Js.t Js.opt Js.prop
  method textTracks : (* unresolved TextTrackList *) untranslated Js.readonly_prop
  method volume : Js.number Js.t Js.prop
  method webkitAudioDecodedByteCount : Js.number Js.t Js.readonly_prop
  method webkitVideoDecodedByteCount : Js.number Js.t Js.readonly_prop

  method addTextTrack :
    kind:text_track_kind
    -> label:Js.js_string Js.t Js.optdef
    -> language:Js.js_string Js.t Js.optdef
    -> (* unresolved TextTrack *) untranslated Js.meth

  method canPlayType : type_:Js.js_string Js.t -> can_play_type_result Js.meth
  method captureStream : media_stream Js.t Js.meth
  method load : unit Js.meth
  method pause : unit Js.meth
  method play : unit js_promise Js.t Js.meth

  (** [setMediaKeys] is unsafe and is only available in [Secure] contexts. In order to
      call [setMediaKeys], you must use [ppx_browser]. *)
  method setMediaKeys :
    ( mediaKeys:(* unresolved MediaKeys *) untranslated Js.opt
      -> unit js_promise Js.t Js.meth
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe
end

(* see {!Browser.Html_meta_element} for module definition *)
and html_meta_element = object
  inherit html_element
  method content : Js.js_string Js.t Js.prop
  method httpEquiv : Js.js_string Js.t Js.prop
  method media : Js.js_string Js.t Js.prop
  method name : Js.js_string Js.t Js.prop
  method scheme : Js.js_string Js.t Js.prop
end

(* see {!Browser.Html_select_element} for module definition *)
and html_select_element = object
  inherit html_element
  method autocomplete : Js.js_string Js.t Js.prop
  method disabled : bool Js.t Js.prop
  method form : html_form_element Js.t Js.opt Js.readonly_prop
  method labels : node_list Js.t Js.readonly_prop
  method length : Js.number Js.t Js.prop
  method multiple : bool Js.t Js.prop
  method name : Js.js_string Js.t Js.prop
  method options : (* unresolved HTMLOptionsCollection *) untranslated Js.readonly_prop
  method required : bool Js.t Js.prop
  method selectedIndex : Js.number Js.t Js.prop
  method selectedOptions : html_collection Js.t Js.readonly_prop
  method size : Js.number Js.t Js.prop
  method type_ : Js.js_string Js.t Js.readonly_prop
  method validationMessage : Js.js_string Js.t Js.readonly_prop
  method validity : (* unresolved ValidityState *) untranslated Js.readonly_prop
  method value : Js.js_string Js.t Js.prop
  method willValidate : bool Js.t Js.readonly_prop

  method add :
    element:html_opt_group_element_or_html_option_element Js.t
    -> before:html_element_or_int Js.t Js.opt Js.optdef
    -> unit Js.meth

  method checkValidity : bool Js.t Js.meth
  method item : index:Js.number Js.t -> element Js.t Js.opt Js.meth

  method namedItem :
    name:Js.js_string Js.t
    -> (* unresolved HTMLOptionElement *) untranslated Js.opt Js.meth

  method remove_1 : index:Js.number Js.t -> unit Js.meth

  (* skipping remove because it's already included in ancestor *)
  method reportValidity : bool Js.t Js.meth
  method setCustomValidity : error:Js.js_string Js.t -> unit Js.meth
end

(* see {!Browser.Html_text_area_element} for module definition *)
and html_text_area_element = object
  inherit html_element
  method autocomplete : Js.js_string Js.t Js.prop
  method cols : Js.number Js.t Js.prop
  method defaultValue : Js.js_string Js.t Js.prop
  method dirName : Js.js_string Js.t Js.prop
  method disabled : bool Js.t Js.prop
  method form : html_form_element Js.t Js.opt Js.readonly_prop
  method labels : node_list Js.t Js.readonly_prop
  method maxLength : Js.number Js.t Js.prop
  method minLength : Js.number Js.t Js.prop
  method name : Js.js_string Js.t Js.prop
  method placeholder : Js.js_string Js.t Js.prop
  method readOnly : bool Js.t Js.prop
  method required : bool Js.t Js.prop
  method rows : Js.number Js.t Js.prop
  method selectionDirection : Js.js_string Js.t Js.prop
  method selectionEnd : Js.number Js.t Js.prop
  method selectionStart : Js.number Js.t Js.prop
  method textLength : Js.number Js.t Js.readonly_prop
  method type_ : Js.js_string Js.t Js.readonly_prop
  method validationMessage : Js.js_string Js.t Js.readonly_prop
  method validity : (* unresolved ValidityState *) untranslated Js.readonly_prop
  method value : Js.js_string Js.t Js.prop
  method willValidate : bool Js.t Js.readonly_prop
  method wrap : Js.js_string Js.t Js.prop
  method checkValidity : bool Js.t Js.meth
  method reportValidity : bool Js.t Js.meth
  method select : unit Js.meth
  method setCustomValidity : error:Js.js_string Js.t -> unit Js.meth
  method setRangeText : replacement:Js.js_string Js.t -> unit Js.meth

  method setRangeText_1 :
    replacement:Js.js_string Js.t
    -> start:Js.number Js.t
    -> end_:Js.number Js.t
    -> selectionMode:selection_mode Js.optdef
    -> unit Js.meth

  method setSelectionRange :
    start:Js.number Js.t
    -> end_:Js.number Js.t
    -> direction:Js.js_string Js.t Js.optdef
    -> unit Js.meth
end

(* see {!Browser.Html_video_element} for module definition *)
and html_video_element = object
  inherit html_media_element
  method disablePictureInPicture : bool Js.t Js.prop
  method height : Js.number Js.t Js.prop

  method onenterpictureinpicture :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onleavepictureinpicture :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method playsInline : bool Js.t Js.prop
  method poster : Js.js_string Js.t Js.prop
  method videoHeight : Js.number Js.t Js.readonly_prop
  method videoWidth : Js.number Js.t Js.readonly_prop
  method webkitDecodedFrameCount : Js.number Js.t Js.readonly_prop
  method webkitDroppedFrameCount : Js.number Js.t Js.readonly_prop
  method width : Js.number Js.t Js.prop
  method cancelVideoFrameCallback : handle:Js.number Js.t -> unit Js.meth

  method getVideoPlaybackQuality :
    (* unresolved VideoPlaybackQuality *)
    untranslated Js.meth

  method requestPictureInPicture :
    (* unresolved PictureInPictureWindow *)
    untranslated js_promise Js.t Js.meth

  method requestVideoFrameCallback :
    callback:
      ( unit
        , time:Js.number Js.t -> metadata:video_frame_callback_metadata Js.t -> unit )
        Js.meth_callback
    -> Js.number Js.t Js.meth
end

(* see {!Browser.Hash_change_event} for module definition *)
and hash_change_event = object
  inherit event
  method newURL : Js.js_string Js.t Js.readonly_prop
  method oldURL : Js.js_string Js.t Js.readonly_prop
end

(* see {!Browser.Headers} for module definition *)
and headers = object
  inherit [Js.js_string Js.t, Js.js_string Js.t] js_iterable
  method append : name:Js.js_string Js.t -> value:Js.js_string Js.t -> unit Js.meth
  method delete : key:Js.js_string Js.t -> unit Js.meth
  method get : key:Js.js_string Js.t -> Js.js_string Js.t Js.opt Js.meth
  method getSetCookie : Js.js_string Js.t Js.js_array Js.t Js.meth
  method has : key:Js.js_string Js.t -> bool Js.t Js.meth
  method set : key:Js.js_string Js.t -> value:Js.js_string Js.t -> unit Js.meth
end

(* see {!Browser.Highlight} for module definition *)
and highlight = object
  inherit [abstract_range Js.t] js_setlike
  method priority : Js.number Js.t Js.prop
  method type_ : highlight_type Js.prop
end

(* see {!Browser.Css} for module definition *)
and highlight_registry = object
  inherit [Js.js_string Js.t, highlight Js.t] js_maplike
end

(* see {!Browser.Window} for module definition *)
and history = object
  method length : Js.number Js.t Js.readonly_prop
  method scrollRestoration : scroll_restoration Js.prop
  method state : Js.Unsafe.any Js.readonly_prop
  method back : unit Js.meth
  method forward : unit Js.meth
  method go : delta:Js.number Js.t Js.optdef -> unit Js.meth

  method pushState :
    data:Js.Unsafe.any
    -> title:Js.js_string Js.t
    -> url:Js.js_string Js.t Js.opt Js.optdef
    -> unit Js.meth

  method replaceState :
    data:Js.Unsafe.any
    -> title:Js.js_string Js.t
    -> url:Js.js_string Js.t Js.opt Js.optdef
    -> unit Js.meth
end

(* see {!Browser.Image_bitmap} for module definition *)
and image_bitmap = object
  method height : Js.number Js.t Js.readonly_prop
  method width : Js.number Js.t Js.readonly_prop
  method close : unit Js.meth
end

(* see {!Browser.Image_bitmap_rendering_context} for module definition *)
and image_bitmap_rendering_context = object
  method canvas : html_canvas_element_or_offscreen_canvas Js.t Js.readonly_prop
  method transferFromImageBitmap : bitmap:image_bitmap Js.t Js.opt -> unit Js.meth
end

(* see {!Browser.Image_data} for module definition *)
and image_data = object
  method colorSpace : predefined_color_space Js.readonly_prop
  method data : image_data_array Js.t Js.readonly_prop
  method height : Js.number Js.t Js.readonly_prop
  method width : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Input_device_capabilities} for module definition *)
and input_device_capabilities = object
  method firesTouchEvents : bool Js.t Js.readonly_prop
end

(* see {!Browser.Input_event} for module definition *)
and input_event = object
  inherit ui_event
  method data : Js.js_string Js.t Js.opt Js.readonly_prop
  method dataTransfer : data_transfer Js.t Js.opt Js.readonly_prop
  method inputType : Js.js_string Js.t Js.readonly_prop
  method isComposing : bool Js.t Js.readonly_prop

  method getTargetRanges :
    (* unresolved StaticRange *)
    untranslated Js.js_array Js.t Js.meth
end

(* see {!Browser.Intersection_observer} for module definition *)
and intersection_observer = object
  method delay : Js.number Js.t Js.readonly_prop
  method root : node Js.t Js.opt Js.readonly_prop
  method rootMargin : Js.js_string Js.t Js.readonly_prop
  method thresholds : Js.number Js.t Js.js_array Js.t Js.readonly_prop
  method trackVisibility : bool Js.t Js.readonly_prop
  method disconnect : unit Js.meth
  method observe : target:element Js.t -> unit Js.meth
  method takeRecords : intersection_observer_entry Js.t Js.js_array Js.t Js.meth
  method unobserve : target:element Js.t -> unit Js.meth
end

(* see {!Browser.Intersection_observer} for module definition *)
and intersection_observer_entry = object
  method boundingClientRect : dom_rect_read_only Js.t Js.readonly_prop
  method intersectionRatio : Js.number Js.t Js.readonly_prop
  method intersectionRect : dom_rect_read_only Js.t Js.readonly_prop
  method isIntersecting : bool Js.t Js.readonly_prop
  method isVisible : bool Js.t Js.readonly_prop
  method rootBounds : dom_rect_read_only Js.t Js.opt Js.readonly_prop
  method target : element Js.t Js.readonly_prop
  method time : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Window} for module definition *)
and keyboard = object
  method getLayoutMap : keyboard_layout_map Js.t js_promise Js.t Js.meth

  method lock :
    keyCodes:Js.js_string Js.t Js.js_array Js.t Js.optdef -> unit js_promise Js.t Js.meth

  method unlock : unit Js.meth
end

(* see {!Browser.Keyboard_event} for module definition *)
and keyboard_event = object
  inherit ui_event
  method altKey : bool Js.t Js.readonly_prop
  method charCode : Js.number Js.t Js.readonly_prop
  method code : Js.js_string Js.t Js.readonly_prop
  method ctrlKey : bool Js.t Js.readonly_prop
  method isComposing : bool Js.t Js.readonly_prop
  method key : Js.js_string Js.t Js.readonly_prop
  method keyCode : Js.number Js.t Js.readonly_prop
  method location : Js.number Js.t Js.readonly_prop
  method metaKey : bool Js.t Js.readonly_prop
  method repeat : bool Js.t Js.readonly_prop
  method shiftKey : bool Js.t Js.readonly_prop
  method getModifierState : keyArg:Js.js_string Js.t -> bool Js.t Js.meth

  method initKeyboardEvent :
    type_:Js.js_string Js.t
    -> bubbles:bool Js.t Js.optdef
    -> cancelable:bool Js.t Js.optdef
    -> view:window Js.t Js.opt Js.optdef
    -> keyIdentifier:Js.js_string Js.t Js.optdef
    -> location:Js.number Js.t Js.optdef
    -> ctrlKey:bool Js.t Js.optdef
    -> altKey:bool Js.t Js.optdef
    -> shiftKey:bool Js.t Js.optdef
    -> metaKey:bool Js.t Js.optdef
    -> unit Js.meth
end

(* see {!Browser.Window} for module definition *)
and keyboard_layout_map = object
  inherit [Js.js_string Js.t, Js.js_string Js.t] js_readonly_maplike
end

(* see {!Browser.Location} for module definition *)
and location = object
  method ancestorOrigins : (* unresolved DOMStringList *) untranslated Js.readonly_prop
  method hash : Js.js_string Js.t Js.prop
  method host : Js.js_string Js.t Js.prop
  method hostname : Js.js_string Js.t Js.prop
  method href : Js.js_string Js.t Js.prop
  method origin : Js.js_string Js.t Js.readonly_prop
  method pathname : Js.js_string Js.t Js.prop
  method port : Js.js_string Js.t Js.prop
  method protocol : Js.js_string Js.t Js.prop
  method search : Js.js_string Js.t Js.prop
  method assign : url:Js.js_string Js.t -> unit Js.meth
  method reload : unit Js.meth
  method replace : url:Js.js_string Js.t -> unit Js.meth
  method toString : Js.js_string Js.t Js.meth
end

(* see {!Browser.Window} for module definition *)
and media_devices = object
  inherit event_target

  method enumerateDevices :
    (* unresolved MediaDeviceInfo *)
    untranslated Js.js_array Js.t js_promise Js.t Js.meth

  method getDisplayMedia :
    constraints:display_media_stream_options Js.t Js.optdef
    -> media_stream Js.t js_promise Js.t Js.meth

  method getSupportedConstraints : media_track_supported_constraints Js.t Js.meth

  method getUserMedia :
    constraints:user_media_stream_constraints Js.t Js.optdef
    -> media_stream Js.t js_promise Js.t Js.meth
end

(* see {!Browser.Window} for module definition *)
and media_query_list = object
  inherit event_target
  method matches : bool Js.t Js.readonly_prop
  method media : Js.js_string Js.t Js.readonly_prop

  method onchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method addListener :
    listener:('self, event:event Js.t -> unit) Js.meth_callback Js.opt -> unit Js.meth

  method removeListener :
    listener:('self, event:event Js.t -> unit) Js.meth_callback Js.opt -> unit Js.meth
end

(* see {!Browser.Media_source} for module definition *)
and media_source = object
  inherit event_target

  method activeSourceBuffers :
    (* unresolved SourceBufferList *)
    untranslated Js.readonly_prop

  method duration : Js.number Js.t Js.prop
  method handle : media_source_handle Js.t Js.readonly_prop

  method onsourceclose :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsourceended :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsourceopen :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method readyState : Js.js_string Js.t Js.readonly_prop
  method sourceBuffers : (* unresolved SourceBufferList *) untranslated Js.readonly_prop

  method addSourceBuffer :
    type_:Js.js_string Js.t -> (* unresolved SourceBuffer *) untranslated Js.meth

  method clearLiveSeekableRange : unit Js.meth
  method endOfStream : error:end_of_stream_error Js.optdef -> unit Js.meth

  method removeSourceBuffer :
    buffer:(* unresolved SourceBuffer *) untranslated -> unit Js.meth

  method setLiveSeekableRange :
    start:Js.number Js.t -> end_:Js.number Js.t -> unit Js.meth
end

(* see {!Browser.Media_source_handle} for module definition *)
and media_source_handle = object end

(* see {!Browser.Media_stream} for module definition *)
and media_stream = object
  inherit event_target
  method active : bool Js.t Js.readonly_prop
  method id : Js.js_string Js.t Js.readonly_prop

  method onactive :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onaddtrack :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oninactive :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onremovetrack :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method addTrack : track:media_stream_track Js.t -> unit Js.meth
  method clone : media_stream Js.t Js.meth
  method getAudioTracks : media_stream_track Js.t Js.js_array Js.t Js.meth

  method getTrackById :
    trackId:Js.js_string Js.t -> media_stream_track Js.t Js.opt Js.meth

  method getTracks : media_stream_track Js.t Js.js_array Js.t Js.meth
  method getVideoTracks : media_stream_track Js.t Js.js_array Js.t Js.meth
  method removeTrack : track:media_stream_track Js.t -> unit Js.meth
end

(* see {!Browser.Message_event} for module definition *)
and message_event = object
  inherit event
  method data : Js.Unsafe.any Js.readonly_prop
  method lastEventId : Js.js_string Js.t Js.readonly_prop
  method origin : Js.js_string Js.t Js.readonly_prop

  method ports :
    (* unresolved MessagePort *)
    untranslated Js.js_array Js.t Js.readonly_prop

  method source : event_target Js.t Js.opt Js.readonly_prop

  method userActivation :
    (* unresolved UserActivation *)
    untranslated Js.opt Js.readonly_prop

  method initMessageEvent :
    type_:Js.js_string Js.t
    -> bubbles:bool Js.t Js.optdef
    -> cancelable:bool Js.t Js.optdef
    -> data:Js.Unsafe.any Js.optdef
    -> origin:Js.js_string Js.t Js.optdef
    -> lastEventId:Js.js_string Js.t Js.optdef
    -> source:event_target Js.t Js.opt Js.optdef
    -> ports:(* unresolved MessagePort *) untranslated Js.js_array Js.t Js.optdef
    -> unit Js.meth
end

(* see {!Browser.Mutation_observer} for module definition *)
and mutation_observer = object
  method disconnect : unit Js.meth

  method observe :
    target:node Js.t -> options:mutation_observer_init Js.t Js.optdef -> unit Js.meth

  method takeRecords : mutation_record Js.t Js.js_array Js.t Js.meth
end

(* see {!Browser.Mutation_observer} for module definition *)
and mutation_record = object
  method addedNodes : node_list Js.t Js.readonly_prop
  method attributeName : Js.js_string Js.t Js.opt Js.readonly_prop
  method attributeNamespace : Js.js_string Js.t Js.opt Js.readonly_prop
  method nextSibling : node Js.t Js.opt Js.readonly_prop
  method oldValue : Js.js_string Js.t Js.opt Js.readonly_prop
  method previousSibling : node Js.t Js.opt Js.readonly_prop
  method removedNodes : node_list Js.t Js.readonly_prop
  method target : node Js.t Js.readonly_prop
  method type_ : Js.js_string Js.t Js.readonly_prop
end

(* see {!Browser.Element} for module definition *)
and named_node_map = object
  method length : Js.number Js.t Js.readonly_prop
  method getNamedItem : name:Js.js_string Js.t -> attr Js.t Js.opt Js.meth

  method getNamedItemNS :
    namespaceURI:Js.js_string Js.t Js.opt
    -> localName:Js.js_string Js.t
    -> attr Js.t Js.opt Js.meth

  method item : index:Js.number Js.t -> attr Js.t Js.opt Js.meth
  method removeNamedItem : name:Js.js_string Js.t -> attr Js.t Js.meth

  method removeNamedItemNS :
    namespaceURI:Js.js_string Js.t Js.opt
    -> localName:Js.js_string Js.t
    -> attr Js.t Js.meth

  method setNamedItem : attr:attr Js.t -> attr Js.t Js.opt Js.meth
  method setNamedItemNS : attr:attr Js.t -> attr Js.t Js.opt Js.meth
end

(* see {!Browser.Navigate_event} for module definition *)
and navigate_event = object
  inherit event
  method canIntercept : bool Js.t Js.readonly_prop

  method destination : (* unresolved NavigationDestination *)
    untranslated Js.readonly_prop

  method downloadRequest : Js.js_string Js.t Js.opt Js.readonly_prop
  method formData : form_data Js.t Js.opt Js.readonly_prop
  method hashChange : bool Js.t Js.readonly_prop
  method info : Js.Unsafe.any Js.readonly_prop
  method navigationType : navigation_type Js.readonly_prop
  method signal : abort_signal Js.t Js.readonly_prop
  method userInitiated : bool Js.t Js.readonly_prop
  method intercept : options:navigation_intercept_options Js.t Js.optdef -> unit Js.meth
  method scroll : unit Js.meth
end

(* see {!Browser.Window} for module definition *)
and navigation = object
  inherit event_target

  method activation :
    (* unresolved NavigationActivation *)
    untranslated Js.opt Js.readonly_prop

  method canGoBack : bool Js.t Js.readonly_prop
  method canGoForward : bool Js.t Js.readonly_prop
  method currentEntry : navigation_history_entry Js.t Js.opt Js.readonly_prop

  method oncurrententrychange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onnavigate :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onnavigateerror :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onnavigatesuccess :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method transition :
    (* unresolved NavigationTransition *)
    untranslated Js.opt Js.readonly_prop

  method back :
    options:navigation_options Js.t Js.optdef -> navigation_result Js.t Js.meth

  method entries : navigation_history_entry Js.t Js.js_array Js.t Js.meth

  method forward :
    options:navigation_options Js.t Js.optdef -> navigation_result Js.t Js.meth

  method navigate :
    url:Js.js_string Js.t
    -> options:navigation_navigate_options Js.t Js.optdef
    -> navigation_result Js.t Js.meth

  method reload :
    options:navigation_reload_options Js.t Js.optdef -> navigation_result Js.t Js.meth

  method traverseTo :
    key:Js.js_string Js.t
    -> options:navigation_options Js.t Js.optdef
    -> navigation_result Js.t Js.meth

  method updateCurrentEntry :
    options:navigation_update_current_entry_options Js.t -> unit Js.meth
end

(* see {!Browser.Window} for module definition *)
and navigation_history_entry = object
  inherit event_target
  method id : Js.js_string Js.t Js.readonly_prop
  method index : Js.number Js.t Js.readonly_prop
  method key : Js.js_string Js.t Js.readonly_prop

  method ondispose :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method sameDocument : bool Js.t Js.readonly_prop
  method url : Js.js_string Js.t Js.opt Js.readonly_prop
  method getState : Js.Unsafe.any Js.meth
end

(* see {!Browser.Window} for module definition *)
and navigator = object
  method appCodeName : Js.js_string Js.t Js.readonly_prop
  method appName : Js.js_string Js.t Js.readonly_prop
  method appVersion : Js.js_string Js.t Js.readonly_prop

  (** [clipboard] is unsafe and is only available in [Secure] contexts. In order to access
      [clipboard], you must use [ppx_browser]. *)
  method clipboard :
    ( clipboard Js.t Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method connection : (* unresolved NetworkInformation *) untranslated Js.readonly_prop
  method cookieEnabled : bool Js.t Js.readonly_prop

  (** [credentials] is unsafe and is only available in [Secure] contexts. In order to
      access [credentials], you must use [ppx_browser]. *)
  method credentials :
    ( credentials_container Js.t Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  (** [deviceMemory] is unsafe and is only available in [Secure] contexts. In order to
      access [deviceMemory], you must use [ppx_browser]. *)
  method deviceMemory :
    ( Js.number Js.t Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method doNotTrack : Js.js_string Js.t Js.opt Js.readonly_prop
  method geolocation : geolocation Js.t Js.readonly_prop

  (** [gpu] is unsafe and is only available in [Secure] contexts. In order to access
      [gpu], you must use [ppx_browser]. *)
  method gpu :
    ( gpu Js.t Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method hardwareConcurrency : Js.number Js.t Js.readonly_prop
  method ink : (* unresolved Ink *) untranslated Js.readonly_prop

  (** [keyboard] is unsafe and is only available in [Secure] contexts. In order to access
      [keyboard], you must use [ppx_browser]. *)
  method keyboard :
    ( keyboard Js.t Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method language : Js.js_string Js.t Js.readonly_prop
  method languages : Js.js_string Js.t Js.js_array Js.t Js.readonly_prop

  (** [locks] is unsafe and is only available in [Secure] contexts. In order to access
      [locks], you must use [ppx_browser]. *)
  method locks :
    ( (* unresolved LockManager *)
      untranslated Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  (** [managed] is unsafe and is only available in [Secure] contexts. In order to access
      [managed], you must use [ppx_browser]. *)
  method managed :
    ( (* unresolved NavigatorManagedData *)
      untranslated Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method maxTouchPoints : Js.number Js.t Js.readonly_prop

  method mediaCapabilities :
    (* unresolved MediaCapabilities *)
    untranslated Js.readonly_prop

  (** [mediaDevices] is unsafe and is only available in [Secure] contexts. In order to
      access [mediaDevices], you must use [ppx_browser]. *)
  method mediaDevices :
    ( media_devices Js.t Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method mimeTypes : (* unresolved MimeTypeArray *) untranslated Js.readonly_prop
  method onLine : bool Js.t Js.readonly_prop
  method pdfViewerEnabled : bool Js.t Js.readonly_prop
  method permissions : permissions Js.t Js.readonly_prop
  method platform : Js.js_string Js.t Js.readonly_prop
  method plugins : (* unresolved PluginArray *) untranslated Js.readonly_prop
  method product : Js.js_string Js.t Js.readonly_prop
  method productSub : Js.js_string Js.t Js.readonly_prop
  method scheduling : (* unresolved Scheduling *) untranslated Js.readonly_prop

  (** [serviceWorker] is unsafe and is only available in [Secure] contexts. In order to
      access [serviceWorker], you must use [ppx_browser]. *)
  method serviceWorker :
    ( (* unresolved ServiceWorkerContainer *)
      untranslated Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  (** [storage] is unsafe and is only available in [Secure] contexts. In order to access
      [storage], you must use [ppx_browser]. *)
  method storage :
    ( (* unresolved StorageManager *)
      untranslated Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method userActivation : (* unresolved UserActivation *) untranslated Js.readonly_prop
  method userAgent : Js.js_string Js.t Js.readonly_prop

  (** [userAgentData] is unsafe and is only available in [Secure] contexts. In order to
      access [userAgentData], you must use [ppx_browser]. *)
  method userAgentData :
    ( (* unresolved NavigatorUAData *)
      untranslated Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method vendor : Js.js_string Js.t Js.readonly_prop
  method vendorSub : Js.js_string Js.t Js.readonly_prop

  (** [virtualKeyboard] is unsafe and is only available in [Secure] contexts. In order to
      access [virtualKeyboard], you must use [ppx_browser]. *)
  method virtualKeyboard :
    ( (* unresolved VirtualKeyboard *)
      untranslated Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  (** [wakeLock] is unsafe and is only available in [Secure] contexts. In order to access
      [wakeLock], you must use [ppx_browser]. *)
  method wakeLock :
    ( (* unresolved WakeLock *)
      untranslated Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method webdriver : bool Js.t Js.readonly_prop

  method webkitPersistentStorage :
    (* unresolved DeprecatedStorageQuota *)
    untranslated Js.readonly_prop

  method webkitTemporaryStorage :
    (* unresolved DeprecatedStorageQuota *)
    untranslated Js.readonly_prop

  method windowControlsOverlay :
    (* unresolved WindowControlsOverlay *)
    untranslated Js.readonly_prop

  (** [clearAppBadge] is unsafe and is only available in [Secure] contexts. In order to
      call [clearAppBadge], you must use [ppx_browser]. *)
  method clearAppBadge :
    ( unit js_promise Js.t Js.meth
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  (** [getBattery] is unsafe and is only available in [Secure] contexts. In order to call
      [getBattery], you must use [ppx_browser]. *)
  method getBattery :
    ( (* unresolved BatteryManager *)
      untranslated js_promise Js.t Js.meth
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method getGamepads :
    (* unresolved Gamepad *)
    untranslated Js.opt Js.js_array Js.t Js.meth

  (** [getUserMedia] is unsafe and is only available in [Secure] contexts. In order to
      call [getUserMedia], you must use [ppx_browser]. *)
  method getUserMedia :
    ( constraints:media_stream_constraints Js.t
      -> successCallback:(unit, stream:media_stream Js.t -> unit) Js.meth_callback
      -> errorCallback:(unit, error:media_stream_error Js.t -> unit) Js.meth_callback
      -> unit Js.meth
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method javaEnabled : bool Js.t Js.meth

  (** [requestMIDIAccess] is unsafe and is only available in [Secure] contexts. In order
      to call [requestMIDIAccess], you must use [ppx_browser]. *)
  method requestMIDIAccess :
    ( options:midi_options Js.t Js.optdef
      -> (* unresolved MIDIAccess *) untranslated js_promise Js.t Js.meth
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  (** [requestMediaKeySystemAccess] is unsafe and is only available in [Secure] contexts.
      In order to call [requestMediaKeySystemAccess], you must use [ppx_browser]. *)
  method requestMediaKeySystemAccess :
    ( keySystem:Js.js_string Js.t
      -> supportedConfigurations:media_key_system_configuration Js.t Js.js_array Js.t
      -> (* unresolved MediaKeySystemAccess *) untranslated js_promise Js.t Js.meth
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method sendBeacon :
    url:Js.js_string Js.t
    -> data:readable_stream_or_xml_http_request_body_init Js.t Js.opt Js.optdef
    -> bool Js.t Js.meth

  (** [setAppBadge] is unsafe and is only available in [Secure] contexts. In order to call
      [setAppBadge], you must use [ppx_browser]. *)
  method setAppBadge :
    ( contents:Js.number Js.t Js.optdef -> unit js_promise Js.t Js.meth
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method vibrate : pattern:Js.number Js.t Js.js_array Js.t -> bool Js.t Js.meth
  method vibrate_1 : pattern:Js.number Js.t -> bool Js.t Js.meth

  (** [webkitGetUserMedia] is unsafe and is only available in [Secure] contexts. In order
      to call [webkitGetUserMedia], you must use [ppx_browser]. *)
  method webkitGetUserMedia :
    ( constraints:media_stream_constraints Js.t
      -> successCallback:(unit, stream:media_stream Js.t -> unit) Js.meth_callback
      -> errorCallback:(unit, error:media_stream_error Js.t -> unit) Js.meth_callback
      -> unit Js.meth
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe
end

(* see {!Browser.Document} for module definition *)
and node_iterator = object
  method filter :
    (unit, node:node Js.t -> Js.number Js.t) Js.meth_callback Js.opt Js.readonly_prop

  method pointerBeforeReferenceNode : bool Js.t Js.readonly_prop
  method referenceNode : node Js.t Js.readonly_prop
  method root : node Js.t Js.readonly_prop
  method whatToShow : Js.number Js.t Js.readonly_prop
  method detach : unit Js.meth
  method nextNode : node Js.t Js.opt Js.meth
  method previousNode : node Js.t Js.opt Js.meth
end

(* see {!Browser.Node_list} for module definition *)
and node_list = object
  inherit [node Js.t] js_indexed_iterable
  method length : Js.number Js.t Js.readonly_prop
  method item : index:Js.number Js.t -> node Js.t Js.opt Js.meth
end

(* see {!Browser.Offscreen_canvas} for module definition *)
and offscreen_canvas = object
  inherit event_target
  method height : Js.number Js.t Js.prop

  method oncontextlost :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontextrestored :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method width : Js.number Js.t Js.prop

  method convertToBlob :
    options:image_encode_options Js.t Js.optdef -> blob Js.t js_promise Js.t Js.meth

  method getContext :
    contextType:offscreen_rendering_context_type
    -> attributes:canvas_context_creation_attributes_module Js.t Js.optdef
    -> offscreen_rendering_context Js.t Js.opt Js.meth

  method transferToImageBitmap : image_bitmap Js.t Js.meth
end

(* see {!Browser.Offscreen_canvas} for module definition *)
and offscreen_canvas_rendering_context2d = object
  method canvas : offscreen_canvas Js.t Js.readonly_prop
  method direction : canvas_direction Js.prop
  method fillStyle : Js.Unsafe.any Js.prop
  method filter : canvas_filter_or_string Js.t Js.opt Js.prop
  method font : Js.js_string Js.t Js.prop
  method fontKerning : canvas_font_kerning Js.prop
  method fontStretch : canvas_font_stretch Js.prop
  method fontVariantCaps : canvas_font_variant_caps Js.prop
  method globalAlpha : Js.number Js.t Js.prop
  method globalCompositeOperation : Js.js_string Js.t Js.prop
  method imageSmoothingEnabled : bool Js.t Js.prop
  method imageSmoothingQuality : image_smoothing_quality Js.prop
  method letterSpacing : Js.js_string Js.t Js.prop
  method lineCap : Js.js_string Js.t Js.prop
  method lineDashOffset : Js.number Js.t Js.prop
  method lineJoin : Js.js_string Js.t Js.prop
  method lineWidth : Js.number Js.t Js.prop
  method miterLimit : Js.number Js.t Js.prop
  method shadowBlur : Js.number Js.t Js.prop
  method shadowColor : Js.js_string Js.t Js.prop
  method shadowOffsetX : Js.number Js.t Js.prop
  method shadowOffsetY : Js.number Js.t Js.prop
  method strokeStyle : Js.Unsafe.any Js.prop
  method textAlign : canvas_text_align Js.prop
  method textBaseline : canvas_text_baseline Js.prop
  method textRendering : canvas_text_rendering Js.prop
  method wordSpacing : Js.js_string Js.t Js.prop

  method arc :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> radius:Js.number Js.t
    -> startAngle:Js.number Js.t
    -> endAngle:Js.number Js.t
    -> anticlockwise:bool Js.t Js.optdef
    -> unit Js.meth

  method arcTo :
    x1:Js.number Js.t
    -> y1:Js.number Js.t
    -> x2:Js.number Js.t
    -> y2:Js.number Js.t
    -> radius:Js.number Js.t
    -> unit Js.meth

  method beginPath : unit Js.meth

  method bezierCurveTo :
    cp1x:Js.number Js.t
    -> cp1y:Js.number Js.t
    -> cp2x:Js.number Js.t
    -> cp2y:Js.number Js.t
    -> x:Js.number Js.t
    -> y:Js.number Js.t
    -> unit Js.meth

  method clearRect :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> width:Js.number Js.t
    -> height:Js.number Js.t
    -> unit Js.meth

  method clip : winding:canvas_fill_rule Js.optdef -> unit Js.meth
  method clip_1 : path:path2d Js.t -> winding:canvas_fill_rule Js.optdef -> unit Js.meth
  method closePath : unit Js.meth

  method createConicGradient :
    startAngle:Js.number Js.t
    -> cx:Js.number Js.t
    -> cy:Js.number Js.t
    -> canvas_gradient Js.t Js.meth

  method createImageData : imagedata:image_data Js.t -> image_data Js.t Js.meth

  method createImageData_1 :
    sw:Js.number Js.t -> sh:Js.number Js.t -> image_data Js.t Js.meth

  method createImageData_2 :
    sw:Js.number Js.t
    -> sh:Js.number Js.t
    -> imageDataSettings:image_data_settings Js.t
    -> image_data Js.t Js.meth

  method createLinearGradient :
    x0:Js.number Js.t
    -> y0:Js.number Js.t
    -> x1:Js.number Js.t
    -> y1:Js.number Js.t
    -> canvas_gradient Js.t Js.meth

  method createPattern :
    image:canvas_image_source Js.t
    -> repetitionType:Js.js_string Js.t
    -> canvas_pattern Js.t Js.opt Js.meth

  method createRadialGradient :
    x0:Js.number Js.t
    -> y0:Js.number Js.t
    -> r0:Js.number Js.t
    -> x1:Js.number Js.t
    -> y1:Js.number Js.t
    -> r1:Js.number Js.t
    -> canvas_gradient Js.t Js.meth

  method drawImage :
    image:canvas_image_source Js.t -> x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth

  method drawImage_1 :
    image:canvas_image_source Js.t
    -> x:Js.number Js.t
    -> y:Js.number Js.t
    -> width:Js.number Js.t
    -> height:Js.number Js.t
    -> unit Js.meth

  method drawImage_2 :
    image:canvas_image_source Js.t
    -> sx:Js.number Js.t
    -> sy:Js.number Js.t
    -> sw:Js.number Js.t
    -> sh:Js.number Js.t
    -> dx:Js.number Js.t
    -> dy:Js.number Js.t
    -> dw:Js.number Js.t
    -> dh:Js.number Js.t
    -> unit Js.meth

  method ellipse :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> radiusX:Js.number Js.t
    -> radiusY:Js.number Js.t
    -> rotation:Js.number Js.t
    -> startAngle:Js.number Js.t
    -> endAngle:Js.number Js.t
    -> anticlockwise:bool Js.t Js.optdef
    -> unit Js.meth

  method fill : winding:canvas_fill_rule Js.optdef -> unit Js.meth
  method fill_1 : path:path2d Js.t -> winding:canvas_fill_rule Js.optdef -> unit Js.meth

  method fillRect :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> width:Js.number Js.t
    -> height:Js.number Js.t
    -> unit Js.meth

  method fillText :
    text:Js.js_string Js.t
    -> x:Js.number Js.t
    -> y:Js.number Js.t
    -> maxWidth:Js.number Js.t Js.optdef
    -> unit Js.meth

  method getImageData :
    sx:Js.number Js.t
    -> sy:Js.number Js.t
    -> sw:Js.number Js.t
    -> sh:Js.number Js.t
    -> image_data Js.t Js.meth

  method getImageData_1 :
    sx:Js.number Js.t
    -> sy:Js.number Js.t
    -> sw:Js.number Js.t
    -> sh:Js.number Js.t
    -> imageDataSettings:image_data_settings Js.t
    -> image_data Js.t Js.meth

  method getLineDash : Js.number Js.t Js.js_array Js.t Js.meth
  method getTransform : dom_matrix Js.t Js.meth
  method isContextLost : bool Js.t Js.meth

  method isPointInPath :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> winding:canvas_fill_rule Js.optdef
    -> bool Js.t Js.meth

  method isPointInPath_1 :
    path:path2d Js.t
    -> x:Js.number Js.t
    -> y:Js.number Js.t
    -> winding:canvas_fill_rule Js.optdef
    -> bool Js.t Js.meth

  method isPointInStroke : x:Js.number Js.t -> y:Js.number Js.t -> bool Js.t Js.meth

  method isPointInStroke_1 :
    path:path2d Js.t -> x:Js.number Js.t -> y:Js.number Js.t -> bool Js.t Js.meth

  method lineTo : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth
  method measureText : text:Js.js_string Js.t -> text_metrics Js.t Js.meth
  method moveTo : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth

  method putImageData :
    imagedata:image_data Js.t -> dx:Js.number Js.t -> dy:Js.number Js.t -> unit Js.meth

  method putImageData_1 :
    imagedata:image_data Js.t
    -> dx:Js.number Js.t
    -> dy:Js.number Js.t
    -> dirtyX:Js.number Js.t
    -> dirtyY:Js.number Js.t
    -> dirtyWidth:Js.number Js.t
    -> dirtyHeight:Js.number Js.t
    -> unit Js.meth

  method quadraticCurveTo :
    cpx:Js.number Js.t
    -> cpy:Js.number Js.t
    -> x:Js.number Js.t
    -> y:Js.number Js.t
    -> unit Js.meth

  method rect :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> width:Js.number Js.t
    -> height:Js.number Js.t
    -> unit Js.meth

  method reset : unit Js.meth
  method resetTransform : unit Js.meth
  method restore : unit Js.meth
  method rotate : angle:Js.number Js.t -> unit Js.meth

  method roundRect :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> w:Js.number Js.t
    -> h:Js.number Js.t
    -> radii:dom_point_init_or_float Js.t Js.optdef
    -> unit Js.meth

  method roundRect_1 :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> w:Js.number Js.t
    -> h:Js.number Js.t
    -> radii:dom_point_init_or_float Js.t Js.js_array Js.t
    -> unit Js.meth

  method save : unit Js.meth
  method scale : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth
  method setLineDash : dash:Js.number Js.t Js.js_array Js.t -> unit Js.meth
  method setTransform : transform:dom_matrix_init Js.t Js.optdef -> unit Js.meth

  method setTransform_1 :
    a:Js.number Js.t
    -> b:Js.number Js.t
    -> c:Js.number Js.t
    -> d:Js.number Js.t
    -> e:Js.number Js.t
    -> f:Js.number Js.t
    -> unit Js.meth

  method stroke : unit Js.meth
  method stroke_1 : path:path2d Js.t -> unit Js.meth

  method strokeRect :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> width:Js.number Js.t
    -> height:Js.number Js.t
    -> unit Js.meth

  method strokeText :
    text:Js.js_string Js.t
    -> x:Js.number Js.t
    -> y:Js.number Js.t
    -> maxWidth:Js.number Js.t Js.optdef
    -> unit Js.meth

  method transform :
    a:Js.number Js.t
    -> b:Js.number Js.t
    -> c:Js.number Js.t
    -> d:Js.number Js.t
    -> e:Js.number Js.t
    -> f:Js.number Js.t
    -> unit Js.meth

  method translate : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth
end

(* see {!Browser.Path2d} for module definition *)
and path2d = object
  method addPath :
    path:path2d Js.t -> transform:dom_matrix2d_init Js.t Js.optdef -> unit Js.meth

  method arc :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> radius:Js.number Js.t
    -> startAngle:Js.number Js.t
    -> endAngle:Js.number Js.t
    -> anticlockwise:bool Js.t Js.optdef
    -> unit Js.meth

  method arcTo :
    x1:Js.number Js.t
    -> y1:Js.number Js.t
    -> x2:Js.number Js.t
    -> y2:Js.number Js.t
    -> radius:Js.number Js.t
    -> unit Js.meth

  method bezierCurveTo :
    cp1x:Js.number Js.t
    -> cp1y:Js.number Js.t
    -> cp2x:Js.number Js.t
    -> cp2y:Js.number Js.t
    -> x:Js.number Js.t
    -> y:Js.number Js.t
    -> unit Js.meth

  method closePath : unit Js.meth

  method ellipse :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> radiusX:Js.number Js.t
    -> radiusY:Js.number Js.t
    -> rotation:Js.number Js.t
    -> startAngle:Js.number Js.t
    -> endAngle:Js.number Js.t
    -> anticlockwise:bool Js.t Js.optdef
    -> unit Js.meth

  method lineTo : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth
  method moveTo : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth

  method quadraticCurveTo :
    cpx:Js.number Js.t
    -> cpy:Js.number Js.t
    -> x:Js.number Js.t
    -> y:Js.number Js.t
    -> unit Js.meth

  method rect :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> width:Js.number Js.t
    -> height:Js.number Js.t
    -> unit Js.meth

  method roundRect :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> w:Js.number Js.t
    -> h:Js.number Js.t
    -> radii:dom_point_init_or_float Js.t Js.optdef
    -> unit Js.meth

  method roundRect_1 :
    x:Js.number Js.t
    -> y:Js.number Js.t
    -> w:Js.number Js.t
    -> h:Js.number Js.t
    -> radii:dom_point_init_or_float Js.t Js.js_array Js.t
    -> unit Js.meth
end

(* see {!Browser.Performance} for module definition *)
and performance = object
  inherit event_target
  method eventCounts : (* unresolved EventCounts *) untranslated Js.readonly_prop
  method memory : (* unresolved MemoryInfo *) untranslated Js.readonly_prop
  method navigation : (* unresolved PerformanceNavigation *) untranslated Js.readonly_prop

  method onresourcetimingbufferfull :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method timeOrigin : Js.number Js.t Js.readonly_prop
  method timing : (* unresolved PerformanceTiming *) untranslated Js.readonly_prop
  method clearMarks : markName:Js.js_string Js.t Js.optdef -> unit Js.meth
  method clearMeasures : measureName:Js.js_string Js.t Js.optdef -> unit Js.meth
  method clearResourceTimings : unit Js.meth
  method getEntries : performance_entry Js.t Js.js_array Js.t Js.meth

  method getEntriesByName :
    name:Js.js_string Js.t
    -> entryType:Js.js_string Js.t Js.optdef
    -> performance_entry Js.t Js.js_array Js.t Js.meth

  method getEntriesByType :
    entryType:Js.js_string Js.t -> performance_entry Js.t Js.js_array Js.t Js.meth

  method mark :
    markName:Js.js_string Js.t
    -> markOptions:performance_mark_options Js.t Js.optdef
    -> (* unresolved PerformanceMark *) untranslated Js.meth

  method measure :
    measureName:Js.js_string Js.t
    -> startOrMeasureOptions:performance_measure_options_or_string Js.t Js.optdef
    -> endMark:Js.js_string Js.t Js.optdef
    -> (* unresolved PerformanceMeasure *) untranslated Js.meth

  method now : Js.number Js.t Js.meth
  method setResourceTimingBufferSize : maxSize:Js.number Js.t -> unit Js.meth
  method toJSON : Js.Unsafe.any Js.meth
end

(* see {!Browser.Performance_entry} for module definition *)
and performance_entry = object
  method duration : Js.number Js.t Js.readonly_prop
  method entryType : Js.js_string Js.t Js.readonly_prop
  method name : Js.js_string Js.t Js.readonly_prop
  method startTime : Js.number Js.t Js.readonly_prop
  method toJSON : Js.Unsafe.any Js.meth
end

(* see {!Browser.Performance_observer} for module definition *)
and performance_observer = object
  method disconnect : unit Js.meth
  method observe : options:performance_observer_init Js.t Js.optdef -> unit Js.meth
  method takeRecords : performance_entry Js.t Js.js_array Js.t Js.meth
end

(* see {!Browser.Window} for module definition *)
and permission_status = object
  inherit event_target
  method name : Js.js_string Js.t Js.readonly_prop

  method onchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method state : permission_state Js.readonly_prop
end

(* see {!Browser.Window} for module definition *)
and permissions = object
  method query :
    permission:Js.Unsafe.any -> permission_status Js.t js_promise Js.t Js.meth
end

(* see {!Browser.Pointer_event} for module definition *)
and pointer_event = object
  inherit mouse_event
  method altitudeAngle : Js.number Js.t Js.readonly_prop
  method azimuthAngle : Js.number Js.t Js.readonly_prop
  method height : Js.number Js.t Js.readonly_prop
  method isPrimary : bool Js.t Js.readonly_prop
  method pointerId : Js.number Js.t Js.readonly_prop
  method pointerType : Js.js_string Js.t Js.readonly_prop
  method pressure : Js.number Js.t Js.readonly_prop
  method tangentialPressure : Js.number Js.t Js.readonly_prop
  method tiltX : Js.number Js.t Js.readonly_prop
  method tiltY : Js.number Js.t Js.readonly_prop
  method twist : Js.number Js.t Js.readonly_prop
  method width : Js.number Js.t Js.readonly_prop

  (** [getCoalescedEvents] is unsafe and is only available in [Secure] contexts. In order
      to call [getCoalescedEvents], you must use [ppx_browser]. *)
  method getCoalescedEvents :
    ( pointer_event Js.t Js.js_array Js.t Js.meth
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method getPredictedEvents : pointer_event Js.t Js.js_array Js.t Js.meth
end

(* see {!Browser.Pop_state_event} for module definition *)
and pop_state_event = object
  inherit event
  method state : Js.Unsafe.any Js.readonly_prop
end

(* see {!Browser.Progress_event} for module definition *)
and progress_event = object
  inherit event
  method lengthComputable : bool Js.t Js.readonly_prop
  method loaded : Js.number Js.t Js.readonly_prop
  method total : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Public_key_credential} for module definition *)
and public_key_credential = object
  inherit credential
  method authenticatorAttachment : Js.js_string Js.t Js.opt Js.readonly_prop
  method rawId : Js_of_ocaml.Typed_array.arrayBuffer Js.t Js.readonly_prop
  method response : authenticator_response Js.t Js.readonly_prop
  method getClientExtensionResults : authentication_extensions_client_outputs Js.t Js.meth
end

(* see {!Browser.Html_form_element} for module definition *)
and radio_node_list = object
  inherit node_list
  method value : Js.js_string Js.t Js.prop
end

(* see {!Browser.Range} for module definition *)
and range = object
  inherit abstract_range
  method commonAncestorContainer : node Js.t Js.readonly_prop
  method cloneContents : document_fragment Js.t Js.meth
  method cloneRange : range Js.t Js.meth
  method collapse : toStart:bool Js.t Js.optdef -> unit Js.meth

  method compareBoundaryPoints :
    how:Js.number Js.t -> sourceRange:range Js.t -> Js.number Js.t Js.meth

  method comparePoint : node:node Js.t -> offset:Js.number Js.t -> Js.number Js.t Js.meth

  method createContextualFragment :
    fragment:html_string Js.t -> document_fragment Js.t Js.meth

  method deleteContents : unit Js.meth
  method detach : unit Js.meth
  method expand_deprecated : unit:Js.js_string Js.t Js.optdef -> unit Js.meth
  method extractContents : document_fragment Js.t Js.meth
  method getBoundingClientRect : dom_rect Js.t Js.meth
  method getClientRects : dom_rect_list Js.t Js.meth
  method insertNode : node:node Js.t -> unit Js.meth
  method intersectsNode : node:node Js.t -> bool Js.t Js.meth
  method isPointInRange : node:node Js.t -> offset:Js.number Js.t -> bool Js.t Js.meth
  method selectNode : node:node Js.t -> unit Js.meth
  method selectNodeContents : node:node Js.t -> unit Js.meth
  method setEnd : node:node Js.t -> offset:Js.number Js.t -> unit Js.meth
  method setEndAfter : node:node Js.t -> unit Js.meth
  method setEndBefore : node:node Js.t -> unit Js.meth
  method setStart : node:node Js.t -> offset:Js.number Js.t -> unit Js.meth
  method setStartAfter : node:node Js.t -> unit Js.meth
  method setStartBefore : node:node Js.t -> unit Js.meth
  method surroundContents : newParent:node Js.t -> unit Js.meth
end

(* see {!Browser.Readable_stream} for module definition *)
and readable_stream = object
  method locked : bool Js.t Js.readonly_prop
  method cancel : reason:Js.Unsafe.any Js.optdef -> unit js_promise Js.t Js.meth

  method getReader :
    options:readable_stream_get_reader_options Js.t Js.optdef
    -> readable_stream_reader Js.t Js.meth

  method pipeThrough :
    transform:readable_writable_pair Js.t
    -> options:stream_pipe_options Js.t Js.optdef
    -> readable_stream Js.t Js.meth

  method pipeTo :
    destination:writable_stream Js.t
    -> options:stream_pipe_options Js.t Js.optdef
    -> unit js_promise Js.t Js.meth

  method tee : readable_stream Js.t Js.js_array Js.t Js.meth
end

(* see {!Browser.Request} for module definition *)
and request = object
  method bodyUsed : bool Js.t Js.readonly_prop
  method cache : request_cache Js.readonly_prop
  method credentials : request_credentials Js.readonly_prop
  method destination : request_destination Js.readonly_prop
  method duplex : request_duplex Js.readonly_prop
  method headers : headers Js.t Js.readonly_prop
  method integrity : Js.js_string Js.t Js.readonly_prop
  method isHistoryNavigation : bool Js.t Js.readonly_prop
  method keepalive : bool Js.t Js.readonly_prop
  method method_ : Js.js_string Js.t Js.readonly_prop
  method mode : request_mode Js.readonly_prop
  method redirect : request_redirect Js.readonly_prop
  method referrer : Js.js_string Js.t Js.readonly_prop
  method referrerPolicy : referrer_policy Js.readonly_prop
  method signal : abort_signal Js.t Js.readonly_prop
  method url : Js.js_string Js.t Js.readonly_prop
  method arrayBuffer : Js_of_ocaml.Typed_array.arrayBuffer Js.t js_promise Js.t Js.meth
  method blob : blob Js.t js_promise Js.t Js.meth
  method clone : request Js.t Js.meth
  method formData : form_data Js.t js_promise Js.t Js.meth
  method json : Js.Unsafe.any js_promise Js.t Js.meth
  method text : Js.js_string Js.t js_promise Js.t Js.meth
end

(* see {!Browser.Resize_observer} for module definition *)
and resize_observer = object
  method disconnect : unit Js.meth
  method observe : target:element Js.t -> unit Js.meth

  method observe_1 :
    target:element Js.t -> options:resize_observer_options Js.t -> unit Js.meth

  method unobserve : target:element Js.t -> unit Js.meth
end

(* see {!Browser.Resize_observer} for module definition *)
and resize_observer_entry = object
  method borderBoxSize : resize_observer_size Js.t Js.js_array Js.t Js.readonly_prop
  method contentBoxSize : resize_observer_size Js.t Js.js_array Js.t Js.readonly_prop
  method contentRect : dom_rect_read_only Js.t Js.readonly_prop

  method devicePixelContentBoxSize :
    resize_observer_size Js.t Js.js_array Js.t Js.readonly_prop

  method target : element Js.t Js.readonly_prop
end

(* see {!Browser.Resize_observer} for module definition *)
and resize_observer_size = object
  method blockSize : Js.number Js.t Js.readonly_prop
  method inlineSize : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Response} for module definition *)
and response = object
  method body : readable_stream Js.t Js.opt Js.readonly_prop
  method bodyUsed : bool Js.t Js.readonly_prop
  method headers : headers Js.t Js.readonly_prop
  method ok : bool Js.t Js.readonly_prop
  method redirected : bool Js.t Js.readonly_prop
  method status : Js.number Js.t Js.readonly_prop
  method statusText : Js.js_string Js.t Js.readonly_prop
  method type_ : response_type Js.readonly_prop
  method url : Js.js_string Js.t Js.readonly_prop
  method arrayBuffer : Js_of_ocaml.Typed_array.arrayBuffer Js.t js_promise Js.t Js.meth
  method blob : blob Js.t js_promise Js.t Js.meth
  method clone : response Js.t Js.meth
  method formData : form_data Js.t js_promise Js.t Js.meth
  method json : Js.Unsafe.any js_promise Js.t Js.meth
  method text : Js.js_string Js.t js_promise Js.t Js.meth
end

(* see {!Browser.Svg_animated_string} for module definition *)
and svg_animated_string = object
  method animVal : Js.js_string Js.t Js.readonly_prop
  method baseVal : trusted_script_url_or_string Js.t Js.prop
end

(* see {!Browser.Svg_element} for module definition *)
and svg_element = object
  inherit element
  method attributeStyleMap : style_property_map Js.t Js.readonly_prop
  method autofocus : bool Js.t Js.prop

  (* skipping className because it's already included in ancestor *)
  method dataset : (* unresolved DOMStringMap *) untranslated Js.readonly_prop
  method nonce : Js.js_string Js.t Js.prop

  method onabort :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onanimationend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onanimationiteration :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onanimationstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onauxclick :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforeinput :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforematch :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforetoggle :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforexrselect :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onblur :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncancel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncanplay :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncanplaythrough :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onclick :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onclose :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontentvisibilityautostatechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontextlost :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontextmenu :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontextrestored :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncopy :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncuechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncut :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondblclick :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondrag :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragenter :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragleave :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragover :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondrop :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondurationchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onemptied :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onended :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onerror :
    ( 'self
      , event:event_or_string Js.t
        -> source:Js.js_string Js.t Js.optdef
        -> lineno:Js.number Js.t Js.optdef
        -> colno:Js.number Js.t Js.optdef
        -> error:Js.Unsafe.any Js.optdef
        -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onfocus :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onformdata :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ongotpointercapture :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oninput :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oninvalid :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onkeydown :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onkeypress :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onkeyup :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onload :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadeddata :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadedmetadata :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onlostpointercapture :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmousedown :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseenter :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseleave :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmousemove :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseout :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseover :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseup :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmousewheel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpaste :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpause :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onplay :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onplaying :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointercancel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerdown :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerenter :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerleave :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointermove :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerout :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerover :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerrawupdate :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerup :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onprogress :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onratechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onreset :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onresize :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onscroll :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsecuritypolicyviolation :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onseeked :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onseeking :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onselect :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onselectionchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onselectstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onslotchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onstalled :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsubmit :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsuspend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontimeupdate :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontoggle :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitioncancel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitionend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitionrun :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitionstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onvolumechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwaiting :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitanimationend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitanimationiteration :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitanimationstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkittransitionend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwheel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ownerSVGElement :
    (* unresolved SVGSVGElement *)
    untranslated Js.opt Js.readonly_prop

  method style : css_style_declaration Js.t Js.readonly_prop
  method tabIndex : Js.number Js.t Js.prop
  method viewportElement : svg_element Js.t Js.opt Js.readonly_prop
  method blur : unit Js.meth
  method focus : options:focus_options Js.t Js.optdef -> unit Js.meth
end

(* see {!Browser.Svg_graphics_element} for module definition *)
and svg_graphics_element = object
  inherit svg_element
  method farthestViewportElement : svg_element Js.t Js.readonly_prop
  method nearestViewportElement : svg_element Js.t Js.readonly_prop
  method requiredExtensions : (* unresolved SVGStringList *) untranslated Js.readonly_prop
  method systemLanguage : (* unresolved SVGStringList *) untranslated Js.readonly_prop

  method transform :
    (* unresolved SVGAnimatedTransformList *)
    untranslated Js.readonly_prop

  method getBBox : (* unresolved SVGRect *) untranslated Js.meth
  method getCTM : (* unresolved SVGMatrix *) untranslated Js.meth
  method getScreenCTM : (* unresolved SVGMatrix *) untranslated Js.meth
end

(* see {!Browser.Svg_image_element} for module definition *)
and svg_image_element = object
  inherit svg_graphics_element
  method crossOrigin : Js.js_string Js.t Js.opt Js.prop
  method decoding : Js.js_string Js.t Js.prop
  method height : (* unresolved SVGAnimatedLength *) untranslated Js.readonly_prop
  method href : svg_animated_string Js.t Js.readonly_prop

  method preserveAspectRatio :
    (* unresolved SVGAnimatedPreserveAspectRatio *)
    untranslated Js.readonly_prop

  method width : (* unresolved SVGAnimatedLength *) untranslated Js.readonly_prop
  method x : (* unresolved SVGAnimatedLength *) untranslated Js.readonly_prop
  method y : (* unresolved SVGAnimatedLength *) untranslated Js.readonly_prop
  method decode : unit js_promise Js.t Js.meth
end

(* see {!Browser.Screen} for module definition *)
and screen = object
  inherit event_target
  method availHeight : Js.number Js.t Js.readonly_prop
  method availLeft : Js.number Js.t Js.readonly_prop
  method availTop : Js.number Js.t Js.readonly_prop
  method availWidth : Js.number Js.t Js.readonly_prop
  method colorDepth : Js.number Js.t Js.readonly_prop
  method height : Js.number Js.t Js.readonly_prop

  (** [isExtended] is unsafe and is only available in [Secure] contexts. In order to
      access [isExtended], you must use [ppx_browser]. *)
  method isExtended :
    ( bool Js.t Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  (** [onchange] is unsafe and is only available in [Secure] contexts. In order to access
      [onchange], you must use [ppx_browser]. *)
  method onchange :
    ( ( 'self
        , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
        Js.opt
        Js.prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method orientation : (* unresolved ScreenOrientation *) untranslated Js.readonly_prop
  method pixelDepth : Js.number Js.t Js.readonly_prop
  method width : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Selection} for module definition *)
and selection = object
  method anchorNode : node Js.t Js.opt Js.readonly_prop
  method anchorOffset : Js.number Js.t Js.readonly_prop
  method baseNode : node Js.t Js.opt Js.readonly_prop
  method baseOffset : Js.number Js.t Js.readonly_prop
  method extentNode : node Js.t Js.opt Js.readonly_prop
  method extentOffset : Js.number Js.t Js.readonly_prop
  method focusNode : node Js.t Js.opt Js.readonly_prop
  method focusOffset : Js.number Js.t Js.readonly_prop
  method isCollapsed : bool Js.t Js.readonly_prop
  method rangeCount : Js.number Js.t Js.readonly_prop
  method type_ : Js.js_string Js.t Js.readonly_prop
  method addRange : range:range Js.t -> unit Js.meth

  method collapse :
    node:node Js.t Js.opt -> offset:Js.number Js.t Js.optdef -> unit Js.meth

  method collapseToEnd : unit Js.meth
  method collapseToStart : unit Js.meth

  method containsNode :
    node:node Js.t -> allowPartialContainment:bool Js.t Js.optdef -> bool Js.t Js.meth

  method deleteFromDocument : unit Js.meth
  method empty : unit Js.meth
  method extend : node:node Js.t -> offset:Js.number Js.t Js.optdef -> unit Js.meth
  method getRangeAt : index:Js.number Js.t -> range Js.t Js.meth

  method modify :
    alter:Js.js_string Js.t Js.optdef
    -> direction:Js.js_string Js.t Js.optdef
    -> granularity:Js.js_string Js.t Js.optdef
    -> unit Js.meth

  method removeAllRanges : unit Js.meth
  method removeRange : range:range Js.t -> unit Js.meth
  method selectAllChildren : node:node Js.t -> unit Js.meth

  method setBaseAndExtent :
    baseNode:node Js.t Js.opt
    -> baseOffset:Js.number Js.t
    -> extentNode:node Js.t Js.opt
    -> extentOffset:Js.number Js.t
    -> unit Js.meth

  method setPosition :
    node:node Js.t Js.opt -> offset:Js.number Js.t Js.optdef -> unit Js.meth
end

(* see {!Browser.Shared_worker_global_scope} for module definition *)
and shared_worker_global_scope = object
  inherit worker_global_scope
  method name : Js.js_string Js.t Js.readonly_prop

  method onconnect :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method close : unit Js.meth
end

(* see {!Browser.Storage} for module definition *)
and storage = object
  method length : Js.number Js.t Js.readonly_prop
  method clear : unit Js.meth
  method getItem : key:Js.js_string Js.t -> Js.js_string Js.t Js.opt Js.meth
  method key : index:Js.number Js.t -> Js.js_string Js.t Js.opt Js.meth
  method removeItem : key:Js.js_string Js.t -> unit Js.meth
  method setItem : key:Js.js_string Js.t -> value:Js.js_string Js.t -> unit Js.meth
end

(* see {!Browser.Storage_event} for module definition *)
and storage_event = object
  inherit event
  method key : Js.js_string Js.t Js.opt Js.readonly_prop
  method newValue : Js.js_string Js.t Js.opt Js.readonly_prop
  method oldValue : Js.js_string Js.t Js.opt Js.readonly_prop
  method storageArea : storage Js.t Js.opt Js.readonly_prop
  method url : Js.js_string Js.t Js.readonly_prop

  method initStorageEvent :
    type_:Js.js_string Js.t
    -> bubbles:bool Js.t Js.optdef
    -> cancelable:bool Js.t Js.optdef
    -> key:Js.js_string Js.t Js.opt Js.optdef
    -> oldValue:Js.js_string Js.t Js.opt Js.optdef
    -> newValue:Js.js_string Js.t Js.opt Js.optdef
    -> url:Js.js_string Js.t Js.optdef
    -> storageArea:storage Js.t Js.opt Js.optdef
    -> unit Js.meth
end

(* see {!Browser.Style_property_map_read_only} for module definition *)
and style_property_map_read_only = object
  inherit [cssom_string Js.t, css_style_value Js.t Js.js_array Js.t] js_iterable
  method size : Js.number Js.t Js.readonly_prop
  method get : property:cssom_string Js.t -> css_style_value Js.t Js.opt Js.meth

  method getAll :
    property:cssom_string Js.t -> css_style_value Js.t Js.js_array Js.t Js.meth

  method has : property:cssom_string Js.t -> bool Js.t Js.meth
end

(* see {!Browser.Style_property_map} for module definition *)
and style_property_map = object
  inherit style_property_map_read_only
  method append : property:cssom_string Js.t -> unit Js.meth

  method append_1 :
    property:cssom_string Js.t -> value:css_style_value_or_string Js.t -> unit Js.meth

  method append_2 :
    property:cssom_string Js.t
    -> value:css_style_value_or_string Js.t
    -> value1:css_style_value_or_string Js.t
    -> unit Js.meth

  method append_3 :
    property:cssom_string Js.t
    -> value:css_style_value_or_string Js.t
    -> value1:css_style_value_or_string Js.t
    -> value2:css_style_value_or_string Js.t
    -> unit Js.meth

  method clear : unit Js.meth
  method delete : property:cssom_string Js.t -> unit Js.meth
  method set : property:cssom_string Js.t -> unit Js.meth

  method set_1 :
    property:cssom_string Js.t -> value:css_style_value_or_string Js.t -> unit Js.meth

  method set_2 :
    property:cssom_string Js.t
    -> value:css_style_value_or_string Js.t
    -> value1:css_style_value_or_string Js.t
    -> unit Js.meth

  method set_3 :
    property:cssom_string Js.t
    -> value:css_style_value_or_string Js.t
    -> value1:css_style_value_or_string Js.t
    -> value2:css_style_value_or_string Js.t
    -> unit Js.meth
end

(* see {!Browser.Submit_event} for module definition *)
and submit_event = object
  inherit event
  method submitter : html_element Js.t Js.opt Js.readonly_prop
end

(* see {!Browser.Text} for module definition *)
and text = object
  inherit character_data

  method assignedSlot :
    (* unresolved HTMLSlotElement *)
    untranslated Js.opt Js.readonly_prop

  method wholeText : Js.js_string Js.t Js.readonly_prop
  method splitText : offset:Js.number Js.t -> text Js.t Js.meth
end

(* see {!Browser.Text_metrics} for module definition *)
and text_metrics = object
  method actualBoundingBoxAscent : Js.number Js.t Js.readonly_prop
  method actualBoundingBoxDescent : Js.number Js.t Js.readonly_prop
  method actualBoundingBoxLeft : Js.number Js.t Js.readonly_prop
  method actualBoundingBoxRight : Js.number Js.t Js.readonly_prop
  method fontBoundingBoxAscent : Js.number Js.t Js.readonly_prop
  method fontBoundingBoxDescent : Js.number Js.t Js.readonly_prop
  method width : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Toggle_event} for module definition *)
and toggle_event = object
  inherit event
  method newState : Js.js_string Js.t Js.readonly_prop
  method oldState : Js.js_string Js.t Js.readonly_prop
end

(* see {!Browser.Touch} for module definition *)
and touch = object
  method clientX : Js.number Js.t Js.readonly_prop
  method clientY : Js.number Js.t Js.readonly_prop
  method force : Js.number Js.t Js.readonly_prop
  method identifier : Js.number Js.t Js.readonly_prop
  method pageX : Js.number Js.t Js.readonly_prop
  method pageY : Js.number Js.t Js.readonly_prop
  method radiusX : Js.number Js.t Js.readonly_prop
  method radiusY : Js.number Js.t Js.readonly_prop
  method rotationAngle : Js.number Js.t Js.readonly_prop
  method screenX : Js.number Js.t Js.readonly_prop
  method screenY : Js.number Js.t Js.readonly_prop
  method target : event_target Js.t Js.readonly_prop
end

(* see {!Browser.Touch_event} for module definition *)
and touch_event = object
  inherit ui_event
  method altKey : bool Js.t Js.readonly_prop
  method changedTouches : touch_list Js.t Js.readonly_prop
  method ctrlKey : bool Js.t Js.readonly_prop
  method metaKey : bool Js.t Js.readonly_prop
  method shiftKey : bool Js.t Js.readonly_prop
  method targetTouches : touch_list Js.t Js.readonly_prop
  method touches : touch_list Js.t Js.readonly_prop
end

(* see {!Browser.Touch_event} for module definition *)
and touch_list = object
  method length : Js.number Js.t Js.readonly_prop
  method item : index:Js.number Js.t -> touch Js.t Js.opt Js.meth
end

(* see {!Browser.Transition_event} for module definition *)
and transition_event = object
  inherit event
  method elapsedTime : Js.number Js.t Js.readonly_prop
  method propertyName : Js.js_string Js.t Js.readonly_prop
  method pseudoElement : Js.js_string Js.t Js.readonly_prop
end

(* see {!Browser.Trusted_script} for module definition *)
and trusted_script = object
  method toJSON : Js.js_string Js.t Js.meth
end

(* see {!Browser.Url} for module definition *)
and url = object
  method hash : Js.js_string Js.t Js.prop
  method host : Js.js_string Js.t Js.prop
  method hostname : Js.js_string Js.t Js.prop
  method href : Js.js_string Js.t Js.prop
  method origin : Js.js_string Js.t Js.readonly_prop
  method password : Js.js_string Js.t Js.prop
  method pathname : Js.js_string Js.t Js.prop
  method port : Js.js_string Js.t Js.prop
  method protocol : Js.js_string Js.t Js.prop
  method search : Js.js_string Js.t Js.prop
  method searchParams : url_search_params Js.t Js.readonly_prop
  method username : Js.js_string Js.t Js.prop
  method toJSON : Js.js_string Js.t Js.meth
end

(* see {!Browser.Url_search_params} for module definition *)
and url_search_params = object
  inherit [Js.js_string Js.t, Js.js_string Js.t] js_iterable
  method size : Js.number Js.t Js.readonly_prop
  method append : name:Js.js_string Js.t -> value:Js.js_string Js.t -> unit Js.meth

  method delete :
    name:Js.js_string Js.t -> value:Js.js_string Js.t Js.optdef -> unit Js.meth

  method get : name:Js.js_string Js.t -> Js.js_string Js.t Js.opt Js.meth
  method getAll : name:Js.js_string Js.t -> Js.js_string Js.t Js.js_array Js.t Js.meth

  method has :
    name:Js.js_string Js.t -> value:Js.js_string Js.t Js.optdef -> bool Js.t Js.meth

  method set : name:Js.js_string Js.t -> value:Js.js_string Js.t -> unit Js.meth
  method sort : unit Js.meth
end

(* see {!Browser.Video_frame} for module definition *)
and video_frame = object
  method codedHeight : Js.number Js.t Js.readonly_prop
  method codedRect : dom_rect_read_only Js.t Js.opt Js.readonly_prop
  method codedWidth : Js.number Js.t Js.readonly_prop
  method colorSpace : (* unresolved VideoColorSpace *) untranslated Js.readonly_prop
  method displayHeight : Js.number Js.t Js.readonly_prop
  method displayWidth : Js.number Js.t Js.readonly_prop
  method duration : Js.number Js.t Js.opt Js.readonly_prop
  method format : video_pixel_format Js.opt Js.readonly_prop
  method timestamp : Js.number Js.t Js.readonly_prop
  method visibleRect : dom_rect_read_only Js.t Js.opt Js.readonly_prop

  method allocationSize :
    options:video_frame_copy_to_options Js.t Js.optdef -> Js.number Js.t Js.meth

  method clone : video_frame Js.t Js.meth
  method close : unit Js.meth

  method copyTo :
    destination:allow_shared_buffer_source Js.t
    -> options:video_frame_copy_to_options Js.t Js.optdef
    -> plane_layout Js.t Js.js_array Js.t js_promise Js.t Js.meth
end

(* see {!Browser.Web_gl2_rendering_context} for module definition *)
and web_gl2_rendering_context = object
  method canvas : html_canvas_element_or_offscreen_canvas Js.t Js.readonly_prop
  method drawingBufferColorSpace : predefined_color_space Js.prop
  method drawingBufferHeight : gl_sizei Js.t Js.readonly_prop
  method drawingBufferWidth : gl_sizei Js.t Js.readonly_prop
  method unpackColorSpace : predefined_color_space Js.prop
  method activeTexture : texture:gl_enum Js.t -> unit Js.meth

  method attachShader :
    program:web_gl_program Js.t -> shader:web_gl_shader Js.t -> unit Js.meth

  method beginQuery :
    target:gl_enum Js.t -> query:(* unresolved WebGLQuery *) untranslated -> unit Js.meth

  method beginTransformFeedback : primitiveMode:gl_enum Js.t -> unit Js.meth

  method bindAttribLocation :
    program:web_gl_program Js.t
    -> index:gl_uint Js.t
    -> name:Js.js_string Js.t
    -> unit Js.meth

  method bindBuffer :
    target:gl_enum Js.t -> buffer:web_gl_buffer Js.t Js.opt -> unit Js.meth

  method bindBufferBase :
    target:gl_enum Js.t
    -> index:gl_uint Js.t
    -> buffer:web_gl_buffer Js.t Js.opt
    -> unit Js.meth

  method bindBufferRange :
    target:gl_enum Js.t
    -> index:gl_uint Js.t
    -> buffer:web_gl_buffer Js.t Js.opt
    -> offset:gl_intptr Js.t
    -> size:gl_sizeiptr Js.t
    -> unit Js.meth

  method bindFramebuffer :
    target:gl_enum Js.t
    -> framebuffer:(* unresolved WebGLFramebuffer *) untranslated Js.opt
    -> unit Js.meth

  method bindRenderbuffer :
    target:gl_enum Js.t
    -> renderbuffer:(* unresolved WebGLRenderbuffer *) untranslated Js.opt
    -> unit Js.meth

  method bindSampler :
    unit:gl_uint Js.t
    -> sampler:(* unresolved WebGLSampler *) untranslated Js.opt
    -> unit Js.meth

  method bindTexture :
    target:gl_enum Js.t
    -> texture:(* unresolved WebGLTexture *) untranslated Js.opt
    -> unit Js.meth

  method bindTransformFeedback :
    target:gl_enum Js.t
    -> feedback:(* unresolved WebGLTransformFeedback *) untranslated Js.opt
    -> unit Js.meth

  method bindVertexArray :
    vertexArray:(* unresolved WebGLVertexArrayObject *) untranslated Js.opt
    -> unit Js.meth

  method blendColor :
    red:gl_clampf Js.t
    -> green:gl_clampf Js.t
    -> blue:gl_clampf Js.t
    -> alpha:gl_clampf Js.t
    -> unit Js.meth

  method blendEquation : mode:gl_enum Js.t -> unit Js.meth

  method blendEquationSeparate :
    modeRGB:gl_enum Js.t -> modeAlpha:gl_enum Js.t -> unit Js.meth

  method blendFunc : sfactor:gl_enum Js.t -> dfactor:gl_enum Js.t -> unit Js.meth

  method blendFuncSeparate :
    srcRGB:gl_enum Js.t
    -> dstRGB:gl_enum Js.t
    -> srcAlpha:gl_enum Js.t
    -> dstAlpha:gl_enum Js.t
    -> unit Js.meth

  method blitFramebuffer :
    srcX0:gl_int Js.t
    -> srcY0:gl_int Js.t
    -> srcX1:gl_int Js.t
    -> srcY1:gl_int Js.t
    -> dstX0:gl_int Js.t
    -> dstY0:gl_int Js.t
    -> dstX1:gl_int Js.t
    -> dstY1:gl_int Js.t
    -> mask:gl_bitfield Js.t
    -> filter:gl_enum Js.t
    -> unit Js.meth

  method bufferData :
    target:gl_enum Js.t -> size:gl_sizeiptr Js.t -> usage:gl_enum Js.t -> unit Js.meth

  method bufferData_1 :
    target:gl_enum Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBuffer Js.t Js.opt
    -> usage:gl_enum Js.t
    -> unit Js.meth

  method bufferData_2 :
    target:gl_enum Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> usage:gl_enum Js.t
    -> unit Js.meth

  method bufferData_3 :
    target:gl_enum Js.t
    -> srcData:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> usage:gl_enum Js.t
    -> srcOffset:gl_intptr Js.t
    -> length:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method bufferSubData :
    target:gl_enum Js.t
    -> offset:gl_intptr Js.t
    -> data:buffer_source Js.t
    -> unit Js.meth

  method bufferSubData_1 :
    target:gl_enum Js.t
    -> dstByteOffset:gl_intptr Js.t
    -> srcData:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> srcOffset:gl_intptr Js.t
    -> length:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method checkFramebufferStatus : target:gl_enum Js.t -> gl_enum Js.t Js.meth
  method clear : mask:gl_bitfield Js.t -> unit Js.meth

  method clearBufferfi :
    buffer:gl_enum Js.t
    -> drawbuffer:gl_int Js.t
    -> depth:gl_float Js.t
    -> stencil:gl_int Js.t
    -> unit Js.meth

  method clearBufferfv :
    buffer:gl_enum Js.t
    -> drawbuffer:gl_int Js.t
    -> value:float32_list Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method clearBufferiv :
    buffer:gl_enum Js.t
    -> drawbuffer:gl_int Js.t
    -> value:int32_list Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method clearBufferuiv :
    buffer:gl_enum Js.t
    -> drawbuffer:gl_int Js.t
    -> value:uint32_list Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method clearColor :
    red:gl_clampf Js.t
    -> green:gl_clampf Js.t
    -> blue:gl_clampf Js.t
    -> alpha:gl_clampf Js.t
    -> unit Js.meth

  method clearDepth : depth:gl_clampf Js.t -> unit Js.meth
  method clearStencil : s:gl_int Js.t -> unit Js.meth

  method clientWaitSync :
    sync:(* unresolved WebGLSync *) untranslated
    -> flags:gl_bitfield Js.t
    -> timeout:gl_uint64 Js.t
    -> gl_enum Js.t Js.meth

  method colorMask :
    red:gl_boolean Js.t
    -> green:gl_boolean Js.t
    -> blue:gl_boolean Js.t
    -> alpha:gl_boolean Js.t
    -> unit Js.meth

  method compileShader : shader:web_gl_shader Js.t -> unit Js.meth

  method compressedTexImage2D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_enum Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> unit Js.meth

  method compressedTexImage2D_1 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_enum Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> imageSize:gl_sizei Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method compressedTexImage2D_2 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_enum Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> srcOffset:gl_uint Js.t
    -> srcLengthOverride:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method compressedTexImage3D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_enum Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> border:gl_int Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> srcLengthOverride:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method compressedTexImage3D_1 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_enum Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> border:gl_int Js.t
    -> imageSize:gl_sizei Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method compressedTexSubImage2D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> unit Js.meth

  method compressedTexSubImage2D_1 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> imageSize:gl_sizei Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method compressedTexSubImage2D_2 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> srcOffset:gl_uint Js.t
    -> srcLengthOverride:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method compressedTexSubImage3D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> zoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> srcLengthOverride:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method compressedTexSubImage3D_1 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> zoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> imageSize:gl_sizei Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method copyBufferSubData :
    readTarget:gl_enum Js.t
    -> writeTarget:gl_enum Js.t
    -> readOffset:gl_intptr Js.t
    -> writeOffset:gl_intptr Js.t
    -> size:gl_sizeiptr Js.t
    -> unit Js.meth

  method copyTexImage2D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_enum Js.t
    -> x:gl_int Js.t
    -> y:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> unit Js.meth

  method copyTexSubImage2D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> x:gl_int Js.t
    -> y:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> unit Js.meth

  method copyTexSubImage3D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> zoffset:gl_int Js.t
    -> x:gl_int Js.t
    -> y:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> unit Js.meth

  method createBuffer : web_gl_buffer Js.t Js.meth
  method createFramebuffer : (* unresolved WebGLFramebuffer *) untranslated Js.meth
  method createProgram : web_gl_program Js.t Js.meth
  method createQuery : (* unresolved WebGLQuery *) untranslated Js.meth
  method createRenderbuffer : (* unresolved WebGLRenderbuffer *) untranslated Js.meth
  method createSampler : (* unresolved WebGLSampler *) untranslated Js.meth
  method createShader : type_:gl_enum Js.t -> web_gl_shader Js.t Js.meth
  method createTexture : (* unresolved WebGLTexture *) untranslated Js.meth

  method createTransformFeedback :
    (* unresolved WebGLTransformFeedback *)
    untranslated Js.meth

  method createVertexArray : (* unresolved WebGLVertexArrayObject *) untranslated Js.meth
  method cullFace : mode:gl_enum Js.t -> unit Js.meth
  method deleteBuffer : buffer:web_gl_buffer Js.t Js.opt -> unit Js.meth

  method deleteFramebuffer :
    framebuffer:(* unresolved WebGLFramebuffer *) untranslated Js.opt -> unit Js.meth

  method deleteProgram : program:web_gl_program Js.t Js.opt -> unit Js.meth

  method deleteQuery :
    query:(* unresolved WebGLQuery *) untranslated Js.opt -> unit Js.meth

  method deleteRenderbuffer :
    renderbuffer:(* unresolved WebGLRenderbuffer *) untranslated Js.opt -> unit Js.meth

  method deleteSampler :
    sampler:(* unresolved WebGLSampler *) untranslated Js.opt -> unit Js.meth

  method deleteShader : shader:web_gl_shader Js.t Js.opt -> unit Js.meth
  method deleteSync : sync:(* unresolved WebGLSync *) untranslated Js.opt -> unit Js.meth

  method deleteTexture :
    texture:(* unresolved WebGLTexture *) untranslated Js.opt -> unit Js.meth

  method deleteTransformFeedback :
    feedback:(* unresolved WebGLTransformFeedback *) untranslated Js.opt -> unit Js.meth

  method deleteVertexArray :
    vertexArray:(* unresolved WebGLVertexArrayObject *) untranslated Js.opt
    -> unit Js.meth

  method depthFunc : func:gl_enum Js.t -> unit Js.meth
  method depthMask : flag:gl_boolean Js.t -> unit Js.meth
  method depthRange : zNear:gl_clampf Js.t -> zFar:gl_clampf Js.t -> unit Js.meth

  method detachShader :
    program:web_gl_program Js.t -> shader:web_gl_shader Js.t -> unit Js.meth

  method disable : cap:gl_enum Js.t -> unit Js.meth
  method disableVertexAttribArray : index:gl_uint Js.t -> unit Js.meth

  method drawArrays :
    mode:gl_enum Js.t -> first:gl_int Js.t -> count:gl_sizei Js.t -> unit Js.meth

  method drawArraysInstanced :
    mode:gl_enum Js.t
    -> first:gl_int Js.t
    -> count:gl_sizei Js.t
    -> instanceCount:gl_sizei Js.t
    -> unit Js.meth

  method drawBuffers : buffers:gl_enum Js.t Js.js_array Js.t -> unit Js.meth

  method drawElements :
    mode:gl_enum Js.t
    -> count:gl_sizei Js.t
    -> type_:gl_enum Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method drawElementsInstanced :
    mode:gl_enum Js.t
    -> count:gl_sizei Js.t
    -> type_:gl_enum Js.t
    -> offset:gl_intptr Js.t
    -> instanceCount:gl_sizei Js.t
    -> unit Js.meth

  method drawRangeElements :
    mode:gl_enum Js.t
    -> start:gl_uint Js.t
    -> end_:gl_uint Js.t
    -> count:gl_sizei Js.t
    -> type_:gl_enum Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method enable : cap:gl_enum Js.t -> unit Js.meth
  method enableVertexAttribArray : index:gl_uint Js.t -> unit Js.meth
  method endQuery : target:gl_enum Js.t -> unit Js.meth
  method endTransformFeedback : unit Js.meth

  method fenceSync :
    condition:gl_enum Js.t
    -> flags:gl_bitfield Js.t
    -> (* unresolved WebGLSync *) untranslated Js.opt Js.meth

  method finish : unit Js.meth
  method flush : unit Js.meth

  method framebufferRenderbuffer :
    target:gl_enum Js.t
    -> attachment:gl_enum Js.t
    -> renderbuffertarget:gl_enum Js.t
    -> renderbuffer:(* unresolved WebGLRenderbuffer *) untranslated Js.opt
    -> unit Js.meth

  method framebufferTexture2D :
    target:gl_enum Js.t
    -> attachment:gl_enum Js.t
    -> textarget:gl_enum Js.t
    -> texture:(* unresolved WebGLTexture *) untranslated Js.opt
    -> level:gl_int Js.t
    -> unit Js.meth

  method framebufferTextureLayer :
    target:gl_enum Js.t
    -> attachment:gl_enum Js.t
    -> texture:(* unresolved WebGLTexture *) untranslated Js.opt
    -> level:gl_int Js.t
    -> layer:gl_int Js.t
    -> unit Js.meth

  method frontFace : mode:gl_enum Js.t -> unit Js.meth
  method generateMipmap : target:gl_enum Js.t -> unit Js.meth

  method getActiveAttrib :
    program:web_gl_program Js.t
    -> index:gl_uint Js.t
    -> (* unresolved WebGLActiveInfo *) untranslated Js.meth

  method getActiveUniform :
    program:web_gl_program Js.t
    -> index:gl_uint Js.t
    -> (* unresolved WebGLActiveInfo *) untranslated Js.meth

  method getActiveUniformBlockName :
    program:web_gl_program Js.t
    -> uniformBlockIndex:gl_uint Js.t
    -> Js.js_string Js.t Js.opt Js.meth

  method getActiveUniformBlockParameter :
    program:web_gl_program Js.t
    -> uniformBlockIndex:gl_uint Js.t
    -> pname:gl_enum Js.t
    -> Js.Unsafe.any Js.meth

  method getActiveUniforms :
    program:web_gl_program Js.t
    -> uniformIndices:gl_uint Js.t Js.js_array Js.t
    -> pname:gl_enum Js.t
    -> Js.Unsafe.any Js.meth

  method getAttachedShaders :
    program:web_gl_program Js.t -> web_gl_shader Js.t Js.js_array Js.t Js.opt Js.meth

  method getAttribLocation :
    program:web_gl_program Js.t -> name:Js.js_string Js.t -> gl_int Js.t Js.meth

  method getBufferParameter :
    target:gl_enum Js.t -> pname:gl_enum Js.t -> Js.Unsafe.any Js.meth

  method getBufferSubData :
    target:gl_enum Js.t
    -> srcByteOffset:gl_intptr Js.t
    -> dstData:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> dstOffset:gl_intptr Js.t Js.optdef
    -> length:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method getContextAttributes : web_gl_context_attributes Js.t Js.opt Js.meth
  method getError : gl_enum Js.t Js.meth
  method getExtension : name:Js.js_string Js.t -> Js.Unsafe.any Js.opt Js.meth

  method getFragDataLocation :
    program:web_gl_program Js.t -> name:Js.js_string Js.t -> gl_int Js.t Js.meth

  method getFramebufferAttachmentParameter :
    target:gl_enum Js.t
    -> attachment:gl_enum Js.t
    -> pname:gl_enum Js.t
    -> Js.Unsafe.any Js.meth

  method getIndexedParameter :
    target:gl_enum Js.t -> index:gl_uint Js.t -> Js.Unsafe.any Js.meth

  method getInternalformatParameter :
    target:gl_enum Js.t
    -> internalformat:gl_enum Js.t
    -> pname:gl_enum Js.t
    -> Js.Unsafe.any Js.meth

  method getParameter : pname:gl_enum Js.t -> Js.Unsafe.any Js.meth

  method getProgramInfoLog :
    program:web_gl_program Js.t -> Js.js_string Js.t Js.opt Js.meth

  method getProgramParameter :
    program:web_gl_program Js.t -> pname:gl_enum Js.t -> Js.Unsafe.any Js.meth

  method getQuery : target:gl_enum Js.t -> pname:gl_enum Js.t -> Js.Unsafe.any Js.meth

  method getQueryParameter :
    query:(* unresolved WebGLQuery *) untranslated
    -> pname:gl_enum Js.t
    -> Js.Unsafe.any Js.meth

  method getRenderbufferParameter :
    target:gl_enum Js.t -> pname:gl_enum Js.t -> Js.Unsafe.any Js.meth

  method getSamplerParameter :
    sampler:(* unresolved WebGLSampler *) untranslated
    -> pname:gl_enum Js.t
    -> Js.Unsafe.any Js.meth

  method getShaderInfoLog : shader:web_gl_shader Js.t -> Js.js_string Js.t Js.opt Js.meth

  method getShaderParameter :
    shader:web_gl_shader Js.t -> pname:gl_enum Js.t -> Js.Unsafe.any Js.meth

  method getShaderPrecisionFormat :
    shadertype:gl_enum Js.t
    -> precisiontype:gl_enum Js.t
    -> (* unresolved WebGLShaderPrecisionFormat *) untranslated Js.meth

  method getShaderSource : shader:web_gl_shader Js.t -> Js.js_string Js.t Js.opt Js.meth
  method getSupportedExtensions : Js.js_string Js.t Js.js_array Js.t Js.opt Js.meth

  method getSyncParameter :
    sync:(* unresolved WebGLSync *) untranslated
    -> pname:gl_enum Js.t
    -> Js.Unsafe.any Js.meth

  method getTexParameter :
    target:gl_enum Js.t -> pname:gl_enum Js.t -> Js.Unsafe.any Js.meth

  method getTransformFeedbackVarying :
    program:web_gl_program Js.t
    -> index:gl_uint Js.t
    -> (* unresolved WebGLActiveInfo *) untranslated Js.opt Js.meth

  method getUniform :
    program:web_gl_program Js.t
    -> location:web_gl_uniform_location Js.t
    -> Js.Unsafe.any Js.meth

  method getUniformBlockIndex :
    program:web_gl_program Js.t
    -> uniformBlockName:Js.js_string Js.t
    -> gl_uint Js.t Js.meth

  method getUniformIndices :
    program:web_gl_program Js.t
    -> uniformNames:Js.js_string Js.t Js.js_array Js.t
    -> gl_uint Js.t Js.js_array Js.t Js.opt Js.meth

  method getUniformLocation :
    program:web_gl_program Js.t
    -> name:Js.js_string Js.t
    -> web_gl_uniform_location Js.t Js.meth

  method getVertexAttrib :
    index:gl_uint Js.t -> pname:gl_enum Js.t -> Js.Unsafe.any Js.meth

  method getVertexAttribOffset :
    index:gl_uint Js.t -> pname:gl_enum Js.t -> gl_intptr Js.t Js.meth

  method hint : target:gl_enum Js.t -> mode:gl_enum Js.t -> unit Js.meth

  method invalidateFramebuffer :
    target:gl_enum Js.t -> attachments:gl_enum Js.t Js.js_array Js.t -> unit Js.meth

  method invalidateSubFramebuffer :
    target:gl_enum Js.t
    -> attachments:gl_enum Js.t Js.js_array Js.t
    -> x:gl_int Js.t
    -> y:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> unit Js.meth

  method isBuffer : buffer:web_gl_buffer Js.t Js.opt -> gl_boolean Js.t Js.meth
  method isContextLost : gl_boolean Js.t Js.meth
  method isEnabled : cap:gl_enum Js.t -> gl_boolean Js.t Js.meth

  method isFramebuffer :
    framebuffer:(* unresolved WebGLFramebuffer *) untranslated Js.opt
    -> gl_boolean Js.t Js.meth

  method isProgram : program:web_gl_program Js.t Js.opt -> gl_boolean Js.t Js.meth

  method isQuery :
    query:(* unresolved WebGLQuery *) untranslated Js.opt -> gl_boolean Js.t Js.meth

  method isRenderbuffer :
    renderbuffer:(* unresolved WebGLRenderbuffer *) untranslated Js.opt
    -> gl_boolean Js.t Js.meth

  method isSampler :
    sampler:(* unresolved WebGLSampler *) untranslated Js.opt -> gl_boolean Js.t Js.meth

  method isShader : shader:web_gl_shader Js.t Js.opt -> gl_boolean Js.t Js.meth

  method isSync :
    sync:(* unresolved WebGLSync *) untranslated Js.opt -> gl_boolean Js.t Js.meth

  method isTexture :
    texture:(* unresolved WebGLTexture *) untranslated Js.opt -> gl_boolean Js.t Js.meth

  method isTransformFeedback :
    feedback:(* unresolved WebGLTransformFeedback *) untranslated Js.opt
    -> gl_boolean Js.t Js.meth

  method isVertexArray :
    vertexArray:(* unresolved WebGLVertexArrayObject *) untranslated Js.opt
    -> gl_boolean Js.t Js.meth

  method lineWidth : width:gl_float Js.t -> unit Js.meth
  method linkProgram : program:web_gl_program Js.t -> unit Js.meth
  method pauseTransformFeedback : unit Js.meth
  method pixelStorei : pname:gl_enum Js.t -> param:gl_int Js.t -> unit Js.meth
  method polygonOffset : factor:gl_float Js.t -> units:gl_float Js.t -> unit Js.meth
  method readBuffer : mode:gl_enum Js.t -> unit Js.meth

  method readPixels :
    x:gl_int Js.t
    -> y:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method readPixels_1 :
    x:gl_int Js.t
    -> y:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> pixels:Js_of_ocaml.Typed_array.arrayBufferView Js.t Js.opt
    -> unit Js.meth

  method readPixels_2 :
    x:gl_int Js.t
    -> y:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> dstData:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method renderbufferStorage :
    target:gl_enum Js.t
    -> internalformat:gl_enum Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> unit Js.meth

  method renderbufferStorageMultisample :
    target:gl_enum Js.t
    -> samples:gl_sizei Js.t
    -> internalformat:gl_enum Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> unit Js.meth

  method resumeTransformFeedback : unit Js.meth
  method sampleCoverage : value:gl_clampf Js.t -> invert:gl_boolean Js.t -> unit Js.meth

  method samplerParameterf :
    sampler:(* unresolved WebGLSampler *) untranslated
    -> pname:gl_enum Js.t
    -> param:gl_float Js.t
    -> unit Js.meth

  method samplerParameteri :
    sampler:(* unresolved WebGLSampler *) untranslated
    -> pname:gl_enum Js.t
    -> param:gl_int Js.t
    -> unit Js.meth

  method scissor :
    x:gl_int Js.t
    -> y:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> unit Js.meth

  method shaderSource :
    shader:web_gl_shader Js.t -> string:Js.js_string Js.t -> unit Js.meth

  method stencilFunc :
    func:gl_enum Js.t -> ref:gl_int Js.t -> mask:gl_uint Js.t -> unit Js.meth

  method stencilFuncSeparate :
    face:gl_enum Js.t
    -> func:gl_enum Js.t
    -> ref:gl_int Js.t
    -> mask:gl_uint Js.t
    -> unit Js.meth

  method stencilMask : mask:gl_uint Js.t -> unit Js.meth
  method stencilMaskSeparate : face:gl_enum Js.t -> mask:gl_uint Js.t -> unit Js.meth

  method stencilOp :
    fail:gl_enum Js.t -> zfail:gl_enum Js.t -> zpass:gl_enum Js.t -> unit Js.meth

  method stencilOpSeparate :
    face:gl_enum Js.t
    -> fail:gl_enum Js.t
    -> zfail:gl_enum Js.t
    -> zpass:gl_enum Js.t
    -> unit Js.meth

  method texImage2D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> canvas:html_canvas_element Js.t
    -> unit Js.meth

  method texImage2D_1 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> image:html_image_element Js.t
    -> unit Js.meth

  method texImage2D_2 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> video:html_video_element Js.t
    -> unit Js.meth

  method texImage2D_3 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> bitmap:image_bitmap Js.t
    -> unit Js.meth

  method texImage2D_4 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> pixels:image_data Js.t
    -> unit Js.meth

  method texImage2D_5 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> offscreenCanvas:offscreen_canvas Js.t
    -> unit Js.meth

  method texImage2D_6 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> frame:video_frame Js.t
    -> unit Js.meth

  method texImage2D_7 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method texImage2D_8 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> canvas:html_canvas_element Js.t
    -> unit Js.meth

  method texImage2D_9 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> image:html_image_element Js.t
    -> unit Js.meth

  method texImage2D_10 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> video:html_video_element Js.t
    -> unit Js.meth

  method texImage2D_11 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> bitmap:image_bitmap Js.t
    -> unit Js.meth

  method texImage2D_12 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> data:image_data Js.t
    -> unit Js.meth

  method texImage2D_13 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> offscreenCanvas:offscreen_canvas Js.t
    -> unit Js.meth

  method texImage2D_14 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> frame:video_frame Js.t
    -> unit Js.meth

  method texImage2D_15 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> pixels:Js_of_ocaml.Typed_array.arrayBufferView Js.t Js.opt
    -> unit Js.meth

  method texImage2D_16 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> srcData:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> srcOffset:gl_intptr Js.t
    -> unit Js.meth

  method texImage3D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method texImage3D_1 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> canvas:html_canvas_element Js.t
    -> unit Js.meth

  method texImage3D_2 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> image:html_image_element Js.t
    -> unit Js.meth

  method texImage3D_3 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> video:html_video_element Js.t
    -> unit Js.meth

  method texImage3D_4 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> bitmap:image_bitmap Js.t
    -> unit Js.meth

  method texImage3D_5 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> data:image_data Js.t
    -> unit Js.meth

  method texImage3D_6 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> offscreenCanvas:offscreen_canvas Js.t
    -> unit Js.meth

  method texImage3D_7 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> frame:video_frame Js.t
    -> unit Js.meth

  method texImage3D_8 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> pixels:Js_of_ocaml.Typed_array.arrayBufferView Js.t Js.opt
    -> unit Js.meth

  method texImage3D_9 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> pixels:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> srcOffset:gl_uint Js.t
    -> unit Js.meth

  method texParameterf :
    target:gl_enum Js.t -> pname:gl_enum Js.t -> param:gl_float Js.t -> unit Js.meth

  method texParameteri :
    target:gl_enum Js.t -> pname:gl_enum Js.t -> param:gl_int Js.t -> unit Js.meth

  method texStorage2D :
    target:gl_enum Js.t
    -> levels:gl_sizei Js.t
    -> internalformat:gl_enum Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> unit Js.meth

  method texStorage3D :
    target:gl_enum Js.t
    -> levels:gl_sizei Js.t
    -> internalformat:gl_enum Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> unit Js.meth

  method texSubImage2D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> canvas:html_canvas_element Js.t
    -> unit Js.meth

  method texSubImage2D_1 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> image:html_image_element Js.t
    -> unit Js.meth

  method texSubImage2D_2 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> video:html_video_element Js.t
    -> unit Js.meth

  method texSubImage2D_3 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> bitmap:image_bitmap Js.t
    -> unit Js.meth

  method texSubImage2D_4 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> pixels:image_data Js.t
    -> unit Js.meth

  method texSubImage2D_5 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> offscreenCanvas:offscreen_canvas Js.t
    -> unit Js.meth

  method texSubImage2D_6 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> frame:video_frame Js.t
    -> unit Js.meth

  method texSubImage2D_7 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method texSubImage2D_8 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> canvas:html_canvas_element Js.t
    -> unit Js.meth

  method texSubImage2D_9 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> image:html_image_element Js.t
    -> unit Js.meth

  method texSubImage2D_10 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> video:html_video_element Js.t
    -> unit Js.meth

  method texSubImage2D_11 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> bitmap:image_bitmap Js.t
    -> unit Js.meth

  method texSubImage2D_12 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> data:image_data Js.t
    -> unit Js.meth

  method texSubImage2D_13 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> offscreenCanvas:offscreen_canvas Js.t
    -> unit Js.meth

  method texSubImage2D_14 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> frame:video_frame Js.t
    -> unit Js.meth

  method texSubImage2D_15 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> pixels:Js_of_ocaml.Typed_array.arrayBufferView Js.t Js.opt
    -> unit Js.meth

  method texSubImage2D_16 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> srcData:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> srcOffset:gl_intptr Js.t
    -> unit Js.meth

  method texSubImage3D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> zoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method texSubImage3D_1 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> zoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> canvas:html_canvas_element Js.t
    -> unit Js.meth

  method texSubImage3D_2 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> zoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> image:html_image_element Js.t
    -> unit Js.meth

  method texSubImage3D_3 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> zoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> video:html_video_element Js.t
    -> unit Js.meth

  method texSubImage3D_4 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> zoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> bitmap:image_bitmap Js.t
    -> unit Js.meth

  method texSubImage3D_5 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> zoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> data:image_data Js.t
    -> unit Js.meth

  method texSubImage3D_6 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> zoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> offscreenCanvas:offscreen_canvas Js.t
    -> unit Js.meth

  method texSubImage3D_7 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> zoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> frame:video_frame Js.t
    -> unit Js.meth

  method texSubImage3D_8 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> zoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> depth:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> pixels:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method transformFeedbackVaryings :
    program:web_gl_program Js.t
    -> varyings:Js.js_string Js.t Js.js_array Js.t
    -> bufferMode:gl_enum Js.t
    -> unit Js.meth

  method uniform1f :
    location:web_gl_uniform_location Js.t Js.opt -> x:gl_float Js.t -> unit Js.meth

  method uniform1fv :
    location:web_gl_uniform_location Js.t Js.opt -> v:float32_list Js.t -> unit Js.meth

  method uniform1fv_1 :
    location:web_gl_uniform_location Js.t Js.opt
    -> v:float32_list Js.t
    -> srcOffset:gl_uint Js.t
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniform1i :
    location:web_gl_uniform_location Js.t Js.opt -> x:gl_int Js.t -> unit Js.meth

  method uniform1iv :
    location:web_gl_uniform_location Js.t Js.opt -> v:int32_list Js.t -> unit Js.meth

  method uniform1iv_1 :
    location:web_gl_uniform_location Js.t Js.opt
    -> v:int32_list Js.t
    -> srcOffset:gl_uint Js.t
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniform1ui :
    location:web_gl_uniform_location Js.t Js.opt -> v0:gl_uint Js.t -> unit Js.meth

  method uniform1uiv :
    location:web_gl_uniform_location Js.t Js.opt
    -> v:uint32_list Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniform2f :
    location:web_gl_uniform_location Js.t Js.opt
    -> x:gl_float Js.t
    -> y:gl_float Js.t
    -> unit Js.meth

  method uniform2fv :
    location:web_gl_uniform_location Js.t Js.opt -> v:float32_list Js.t -> unit Js.meth

  method uniform2fv_1 :
    location:web_gl_uniform_location Js.t Js.opt
    -> v:float32_list Js.t
    -> srcOffset:gl_uint Js.t
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniform2i :
    location:web_gl_uniform_location Js.t Js.opt
    -> x:gl_int Js.t
    -> y:gl_int Js.t
    -> unit Js.meth

  method uniform2iv :
    location:web_gl_uniform_location Js.t Js.opt -> v:int32_list Js.t -> unit Js.meth

  method uniform2iv_1 :
    location:web_gl_uniform_location Js.t Js.opt
    -> v:int32_list Js.t
    -> srcOffset:gl_uint Js.t
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniform2ui :
    location:web_gl_uniform_location Js.t Js.opt
    -> v0:gl_uint Js.t
    -> v1:gl_uint Js.t
    -> unit Js.meth

  method uniform2uiv :
    location:web_gl_uniform_location Js.t Js.opt
    -> v:uint32_list Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniform3f :
    location:web_gl_uniform_location Js.t Js.opt
    -> x:gl_float Js.t
    -> y:gl_float Js.t
    -> z:gl_float Js.t
    -> unit Js.meth

  method uniform3fv :
    location:web_gl_uniform_location Js.t Js.opt -> v:float32_list Js.t -> unit Js.meth

  method uniform3fv_1 :
    location:web_gl_uniform_location Js.t Js.opt
    -> v:float32_list Js.t
    -> srcOffset:gl_uint Js.t
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniform3i :
    location:web_gl_uniform_location Js.t Js.opt
    -> x:gl_int Js.t
    -> y:gl_int Js.t
    -> z:gl_int Js.t
    -> unit Js.meth

  method uniform3iv :
    location:web_gl_uniform_location Js.t Js.opt -> v:int32_list Js.t -> unit Js.meth

  method uniform3iv_1 :
    location:web_gl_uniform_location Js.t Js.opt
    -> v:int32_list Js.t
    -> srcOffset:gl_uint Js.t
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniform3ui :
    location:web_gl_uniform_location Js.t Js.opt
    -> v0:gl_uint Js.t
    -> v1:gl_uint Js.t
    -> v2:gl_uint Js.t
    -> unit Js.meth

  method uniform3uiv :
    location:web_gl_uniform_location Js.t Js.opt
    -> v:uint32_list Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniform4f :
    location:web_gl_uniform_location Js.t Js.opt
    -> x:gl_float Js.t
    -> y:gl_float Js.t
    -> z:gl_float Js.t
    -> w:gl_float Js.t
    -> unit Js.meth

  method uniform4fv :
    location:web_gl_uniform_location Js.t Js.opt -> v:float32_list Js.t -> unit Js.meth

  method uniform4fv_1 :
    location:web_gl_uniform_location Js.t Js.opt
    -> v:float32_list Js.t
    -> srcOffset:gl_uint Js.t
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniform4i :
    location:web_gl_uniform_location Js.t Js.opt
    -> x:gl_int Js.t
    -> y:gl_int Js.t
    -> z:gl_int Js.t
    -> w:gl_int Js.t
    -> unit Js.meth

  method uniform4iv :
    location:web_gl_uniform_location Js.t Js.opt -> v:int32_list Js.t -> unit Js.meth

  method uniform4iv_1 :
    location:web_gl_uniform_location Js.t Js.opt
    -> v:int32_list Js.t
    -> srcOffset:gl_uint Js.t
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniform4ui :
    location:web_gl_uniform_location Js.t Js.opt
    -> v0:gl_uint Js.t
    -> v1:gl_uint Js.t
    -> v2:gl_uint Js.t
    -> v3:gl_uint Js.t
    -> unit Js.meth

  method uniform4uiv :
    location:web_gl_uniform_location Js.t Js.opt
    -> v:uint32_list Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniformBlockBinding :
    program:web_gl_program Js.t
    -> uniformBlockIndex:gl_uint Js.t
    -> uniformBlockBinding:gl_uint Js.t
    -> unit Js.meth

  method uniformMatrix2fv :
    location:web_gl_uniform_location Js.t Js.opt
    -> transpose:gl_boolean Js.t
    -> array:float32_list Js.t
    -> unit Js.meth

  method uniformMatrix2fv_1 :
    location:web_gl_uniform_location Js.t Js.opt
    -> transpose:gl_boolean Js.t
    -> array:float32_list Js.t
    -> srcOffset:gl_uint Js.t
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniformMatrix2x3fv :
    location:web_gl_uniform_location Js.t Js.opt
    -> transpose:gl_boolean Js.t
    -> value:float32_list Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniformMatrix2x4fv :
    location:web_gl_uniform_location Js.t Js.opt
    -> transpose:gl_boolean Js.t
    -> value:float32_list Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniformMatrix3fv :
    location:web_gl_uniform_location Js.t Js.opt
    -> transpose:gl_boolean Js.t
    -> array:float32_list Js.t
    -> unit Js.meth

  method uniformMatrix3fv_1 :
    location:web_gl_uniform_location Js.t Js.opt
    -> transpose:gl_boolean Js.t
    -> array:float32_list Js.t
    -> srcOffset:gl_uint Js.t
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniformMatrix3x2fv :
    location:web_gl_uniform_location Js.t Js.opt
    -> transpose:gl_boolean Js.t
    -> value:float32_list Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniformMatrix3x4fv :
    location:web_gl_uniform_location Js.t Js.opt
    -> transpose:gl_boolean Js.t
    -> value:float32_list Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniformMatrix4fv :
    location:web_gl_uniform_location Js.t Js.opt
    -> transpose:gl_boolean Js.t
    -> array:float32_list Js.t
    -> unit Js.meth

  method uniformMatrix4fv_1 :
    location:web_gl_uniform_location Js.t Js.opt
    -> transpose:gl_boolean Js.t
    -> array:float32_list Js.t
    -> srcOffset:gl_uint Js.t
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniformMatrix4x2fv :
    location:web_gl_uniform_location Js.t Js.opt
    -> transpose:gl_boolean Js.t
    -> value:float32_list Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method uniformMatrix4x3fv :
    location:web_gl_uniform_location Js.t Js.opt
    -> transpose:gl_boolean Js.t
    -> value:float32_list Js.t
    -> srcOffset:gl_uint Js.t Js.optdef
    -> srcLength:gl_uint Js.t Js.optdef
    -> unit Js.meth

  method useProgram : program:web_gl_program Js.t Js.opt -> unit Js.meth
  method validateProgram : program:web_gl_program Js.t -> unit Js.meth
  method vertexAttrib1f : indx:gl_uint Js.t -> x:gl_float Js.t -> unit Js.meth
  method vertexAttrib1fv : indx:gl_uint Js.t -> values:float32_list Js.t -> unit Js.meth

  method vertexAttrib2f :
    indx:gl_uint Js.t -> x:gl_float Js.t -> y:gl_float Js.t -> unit Js.meth

  method vertexAttrib2fv : indx:gl_uint Js.t -> values:float32_list Js.t -> unit Js.meth

  method vertexAttrib3f :
    indx:gl_uint Js.t
    -> x:gl_float Js.t
    -> y:gl_float Js.t
    -> z:gl_float Js.t
    -> unit Js.meth

  method vertexAttrib3fv : indx:gl_uint Js.t -> values:float32_list Js.t -> unit Js.meth

  method vertexAttrib4f :
    indx:gl_uint Js.t
    -> x:gl_float Js.t
    -> y:gl_float Js.t
    -> z:gl_float Js.t
    -> w:gl_float Js.t
    -> unit Js.meth

  method vertexAttrib4fv : indx:gl_uint Js.t -> values:float32_list Js.t -> unit Js.meth
  method vertexAttribDivisor : index:gl_uint Js.t -> divisor:gl_uint Js.t -> unit Js.meth

  method vertexAttribI4i :
    index:gl_uint Js.t
    -> x:gl_int Js.t
    -> y:gl_int Js.t
    -> z:gl_int Js.t
    -> w:gl_int Js.t
    -> unit Js.meth

  method vertexAttribI4iv : index:gl_uint Js.t -> v:int32_list Js.t -> unit Js.meth

  method vertexAttribI4ui :
    index:gl_uint Js.t
    -> x:gl_uint Js.t
    -> y:gl_uint Js.t
    -> z:gl_uint Js.t
    -> w:gl_uint Js.t
    -> unit Js.meth

  method vertexAttribI4uiv : index:gl_uint Js.t -> v:uint32_list Js.t -> unit Js.meth

  method vertexAttribIPointer :
    index:gl_uint Js.t
    -> size:gl_int Js.t
    -> type_:gl_enum Js.t
    -> stride:gl_sizei Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method vertexAttribPointer :
    indx:gl_uint Js.t
    -> size:gl_int Js.t
    -> type_:gl_enum Js.t
    -> normalized:gl_boolean Js.t
    -> stride:gl_sizei Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method viewport :
    x:gl_int Js.t
    -> y:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> unit Js.meth

  method waitSync :
    sync:(* unresolved WebGLSync *) untranslated
    -> flags:gl_bitfield Js.t
    -> timeout:gl_int64 Js.t
    -> unit Js.meth
end

(* see {!Browser.Web_gl_object} for module definition *)
and web_gl_object = object end

(* see {!Browser.Web_gl_buffer} for module definition *)
and web_gl_buffer = object
  inherit web_gl_object
end

(* see {!Browser.Web_gl_program} for module definition *)
and web_gl_program = object
  inherit web_gl_object
end

(* see {!Browser.Web_gl_rendering_context} for module definition *)
and web_gl_rendering_context = object
  method canvas : html_canvas_element_or_offscreen_canvas Js.t Js.readonly_prop
  method drawingBufferColorSpace : predefined_color_space Js.prop
  method drawingBufferHeight : gl_sizei Js.t Js.readonly_prop
  method drawingBufferWidth : gl_sizei Js.t Js.readonly_prop
  method unpackColorSpace : predefined_color_space Js.prop
  method activeTexture : texture:gl_enum Js.t -> unit Js.meth

  method attachShader :
    program:web_gl_program Js.t -> shader:web_gl_shader Js.t -> unit Js.meth

  method bindAttribLocation :
    program:web_gl_program Js.t
    -> index:gl_uint Js.t
    -> name:Js.js_string Js.t
    -> unit Js.meth

  method bindBuffer :
    target:gl_enum Js.t -> buffer:web_gl_buffer Js.t Js.opt -> unit Js.meth

  method bindFramebuffer :
    target:gl_enum Js.t
    -> framebuffer:(* unresolved WebGLFramebuffer *) untranslated Js.opt
    -> unit Js.meth

  method bindRenderbuffer :
    target:gl_enum Js.t
    -> renderbuffer:(* unresolved WebGLRenderbuffer *) untranslated Js.opt
    -> unit Js.meth

  method bindTexture :
    target:gl_enum Js.t
    -> texture:(* unresolved WebGLTexture *) untranslated Js.opt
    -> unit Js.meth

  method blendColor :
    red:gl_clampf Js.t
    -> green:gl_clampf Js.t
    -> blue:gl_clampf Js.t
    -> alpha:gl_clampf Js.t
    -> unit Js.meth

  method blendEquation : mode:gl_enum Js.t -> unit Js.meth

  method blendEquationSeparate :
    modeRGB:gl_enum Js.t -> modeAlpha:gl_enum Js.t -> unit Js.meth

  method blendFunc : sfactor:gl_enum Js.t -> dfactor:gl_enum Js.t -> unit Js.meth

  method blendFuncSeparate :
    srcRGB:gl_enum Js.t
    -> dstRGB:gl_enum Js.t
    -> srcAlpha:gl_enum Js.t
    -> dstAlpha:gl_enum Js.t
    -> unit Js.meth

  method bufferData :
    target:gl_enum Js.t -> size:gl_sizeiptr Js.t -> usage:gl_enum Js.t -> unit Js.meth

  method bufferData_1 :
    target:gl_enum Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBuffer Js.t Js.opt
    -> usage:gl_enum Js.t
    -> unit Js.meth

  method bufferData_2 :
    target:gl_enum Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> usage:gl_enum Js.t
    -> unit Js.meth

  method bufferSubData :
    target:gl_enum Js.t
    -> offset:gl_intptr Js.t
    -> data:buffer_source Js.t
    -> unit Js.meth

  method checkFramebufferStatus : target:gl_enum Js.t -> gl_enum Js.t Js.meth
  method clear : mask:gl_bitfield Js.t -> unit Js.meth

  method clearColor :
    red:gl_clampf Js.t
    -> green:gl_clampf Js.t
    -> blue:gl_clampf Js.t
    -> alpha:gl_clampf Js.t
    -> unit Js.meth

  method clearDepth : depth:gl_clampf Js.t -> unit Js.meth
  method clearStencil : s:gl_int Js.t -> unit Js.meth

  method colorMask :
    red:gl_boolean Js.t
    -> green:gl_boolean Js.t
    -> blue:gl_boolean Js.t
    -> alpha:gl_boolean Js.t
    -> unit Js.meth

  method compileShader : shader:web_gl_shader Js.t -> unit Js.meth

  method compressedTexImage2D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_enum Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> unit Js.meth

  method compressedTexSubImage2D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> data:Js_of_ocaml.Typed_array.arrayBufferView Js.t
    -> unit Js.meth

  method copyTexImage2D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_enum Js.t
    -> x:gl_int Js.t
    -> y:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> unit Js.meth

  method copyTexSubImage2D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> x:gl_int Js.t
    -> y:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> unit Js.meth

  method createBuffer : web_gl_buffer Js.t Js.meth
  method createFramebuffer : (* unresolved WebGLFramebuffer *) untranslated Js.meth
  method createProgram : web_gl_program Js.t Js.meth
  method createRenderbuffer : (* unresolved WebGLRenderbuffer *) untranslated Js.meth
  method createShader : type_:gl_enum Js.t -> web_gl_shader Js.t Js.meth
  method createTexture : (* unresolved WebGLTexture *) untranslated Js.meth
  method cullFace : mode:gl_enum Js.t -> unit Js.meth
  method deleteBuffer : buffer:web_gl_buffer Js.t Js.opt -> unit Js.meth

  method deleteFramebuffer :
    framebuffer:(* unresolved WebGLFramebuffer *) untranslated Js.opt -> unit Js.meth

  method deleteProgram : program:web_gl_program Js.t Js.opt -> unit Js.meth

  method deleteRenderbuffer :
    renderbuffer:(* unresolved WebGLRenderbuffer *) untranslated Js.opt -> unit Js.meth

  method deleteShader : shader:web_gl_shader Js.t Js.opt -> unit Js.meth

  method deleteTexture :
    texture:(* unresolved WebGLTexture *) untranslated Js.opt -> unit Js.meth

  method depthFunc : func:gl_enum Js.t -> unit Js.meth
  method depthMask : flag:gl_boolean Js.t -> unit Js.meth
  method depthRange : zNear:gl_clampf Js.t -> zFar:gl_clampf Js.t -> unit Js.meth

  method detachShader :
    program:web_gl_program Js.t -> shader:web_gl_shader Js.t -> unit Js.meth

  method disable : cap:gl_enum Js.t -> unit Js.meth
  method disableVertexAttribArray : index:gl_uint Js.t -> unit Js.meth

  method drawArrays :
    mode:gl_enum Js.t -> first:gl_int Js.t -> count:gl_sizei Js.t -> unit Js.meth

  method drawElements :
    mode:gl_enum Js.t
    -> count:gl_sizei Js.t
    -> type_:gl_enum Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method enable : cap:gl_enum Js.t -> unit Js.meth
  method enableVertexAttribArray : index:gl_uint Js.t -> unit Js.meth
  method finish : unit Js.meth
  method flush : unit Js.meth

  method framebufferRenderbuffer :
    target:gl_enum Js.t
    -> attachment:gl_enum Js.t
    -> renderbuffertarget:gl_enum Js.t
    -> renderbuffer:(* unresolved WebGLRenderbuffer *) untranslated Js.opt
    -> unit Js.meth

  method framebufferTexture2D :
    target:gl_enum Js.t
    -> attachment:gl_enum Js.t
    -> textarget:gl_enum Js.t
    -> texture:(* unresolved WebGLTexture *) untranslated Js.opt
    -> level:gl_int Js.t
    -> unit Js.meth

  method frontFace : mode:gl_enum Js.t -> unit Js.meth
  method generateMipmap : target:gl_enum Js.t -> unit Js.meth

  method getActiveAttrib :
    program:web_gl_program Js.t
    -> index:gl_uint Js.t
    -> (* unresolved WebGLActiveInfo *) untranslated Js.meth

  method getActiveUniform :
    program:web_gl_program Js.t
    -> index:gl_uint Js.t
    -> (* unresolved WebGLActiveInfo *) untranslated Js.meth

  method getAttachedShaders :
    program:web_gl_program Js.t -> web_gl_shader Js.t Js.js_array Js.t Js.opt Js.meth

  method getAttribLocation :
    program:web_gl_program Js.t -> name:Js.js_string Js.t -> gl_int Js.t Js.meth

  method getBufferParameter :
    target:gl_enum Js.t -> pname:gl_enum Js.t -> Js.Unsafe.any Js.meth

  method getContextAttributes : web_gl_context_attributes Js.t Js.opt Js.meth
  method getError : gl_enum Js.t Js.meth
  method getExtension : name:Js.js_string Js.t -> Js.Unsafe.any Js.opt Js.meth

  method getFramebufferAttachmentParameter :
    target:gl_enum Js.t
    -> attachment:gl_enum Js.t
    -> pname:gl_enum Js.t
    -> Js.Unsafe.any Js.meth

  method getParameter : pname:gl_enum Js.t -> Js.Unsafe.any Js.meth

  method getProgramInfoLog :
    program:web_gl_program Js.t -> Js.js_string Js.t Js.opt Js.meth

  method getProgramParameter :
    program:web_gl_program Js.t -> pname:gl_enum Js.t -> Js.Unsafe.any Js.meth

  method getRenderbufferParameter :
    target:gl_enum Js.t -> pname:gl_enum Js.t -> Js.Unsafe.any Js.meth

  method getShaderInfoLog : shader:web_gl_shader Js.t -> Js.js_string Js.t Js.opt Js.meth

  method getShaderParameter :
    shader:web_gl_shader Js.t -> pname:gl_enum Js.t -> Js.Unsafe.any Js.meth

  method getShaderPrecisionFormat :
    shadertype:gl_enum Js.t
    -> precisiontype:gl_enum Js.t
    -> (* unresolved WebGLShaderPrecisionFormat *) untranslated Js.meth

  method getShaderSource : shader:web_gl_shader Js.t -> Js.js_string Js.t Js.opt Js.meth
  method getSupportedExtensions : Js.js_string Js.t Js.js_array Js.t Js.opt Js.meth

  method getTexParameter :
    target:gl_enum Js.t -> pname:gl_enum Js.t -> Js.Unsafe.any Js.meth

  method getUniform :
    program:web_gl_program Js.t
    -> location:web_gl_uniform_location Js.t
    -> Js.Unsafe.any Js.meth

  method getUniformLocation :
    program:web_gl_program Js.t
    -> name:Js.js_string Js.t
    -> web_gl_uniform_location Js.t Js.meth

  method getVertexAttrib :
    index:gl_uint Js.t -> pname:gl_enum Js.t -> Js.Unsafe.any Js.meth

  method getVertexAttribOffset :
    index:gl_uint Js.t -> pname:gl_enum Js.t -> gl_intptr Js.t Js.meth

  method hint : target:gl_enum Js.t -> mode:gl_enum Js.t -> unit Js.meth
  method isBuffer : buffer:web_gl_buffer Js.t Js.opt -> gl_boolean Js.t Js.meth
  method isContextLost : gl_boolean Js.t Js.meth
  method isEnabled : cap:gl_enum Js.t -> gl_boolean Js.t Js.meth

  method isFramebuffer :
    framebuffer:(* unresolved WebGLFramebuffer *) untranslated Js.opt
    -> gl_boolean Js.t Js.meth

  method isProgram : program:web_gl_program Js.t Js.opt -> gl_boolean Js.t Js.meth

  method isRenderbuffer :
    renderbuffer:(* unresolved WebGLRenderbuffer *) untranslated Js.opt
    -> gl_boolean Js.t Js.meth

  method isShader : shader:web_gl_shader Js.t Js.opt -> gl_boolean Js.t Js.meth

  method isTexture :
    texture:(* unresolved WebGLTexture *) untranslated Js.opt -> gl_boolean Js.t Js.meth

  method lineWidth : width:gl_float Js.t -> unit Js.meth
  method linkProgram : program:web_gl_program Js.t -> unit Js.meth
  method pixelStorei : pname:gl_enum Js.t -> param:gl_int Js.t -> unit Js.meth
  method polygonOffset : factor:gl_float Js.t -> units:gl_float Js.t -> unit Js.meth

  method readPixels :
    x:gl_int Js.t
    -> y:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> pixels:Js_of_ocaml.Typed_array.arrayBufferView Js.t Js.opt
    -> unit Js.meth

  method renderbufferStorage :
    target:gl_enum Js.t
    -> internalformat:gl_enum Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> unit Js.meth

  method sampleCoverage : value:gl_clampf Js.t -> invert:gl_boolean Js.t -> unit Js.meth

  method scissor :
    x:gl_int Js.t
    -> y:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> unit Js.meth

  method shaderSource :
    shader:web_gl_shader Js.t -> string:Js.js_string Js.t -> unit Js.meth

  method stencilFunc :
    func:gl_enum Js.t -> ref:gl_int Js.t -> mask:gl_uint Js.t -> unit Js.meth

  method stencilFuncSeparate :
    face:gl_enum Js.t
    -> func:gl_enum Js.t
    -> ref:gl_int Js.t
    -> mask:gl_uint Js.t
    -> unit Js.meth

  method stencilMask : mask:gl_uint Js.t -> unit Js.meth
  method stencilMaskSeparate : face:gl_enum Js.t -> mask:gl_uint Js.t -> unit Js.meth

  method stencilOp :
    fail:gl_enum Js.t -> zfail:gl_enum Js.t -> zpass:gl_enum Js.t -> unit Js.meth

  method stencilOpSeparate :
    face:gl_enum Js.t
    -> fail:gl_enum Js.t
    -> zfail:gl_enum Js.t
    -> zpass:gl_enum Js.t
    -> unit Js.meth

  method texImage2D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> canvas:html_canvas_element Js.t
    -> unit Js.meth

  method texImage2D_1 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> image:html_image_element Js.t
    -> unit Js.meth

  method texImage2D_2 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> video:html_video_element Js.t
    -> unit Js.meth

  method texImage2D_3 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> bitmap:image_bitmap Js.t
    -> unit Js.meth

  method texImage2D_4 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> pixels:image_data Js.t
    -> unit Js.meth

  method texImage2D_5 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> offscreenCanvas:offscreen_canvas Js.t
    -> unit Js.meth

  method texImage2D_6 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> frame:video_frame Js.t
    -> unit Js.meth

  method texImage2D_7 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> internalformat:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> border:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> pixels:Js_of_ocaml.Typed_array.arrayBufferView Js.t Js.opt
    -> unit Js.meth

  method texParameterf :
    target:gl_enum Js.t -> pname:gl_enum Js.t -> param:gl_float Js.t -> unit Js.meth

  method texParameteri :
    target:gl_enum Js.t -> pname:gl_enum Js.t -> param:gl_int Js.t -> unit Js.meth

  method texSubImage2D :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> canvas:html_canvas_element Js.t
    -> unit Js.meth

  method texSubImage2D_1 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> image:html_image_element Js.t
    -> unit Js.meth

  method texSubImage2D_2 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> video:html_video_element Js.t
    -> unit Js.meth

  method texSubImage2D_3 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> bitmap:image_bitmap Js.t
    -> unit Js.meth

  method texSubImage2D_4 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> pixels:image_data Js.t
    -> unit Js.meth

  method texSubImage2D_5 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> offscreenCanvas:offscreen_canvas Js.t
    -> unit Js.meth

  method texSubImage2D_6 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> frame:video_frame Js.t
    -> unit Js.meth

  method texSubImage2D_7 :
    target:gl_enum Js.t
    -> level:gl_int Js.t
    -> xoffset:gl_int Js.t
    -> yoffset:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> format:gl_enum Js.t
    -> type_:gl_enum Js.t
    -> pixels:Js_of_ocaml.Typed_array.arrayBufferView Js.t Js.opt
    -> unit Js.meth

  method uniform1f :
    location:web_gl_uniform_location Js.t Js.opt -> x:gl_float Js.t -> unit Js.meth

  method uniform1fv :
    location:web_gl_uniform_location Js.t Js.opt -> v:float32_list Js.t -> unit Js.meth

  method uniform1i :
    location:web_gl_uniform_location Js.t Js.opt -> x:gl_int Js.t -> unit Js.meth

  method uniform1iv :
    location:web_gl_uniform_location Js.t Js.opt -> v:int32_list Js.t -> unit Js.meth

  method uniform2f :
    location:web_gl_uniform_location Js.t Js.opt
    -> x:gl_float Js.t
    -> y:gl_float Js.t
    -> unit Js.meth

  method uniform2fv :
    location:web_gl_uniform_location Js.t Js.opt -> v:float32_list Js.t -> unit Js.meth

  method uniform2i :
    location:web_gl_uniform_location Js.t Js.opt
    -> x:gl_int Js.t
    -> y:gl_int Js.t
    -> unit Js.meth

  method uniform2iv :
    location:web_gl_uniform_location Js.t Js.opt -> v:int32_list Js.t -> unit Js.meth

  method uniform3f :
    location:web_gl_uniform_location Js.t Js.opt
    -> x:gl_float Js.t
    -> y:gl_float Js.t
    -> z:gl_float Js.t
    -> unit Js.meth

  method uniform3fv :
    location:web_gl_uniform_location Js.t Js.opt -> v:float32_list Js.t -> unit Js.meth

  method uniform3i :
    location:web_gl_uniform_location Js.t Js.opt
    -> x:gl_int Js.t
    -> y:gl_int Js.t
    -> z:gl_int Js.t
    -> unit Js.meth

  method uniform3iv :
    location:web_gl_uniform_location Js.t Js.opt -> v:int32_list Js.t -> unit Js.meth

  method uniform4f :
    location:web_gl_uniform_location Js.t Js.opt
    -> x:gl_float Js.t
    -> y:gl_float Js.t
    -> z:gl_float Js.t
    -> w:gl_float Js.t
    -> unit Js.meth

  method uniform4fv :
    location:web_gl_uniform_location Js.t Js.opt -> v:float32_list Js.t -> unit Js.meth

  method uniform4i :
    location:web_gl_uniform_location Js.t Js.opt
    -> x:gl_int Js.t
    -> y:gl_int Js.t
    -> z:gl_int Js.t
    -> w:gl_int Js.t
    -> unit Js.meth

  method uniform4iv :
    location:web_gl_uniform_location Js.t Js.opt -> v:int32_list Js.t -> unit Js.meth

  method uniformMatrix2fv :
    location:web_gl_uniform_location Js.t Js.opt
    -> transpose:gl_boolean Js.t
    -> array:float32_list Js.t
    -> unit Js.meth

  method uniformMatrix3fv :
    location:web_gl_uniform_location Js.t Js.opt
    -> transpose:gl_boolean Js.t
    -> array:float32_list Js.t
    -> unit Js.meth

  method uniformMatrix4fv :
    location:web_gl_uniform_location Js.t Js.opt
    -> transpose:gl_boolean Js.t
    -> array:float32_list Js.t
    -> unit Js.meth

  method useProgram : program:web_gl_program Js.t Js.opt -> unit Js.meth
  method validateProgram : program:web_gl_program Js.t -> unit Js.meth
  method vertexAttrib1f : indx:gl_uint Js.t -> x:gl_float Js.t -> unit Js.meth
  method vertexAttrib1fv : indx:gl_uint Js.t -> values:float32_list Js.t -> unit Js.meth

  method vertexAttrib2f :
    indx:gl_uint Js.t -> x:gl_float Js.t -> y:gl_float Js.t -> unit Js.meth

  method vertexAttrib2fv : indx:gl_uint Js.t -> values:float32_list Js.t -> unit Js.meth

  method vertexAttrib3f :
    indx:gl_uint Js.t
    -> x:gl_float Js.t
    -> y:gl_float Js.t
    -> z:gl_float Js.t
    -> unit Js.meth

  method vertexAttrib3fv : indx:gl_uint Js.t -> values:float32_list Js.t -> unit Js.meth

  method vertexAttrib4f :
    indx:gl_uint Js.t
    -> x:gl_float Js.t
    -> y:gl_float Js.t
    -> z:gl_float Js.t
    -> w:gl_float Js.t
    -> unit Js.meth

  method vertexAttrib4fv : indx:gl_uint Js.t -> values:float32_list Js.t -> unit Js.meth

  method vertexAttribPointer :
    indx:gl_uint Js.t
    -> size:gl_int Js.t
    -> type_:gl_enum Js.t
    -> normalized:gl_boolean Js.t
    -> stride:gl_sizei Js.t
    -> offset:gl_intptr Js.t
    -> unit Js.meth

  method viewport :
    x:gl_int Js.t
    -> y:gl_int Js.t
    -> width:gl_sizei Js.t
    -> height:gl_sizei Js.t
    -> unit Js.meth
end

(* see {!Browser.Web_gl_shader} for module definition *)
and web_gl_shader = object
  inherit web_gl_object
end

(* see {!Browser.Web_gl_uniform_location} for module definition *)
and web_gl_uniform_location = object end

(* see {!Browser.Web_socket} for module definition *)
and web_socket = object
  inherit event_target
  method binaryType : binary_type Js.prop
  method bufferedAmount : Js.number Js.t Js.readonly_prop
  method extensions : Js.js_string Js.t Js.readonly_prop

  method onclose :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onerror :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmessage :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onopen :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method protocol : Js.js_string Js.t Js.readonly_prop
  method readyState : Js.number Js.t Js.readonly_prop
  method url : Js.js_string Js.t Js.readonly_prop

  method close :
    code:Js.number Js.t Js.optdef -> reason:Js.js_string Js.t Js.optdef -> unit Js.meth

  method send : data:blob Js.t -> unit Js.meth
  method send_1 : data:Js_of_ocaml.Typed_array.arrayBufferView Js.t -> unit Js.meth
  method send_2 : data:Js_of_ocaml.Typed_array.arrayBuffer Js.t -> unit Js.meth
  method send_3 : data:Js.js_string Js.t -> unit Js.meth
end

(* see {!Browser.Wheel_event} for module definition *)
and wheel_event = object
  inherit mouse_event
  method deltaMode : Js.number Js.t Js.readonly_prop
  method deltaX : Js.number Js.t Js.readonly_prop
  method deltaY : Js.number Js.t Js.readonly_prop
  method deltaZ : Js.number Js.t Js.readonly_prop
  method wheelDelta : Js.number Js.t Js.readonly_prop
  method wheelDeltaX : Js.number Js.t Js.readonly_prop
  method wheelDeltaY : Js.number Js.t Js.readonly_prop
end

(* see {!Browser.Window_properties} for module definition *)
and window_properties = object
  inherit event_target
end

(* see {!Browser.Window} for module definition *)
and window = object
  inherit window_properties

  (** [caches] is unsafe and is only available in [Secure] contexts. In order to access
      [caches], you must use [ppx_browser]. *)
  method caches :
    ( (* unresolved CacheStorage *)
      untranslated Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method clientInformation : navigator Js.t Js.readonly_prop
  method closed : bool Js.t Js.readonly_prop

  (** [cookieStore] is unsafe and is only available in [Secure] contexts. In order to
      access [cookieStore], you must use [ppx_browser]. *)
  method cookieStore :
    ( (* unresolved CookieStore *)
      untranslated Js.readonly_prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method crossOriginIsolated : bool Js.t Js.readonly_prop
  method crypto : crypto Js.t Js.readonly_prop

  method customElements :
    (* unresolved CustomElementRegistry *)
    untranslated Js.readonly_prop

  method devicePixelRatio : Js.number Js.t Js.readonly_prop
  method document : document Js.t Js.readonly_prop
  method event : Js.Unsafe.any Js.readonly_prop
  method external_ : (* unresolved External *) untranslated Js.readonly_prop
  method frameElement : element Js.t Js.opt Js.readonly_prop
  method frames : window Js.t Js.readonly_prop
  method history : history Js.t Js.readonly_prop
  method indexedDB : (* unresolved IDBFactory *) untranslated Js.readonly_prop
  method innerHeight : Js.number Js.t Js.readonly_prop
  method innerWidth : Js.number Js.t Js.readonly_prop
  method isSecureContext : bool Js.t Js.readonly_prop
  method length : Js.number Js.t Js.readonly_prop
  method localStorage : storage Js.t Js.readonly_prop
  method location : location Js.t Js.readonly_prop
  method locationbar : (* unresolved BarProp *) untranslated Js.readonly_prop
  method menubar : (* unresolved BarProp *) untranslated Js.readonly_prop
  method name : Js.js_string Js.t Js.prop
  method navigation : navigation Js.t Js.readonly_prop
  method navigator : navigator Js.t Js.readonly_prop
  method offscreenBuffering : bool Js.t Js.readonly_prop

  method onabort :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onafterprint :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onanimationend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onanimationiteration :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onanimationstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onappinstalled :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onauxclick :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforeinput :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforeinstallprompt :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforematch :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforeprint :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforetoggle :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onbeforeunload :
    ('self, event:event Js.t -> Js.js_string Js.t Js.opt) Js.meth_callback Js.opt Js.prop

  method onbeforexrselect :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onblur :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncancel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncanplay :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncanplaythrough :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onclick :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onclose :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontentvisibilityautostatechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontextlost :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontextmenu :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncontextrestored :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oncuechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondblclick :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  (** [ondevicemotion] is unsafe and is only available in [Secure] contexts. In order to
      access [ondevicemotion], you must use [ppx_browser]. *)
  method ondevicemotion :
    ( ( 'self
        , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
        Js.opt
        Js.prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  (** [ondeviceorientation] is unsafe and is only available in [Secure] contexts. In order
      to access [ondeviceorientation], you must use [ppx_browser]. *)
  method ondeviceorientation :
    ( ( 'self
        , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
        Js.opt
        Js.prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  (** [ondeviceorientationabsolute] is unsafe and is only available in [Secure] contexts.
      In order to access [ondeviceorientationabsolute], you must use [ppx_browser]. *)
  method ondeviceorientationabsolute :
    ( ( 'self
        , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
        Js.opt
        Js.prop
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method ondrag :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragenter :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragleave :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragover :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondragstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondrop :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ondurationchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onemptied :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onended :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onerror :
    ( 'self
      , event:event_or_string Js.t
        -> source:Js.js_string Js.t Js.optdef
        -> lineno:Js.number Js.t Js.optdef
        -> colno:Js.number Js.t Js.optdef
        -> error:Js.Unsafe.any Js.optdef
        -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onfocus :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onformdata :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ongotpointercapture :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onhashchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oninput :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method oninvalid :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onkeydown :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onkeypress :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onkeyup :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onlanguagechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onload :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadeddata :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadedmetadata :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onlostpointercapture :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmessage :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmessageerror :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmousedown :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseenter :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseleave :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmousemove :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseout :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseover :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmouseup :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmousewheel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onoffline :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ononline :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpagehide :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpageshow :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpause :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onplay :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onplaying :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointercancel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerdown :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerenter :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerleave :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointermove :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerout :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerover :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerrawupdate :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpointerup :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onpopstate :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onprogress :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onratechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onrejectionhandled :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onreset :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onresize :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onscroll :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsearch :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsecuritypolicyviolation :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onseeked :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onseeking :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onselect :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onselectionchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onselectstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onslotchange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onstalled :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onstorage :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsubmit :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onsuspend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontimeupdate :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontoggle :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitioncancel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitionend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitionrun :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontransitionstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onunhandledrejection :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onunload :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onvolumechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwaiting :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitanimationend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitanimationiteration :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkitanimationstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwebkittransitionend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onwheel :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method opener : Js.Unsafe.any Js.prop
  method origin : Js.js_string Js.t Js.readonly_prop
  method outerHeight : Js.number Js.t Js.readonly_prop
  method outerWidth : Js.number Js.t Js.readonly_prop
  method pageXOffset : Js.number Js.t Js.readonly_prop
  method pageYOffset : Js.number Js.t Js.readonly_prop
  method parent : window Js.t Js.opt Js.readonly_prop
  method performance : performance Js.t Js.readonly_prop
  method personalbar : (* unresolved BarProp *) untranslated Js.readonly_prop
  method scheduler : (* unresolved Scheduler *) untranslated Js.readonly_prop
  method screen : screen Js.t Js.readonly_prop
  method screenLeft : Js.number Js.t Js.readonly_prop
  method screenTop : Js.number Js.t Js.readonly_prop
  method screenX : Js.number Js.t Js.readonly_prop
  method screenY : Js.number Js.t Js.readonly_prop
  method scrollX : Js.number Js.t Js.readonly_prop
  method scrollY : Js.number Js.t Js.readonly_prop
  method scrollbars : (* unresolved BarProp *) untranslated Js.readonly_prop
  method self : window Js.t Js.readonly_prop
  method sessionStorage : storage Js.t Js.readonly_prop
  method status : Js.js_string Js.t Js.prop
  method statusbar : (* unresolved BarProp *) untranslated Js.readonly_prop
  method styleMedia : (* unresolved StyleMedia *) untranslated Js.readonly_prop
  method toolbar : (* unresolved BarProp *) untranslated Js.readonly_prop
  method top : window Js.t Js.opt Js.readonly_prop

  method trustedTypes :
    (* unresolved TrustedTypePolicyFactory *)
    untranslated Js.readonly_prop

  method visualViewport : (* unresolved VisualViewport *) untranslated Js.readonly_prop
  method window : window Js.t Js.readonly_prop
  method alert : unit Js.meth
  method alert_1 : message:Js.js_string Js.t -> unit Js.meth
  method atob : atob:Js.js_string Js.t -> Js.js_string Js.t Js.meth
  method blur : unit Js.meth
  method btoa : btoa:Js.js_string Js.t -> Js.js_string Js.t Js.meth
  method cancelAnimationFrame : handle:Js.number Js.t -> unit Js.meth
  method cancelIdleCallback : handle:Js.number Js.t -> unit Js.meth
  method captureEvents : unit Js.meth
  method clearInterval : handle:Js.number Js.t Js.optdef -> unit Js.meth
  method clearTimeout : handle:Js.number Js.t Js.optdef -> unit Js.meth
  method close : unit Js.meth
  method confirm : message:Js.js_string Js.t Js.optdef -> bool Js.t Js.meth

  method createImageBitmap :
    imageBitmap:image_bitmap_source Js.t
    -> options:image_bitmap_options Js.t Js.optdef
    -> image_bitmap Js.t js_promise Js.t Js.meth

  method createImageBitmap_1 :
    imageBitmap:image_bitmap_source Js.t
    -> sx:Js.number Js.t
    -> sy:Js.number Js.t
    -> sw:Js.number Js.t
    -> sh:Js.number Js.t
    -> options:image_bitmap_options Js.t Js.optdef
    -> image_bitmap Js.t js_promise Js.t Js.meth

  method fetch :
    input:request_info Js.t
    -> init:request_init Js.t Js.optdef
    -> response Js.t js_promise Js.t Js.meth

  method find :
    string:Js.js_string Js.t Js.optdef
    -> caseSensitive:bool Js.t Js.optdef
    -> backwards:bool Js.t Js.optdef
    -> wrap:bool Js.t Js.optdef
    -> wholeWord:bool Js.t Js.optdef
    -> searchInFrames:bool Js.t Js.optdef
    -> showDialog:bool Js.t Js.optdef
    -> bool Js.t Js.meth

  method focus : unit Js.meth

  method getComputedStyle :
    elt:element Js.t
    -> pseudoElt:Js.js_string Js.t Js.opt Js.optdef
    -> css_style_declaration Js.t Js.meth

  (** [getScreenDetails] is unsafe and is only available in [Secure] contexts. In order to
      call [getScreenDetails], you must use [ppx_browser]. *)
  method getScreenDetails :
    ( (* unresolved ScreenDetails *)
      untranslated js_promise Js.t Js.meth
      , [ `Secure | `Cross_origin_isolated ] )
      Browser_js_types.unsafe

  method getSelection : selection Js.t Js.opt Js.meth
  method matchMedia : query:Js.js_string Js.t -> media_query_list Js.t Js.meth
  method moveBy : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth
  method moveTo : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth

  method open_ :
    url:Js.js_string Js.t Js.optdef
    -> target:Js.js_string Js.t Js.optdef
    -> features:Js.js_string Js.t Js.optdef
    -> window Js.t Js.opt Js.meth

  method postMessage :
    message:Js.Unsafe.any
    -> options:window_post_message_options Js.t Js.optdef
    -> unit Js.meth

  method postMessage_1 :
    message:Js.Unsafe.any
    -> targetOrigin:Js.js_string Js.t
    -> transfer:Js.Unsafe.any Js.js_array Js.t Js.optdef
    -> unit Js.meth

  method print : unit Js.meth

  method prompt :
    message:Js.js_string Js.t Js.optdef
    -> defaultValue:Js.js_string Js.t Js.optdef
    -> Js.js_string Js.t Js.opt Js.meth

  method queueMicrotask : callback:(unit, unit) Js.meth_callback -> unit Js.meth
  method releaseEvents : unit Js.meth
  method reportError : e:Js.Unsafe.any -> unit Js.meth

  method requestAnimationFrame :
    callback:(unit, highResTime:Js.number Js.t -> unit) Js.meth_callback
    -> Js.number Js.t Js.meth

  method requestIdleCallback :
    callback:
      (unit, deadline:(* unresolved IdleDeadline *) untranslated -> unit) Js.meth_callback
    -> options:idle_request_options Js.t Js.optdef
    -> Js.number Js.t Js.meth

  method resizeBy : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth
  method resizeTo : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth
  method scroll : options:scroll_to_options Js.t Js.optdef -> unit Js.meth
  method scroll_1 : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth
  method scrollBy : options:scroll_to_options Js.t Js.optdef -> unit Js.meth
  method scrollBy_1 : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth
  method scrollTo : options:scroll_to_options Js.t Js.optdef -> unit Js.meth
  method scrollTo_1 : x:Js.number Js.t -> y:Js.number Js.t -> unit Js.meth

  method setInterval :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> Js.number Js.t Js.meth

  method setInterval_1 :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setInterval_2 :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setInterval_3 :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> argument2:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setInterval_4 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> Js.number Js.t Js.meth

  method setInterval_5 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setInterval_6 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setInterval_7 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> argument2:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setTimeout :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> Js.number Js.t Js.meth

  method setTimeout_1 :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setTimeout_2 :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setTimeout_3 :
    handler:
      ( unit
        , arguments:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
        Js.meth_callback
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> argument2:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setTimeout_4 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> Js.number Js.t Js.meth

  method setTimeout_5 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setTimeout_6 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method setTimeout_7 :
    handler:script_string Js.t
    -> timeout:Js.number Js.t Js.optdef
    -> argument:Js.Unsafe.any
    -> argument1:Js.Unsafe.any
    -> argument2:Js.Unsafe.any
    -> Js.number Js.t Js.meth

  method stop : unit Js.meth

  method structuredClone :
    value:Js.Unsafe.any
    -> options:structured_serialize_options Js.t Js.optdef
    -> Js.Unsafe.any Js.meth

  method webkitCancelAnimationFrame_deprecated : id:Js.number Js.t -> unit Js.meth

  method webkitRequestAnimationFrame_deprecated :
    callback:(unit, highResTime:Js.number Js.t -> unit) Js.meth_callback
    -> Js.number Js.t Js.meth
end

(* see {!Browser.Worker} for module definition *)
and worker = object
  inherit event_target

  method onerror :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onmessage :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method postMessage :
    message:Js.Unsafe.any -> options:post_message_options Js.t Js.optdef -> unit Js.meth

  method postMessage_1 :
    message:Js.Unsafe.any -> transfer:Js.Unsafe.any Js.js_array Js.t -> unit Js.meth

  method terminate : unit Js.meth
end

(* see {!Browser.Writable_stream} for module definition *)
and writable_stream = object
  method locked : bool Js.t Js.readonly_prop
  method abort : reason:Js.Unsafe.any Js.optdef -> unit js_promise Js.t Js.meth
  method close : unit js_promise Js.t Js.meth
  method getWriter : writable_stream_default_writer Js.t Js.meth
end

(* see {!Browser.Writable_stream_default_writer} for module definition *)
and writable_stream_default_writer = object
  method closed : unit js_promise Js.t Js.readonly_prop
  method desiredSize : Js.Unsafe.any Js.readonly_prop
  method ready : unit js_promise Js.t Js.readonly_prop
  method abort : reason:Js.Unsafe.any Js.optdef -> unit js_promise Js.t Js.meth
  method close : unit js_promise Js.t Js.meth
  method releaseLock : unit Js.meth
  method write : chunk:Js.Unsafe.any Js.optdef -> unit js_promise Js.t Js.meth
end

(* see {!Browser.Xml_http_request_event_target} for module definition *)
and xml_http_request_event_target = object
  inherit event_target

  method onabort :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onerror :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onload :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadend :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onloadstart :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method onprogress :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method ontimeout :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop
end

(* see {!Browser.Xml_http_request} for module definition *)
and xml_http_request = object
  inherit xml_http_request_event_target

  method onreadystatechange :
    ( 'self
      , args:(* variadic [Js.Unsafe.any] *) untranslated -> Js.Unsafe.any )
      Js.meth_callback
      Js.opt
      Js.prop

  method readyState : Js.number Js.t Js.readonly_prop
  method response : Js.Unsafe.any Js.readonly_prop
  method responseText : Js.js_string Js.t Js.readonly_prop
  method responseType : xml_http_request_response_type Js.prop
  method responseURL : Js.js_string Js.t Js.readonly_prop
  method responseXML : document Js.t Js.opt Js.readonly_prop
  method status : Js.number Js.t Js.readonly_prop
  method statusText : Js.js_string Js.t Js.readonly_prop
  method timeout : Js.number Js.t Js.prop
  method upload : xml_http_request_upload Js.t Js.readonly_prop
  method withCredentials : bool Js.t Js.prop
  method abort : unit Js.meth
  method getAllResponseHeaders : Js.js_string Js.t Js.meth
  method getResponseHeader : name:Js.js_string Js.t -> Js.js_string Js.t Js.opt Js.meth
  method open_ : method_:Js.js_string Js.t -> url:Js.js_string Js.t -> unit Js.meth

  method open_1 :
    method_:Js.js_string Js.t
    -> url:Js.js_string Js.t
    -> async:bool Js.t
    -> username:Js.js_string Js.t Js.opt Js.optdef
    -> password:Js.js_string Js.t Js.opt Js.optdef
    -> unit Js.meth

  method overrideMimeType : mime:Js.js_string Js.t -> unit Js.meth

  method send :
    body:document_or_xml_http_request_body_init Js.t Js.opt Js.optdef -> unit Js.meth

  method setRequestHeader :
    name:Js.js_string Js.t -> value:Js.js_string Js.t -> unit Js.meth
end

(* see {!Browser.Xml_http_request} for module definition *)
and xml_http_request_upload = object
  inherit xml_http_request_event_target
end
