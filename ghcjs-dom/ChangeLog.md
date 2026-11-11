# Revision history for ghcjs-dom (ghcjs-dom, ghcjs-dom-jsaddle, ghcjs-dom-javascript)

## 0.10.0.0

A major release matching jsaddle-dom 0.10: the bindings are regenerated
from current specifications (webref Web IDL and MDN browser-compat-data)
by `dom-gen`.  See jsaddle-dom's ChangeLog.md for the API changes and its
API-CHANGES-0.10.md for the full list.

* ghcjs-dom-javascript (the GHC JavaScript backend) is now generated too,
  with typed `foreign import javascript` calls and no dependency on
  jsaddle.  It needs ghcjs-base >= 0.8.1 (for `GHCJS.Int53` and the
  `Object` / `JSArray` marshalling instances).
* ghcjs-dom uses ghcjs-dom-javascript on GHC's JavaScript backend (unless
  built with `-f-jsffi`) and ghcjs-dom-jsaddle otherwise.  The GHCJS 8
  backend (`ghcjs-dom-jsffi`) is not regenerated and stays at 0.9.x.
* `GHCJS.DOM.Debug` uses `Document.elementFromPoint` and `PointerEvent`.
