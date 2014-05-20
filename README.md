ghcjs-dom
=========

Library for creating applications that use the Document Object Model.
It provides a type safe interface based on the WebKit IDL files.

There are three different implementations.

 * *JSFFI* uses GHCJS Java Script FFI (default when compiled with GHCJS)
 * *WebKit* uses WebKitGtk (default when compiled with GHC)
 * *JSaddle* uses WebKitGtk-JavaScriptCore (not done yet)

GHCJS provides shims for WebKitGtk so the WebKit version will
work when compiled with GHCJS (though it will be slower
compared to the JSFFI version).

Once done the JSaddle implementation will make interaction
between native code and JavaScript running in the JavaScriptCore
engine work smoothly.
