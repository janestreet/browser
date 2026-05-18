open Browser_js_types
open Core_utils

module Js_indexed_collection = struct
  let map_values collection ~(f : 'v -> 'a) : 'a array =
    let values = collection##values in
    let f _ =
      let value = values##next##.value in
      f value
    in
    let length = collection##.length |> Js.to_float |> int_of_float in
    Array.init length f
  ;;

  let get_values collection : 'a array = map_values collection ~f:id
end

module Js_keyed_collection = struct
  let get_length collection =
    let iterator = collection##values in
    let rec count n =
      let next = iterator##next in
      if next##.done_ == true_ then n else count (n + 1)
    in
    count 0
  ;;

  let map_keys collection ~(f : 'k -> 'a) : 'a array =
    let keys = collection##keys in
    let f _ =
      let value : 'v = keys##next##.value in
      f value
    in
    let length = get_length collection in
    Array.init length f
  ;;

  let get_keys collection : 'a array = map_keys ~f:id collection

  let map_values collection ~(f : 'v -> 'a) : 'a array =
    let values = collection##values in
    let f _ =
      let value = values##next##.value in
      f value
    in
    let length = get_length collection in
    Array.init length f
  ;;

  let get_values collection : 'a array = map_values collection ~f:id

  let map_entries_helper collection ~map_key ~map_value =
    let entries = collection##entries in
    let f _ =
      let entry = entries##next##.value in
      let key = Js.Unsafe.get entry 0 |> map_key in
      let value = Js.Unsafe.get entry 1 |> map_value in
      key, value
    in
    let length = get_length collection in
    Array.init length f
  ;;

  let get_entries collection : ('a * 'b) array =
    map_entries_helper collection ~map_key:id ~map_value:id
  ;;

  let map_entry_keys collection ~(f : 'k -> 'a) : ('a * 'b) array =
    map_entries_helper collection ~map_key:f ~map_value:id
  ;;

  let map_entry_values collection ~(f : 'v -> 'b) : ('a * 'b) array =
    map_entries_helper collection ~map_key:id ~map_value:f
  ;;

  let map_entries collection ~(f_key : 'k -> 'a) ~(f_value : 'v -> 'b) : ('a * 'b) array =
    map_entries_helper collection ~map_key:f_key ~map_value:f_value
  ;;
end
