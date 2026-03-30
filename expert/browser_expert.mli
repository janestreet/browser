(** This library contains utility functions that are compatible with [Browser_types]. They
    are already included in [Browser] *)

module Js = Js_of_ocaml.Js
module Types = Browser_types
module Constants = Constants
module Record = Record
module Int64 = Int64

module Global : sig
  type t =
    [ `Dedicated_worker of Types.Globals.dedicated_worker_global_scope Js.t
    | `Shared_worker of Types.Globals.shared_worker_global_scope Js.t
    | `Window of Types.Globals.window Js.t
    | `Unknown of < > Js.t
    | `Undefined
    ]

  (** [get] returns the current JavaScript global scope as a variant type, identifying
      which kind of global scope is available in the current context.

      [`Unknown] is the fallback variant for unrecognized global scopes *)
  val get : unit -> t

  val window : unit -> Types.Globals.window Js.t option

  (** Returns the current global scope as a Window object. Raises [Failure] if not a
      Window context.

      When testing, returns the unknown global scope (likely Node) instead of failing. *)
  val window_exn : unit -> Types.Globals.window Js.t
end

(** Check if a JavaScript value is a 64-bit integer *)
val is_int64 : 'a Js.t -> bool

(** Check if a JavaScript value is an OCaml-compatible integer *)
val is_int : 'a Js.t -> bool

(** Checks ['a Js.t] using [typeof] *)
val is_typeof
  :  'a Js.t
  -> [ `String | `Boolean | `Number | `Object_ | `Function | `Null | `Undefined ]
  -> bool

(** Returns [true] if the value is either [null] or [undefined] *)
val is_nullish : 'a Js.t -> bool

(** Returns [true] if ['a Js.t] is an exact instance of [type_], meaning it does not
    return [true] if ['a Js.t] is a subclass of [type_] *)
val is_exact_instance_of : type_:string -> global:Global.t -> 'a Js.t -> bool

(** Returns [true] if ['a Js.t] is an instance of [type_] or is an instance of a subclass
    of [type_] *)
val is_instance_of : type_:string -> global:Global.t -> 'a Js.t -> bool

(** [coerce] accepts a ['a instance_t] and returns a ['a Js.t] if ['b Js.t] is
    [instanceof] [to_] *)
val coerce : 'a 'b. to_:'a Browser_js_types.instance_t -> 'b Js.t -> 'a Js.t option
