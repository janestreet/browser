module Js = Js_of_ocaml.Js
module Types = Browser_types
module Constants = Constants
module Record = Record
module Int64 = Int64

let am_running_test =
  try
    ignore (Stdlib.Sys.getenv "TESTING_FRAMEWORK" : string);
    true
  with
  | Stdlib.Not_found -> false
;;

type global_t =
  [ `Dedicated_worker of Types.Globals.dedicated_worker_global_scope Js.t
  | `Shared_worker of Types.Globals.shared_worker_global_scope Js.t
  | `Window of Types.Globals.window Js.t
  | `Unknown of < > Js.t
  | `Undefined
  ]

let constructor = Js.string "constructor"
let return_false () = false

let is_nullish (x : 'a Js.t) : bool =
  let tester = Js.Unsafe.js_expr {|((x) => x == null)|} in
  Js.Unsafe.fun_call tester [| Js.Unsafe.inject x |] |> Js.to_bool
;;

(** [Number] is an ECMAScript API so it should be available on every javascript
    environment. We pull it at startup in an attempt to avoid shadowing/reassignment *)
let number_class : Browser_js_types.js_number_class Js.t =
  Js.Unsafe.js_expr {|globalThis.Number|}
;;

let is_int64 = Int64.is_int64

let is_int (x : 'a Js.t) : bool =
  match number_class##isInteger x == Constants.Bool.true_ with
  | true ->
    let int_js = Js.Unsafe.coerce x in
    Js.math##min Constants.Number.max_int int_js
    == Js.math##max Constants.Number.min_int int_js
  | false -> false
;;

let get_class_obj_from_global ~(global : global_t) class_name =
  let class_name = Js.string class_name in
  match global with
  | `Dedicated_worker global -> Js.Unsafe.get global class_name
  | `Shared_worker global -> Js.Unsafe.get global class_name
  | `Window global -> Js.Unsafe.get global class_name
  | `Unknown global -> Js.Unsafe.get global class_name
  | `Undefined -> Js.Optdef.empty
;;

let is_instance_of ~(type_ : string) ~global (class_instance : 'a Js.t) : bool =
  let class_instance_constructor = get_class_obj_from_global ~global type_ in
  Js.Optdef.case
    class_instance_constructor
    return_false
    (fun class_instance_constructor ->
       Js.instanceof class_instance class_instance_constructor)
;;

let is_exact_instance_of ~(type_ : string) ~global (class_instance : 'a Js.t) : bool =
  let class_constr = Js.Unsafe.get global (Js.string type_) in
  let class_instance_constr = Js.Unsafe.get class_instance constructor in
  (* If the class object exists on the global and the class instance has a constructor *)
  Js.Optdef.(test (return class_instance_constr) && test (return class_constr))
  (* Then, check if the constructors are equal *)
  && class_instance_constr == class_constr
;;

module Global = struct
  type t = global_t

  let get () : t =
    let window =
      try Js.Unsafe.js_expr "window" with
      | _ -> Js.undefined
    in
    let self =
      try Js.Unsafe.js_expr "self" with
      | _ -> Js.undefined
    in
    let global_this =
      (* There's a chance that this is set to [undefined] if some other part of the script
         has reset it *)
      try Js.Unsafe.js_expr "globalThis" with
      | _ -> Js.undefined
    in
    if Js.Optdef.case window return_false (fun window ->
         is_instance_of ~type_:"Window" ~global:(`Window window) window)
    then `Window (Js.Unsafe.js_expr "window")
    else if Js.Optdef.case self return_false (fun self ->
              is_instance_of
                ~type_:"DedicatedWorkerGlobalScope"
                ~global:(`Dedicated_worker self)
                self)
    then `Dedicated_worker (Js.Unsafe.js_expr "self")
    else if Js.Optdef.case self return_false (fun self ->
              is_instance_of
                ~type_:"SharedWorkerGlobalScope"
                ~global:(`Shared_worker self)
                self)
    then `Shared_worker (Js.Unsafe.js_expr "self")
    else if Js.Optdef.test global_this
    then `Unknown (Js.Unsafe.js_expr "globalThis")
    else `Undefined
  ;;

  let window () =
    match get () with
    | `Window window -> Some window
    | _ -> None
  ;;

  let window_exn () =
    match get () with
    | `Window window -> window
    | `Unknown unknown when am_running_test -> Js.Unsafe.coerce unknown
    | _ -> failwith "Global object is not [Window]"
  ;;
end

let is_typeof
  (x : 'a Js.t)
  (kind : [ `String | `Boolean | `Number | `Object_ | `Function | `Null | `Undefined ])
  : bool
  =
  let open Constants.String in
  match kind with
  | `String -> string == Js.typeof x
  | `Boolean -> boolean == Js.typeof x
  | `Number -> number == Js.typeof x
  | `Object_ -> object_ == Js.typeof x
  | `Function -> function_ == Js.typeof x
  | `Null -> Js.Opt.strict_equals (Js.Opt.return x) Js.null
  | `Undefined -> Js.Optdef.strict_equals Js.undefined (Js.Optdef.return x)
;;

let coerce : type a. to_:a Browser_js_types.instance_t -> _ Js.t -> a Js.t option =
  fun ~to_ input_object ->
  match
    (* This is a guard clause for if the global scope for some reason doesn't actually
       have the class object assigned to it. E.g. JSDom. *)
    is_nullish
      (* We have to do an [Obj.magic] here because [is_typeof] accepts a [Js.t]. We can't
         assign this to a variable and use it again in [Js.instanceof] because
         [Js.instanceof] accepts a [Js.constr] and not a [Js.t] *)
      (Obj.magic to_)
  with
  | true ->
    (* If the [instance_t] is null we can't coerce *)
    None
  | false ->
    (match
       Js.instanceof
         input_object
         (* This is unsafe but we need to do this since [instanceof] expects the input to
            be a [Js.constr]. These values should only be created by [Browser_expert], so
            we should be able to safely coerce here *)
         (Obj.magic to_)
     with
     | true -> Some (Js.Unsafe.coerce input_object)
     | false -> None)
;;
