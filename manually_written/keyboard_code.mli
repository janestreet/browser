open Js_of_ocaml

type t = Dom_html.Keyboard_code.t =
  | Unidentified
  (* Alphabetic Characters *)
  | KeyA
  | KeyB
  | KeyC
  | KeyD
  | KeyE
  | KeyF
  | KeyG
  | KeyH
  | KeyI
  | KeyJ
  | KeyK
  | KeyL
  | KeyM
  | KeyN
  | KeyO
  | KeyP
  | KeyQ
  | KeyR
  | KeyS
  | KeyT
  | KeyU
  | KeyV
  | KeyW
  | KeyX
  | KeyY
  | KeyZ
  (* Digits *)
  | Digit0
  | Digit1
  | Digit2
  | Digit3
  | Digit4
  | Digit5
  | Digit6
  | Digit7
  | Digit8
  | Digit9
  | Minus
  | Equal
  (* Whitespace *)
  | Tab
  | Enter
  | Space
  (* Editing *)
  | Escape
  | Backspace
  | Insert
  | Delete
  | CapsLock
  (* Misc Printable *)
  | BracketLeft
  | BracketRight
  | Semicolon
  | Quote
  | Backquote
  | Backslash
  | Comma
  | Period
  | Slash
  (* Function keys *)
  | F1
  | F2
  | F3
  | F4
  | F5
  | F6
  | F7
  | F8
  | F9
  | F10
  | F11
  | F12
  (* Numpad keys *)
  | Numpad0
  | Numpad1
  | Numpad2
  | Numpad3
  | Numpad4
  | Numpad5
  | Numpad6
  | Numpad7
  | Numpad8
  | Numpad9
  | NumpadMultiply
  | NumpadSubtract
  | NumpadAdd
  | NumpadDecimal
  | NumpadEqual
  | NumpadEnter
  | NumpadDivide
  | NumLock
  (* Modifier keys *)
  | ControlLeft
  | ControlRight
  | MetaLeft
  | MetaRight
  | ShiftLeft
  | ShiftRight
  | AltLeft
  | AltRight
  (* Arrow keys *)
  | ArrowLeft
  | ArrowRight
  | ArrowUp
  | ArrowDown
  (* Navigation *)
  | PageUp
  | PageDown
  | Home
  | End
  (* Sound *)
  | VolumeMute
  | VolumeDown
  | VolumeUp
  (* Media *)
  | MediaTrackPrevious
  | MediaTrackNext
  | MediaPlayPause
  | MediaStop
  (* Browser special *)
  | ContextMenu
  | BrowserSearch
  | BrowserHome
  | BrowserFavorites
  | BrowserRefresh
  | BrowserStop
  | BrowserForward
  | BrowserBack
  (* Misc *)
  | OSLeft
  | OSRight
  | ScrollLock
  | PrintScreen
  | IntlBackslash
  | IntlYen
  | Pause

val of_event : #Browser_types.keyboard_event Js.t -> t
val of_key_code : int -> t
