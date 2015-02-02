{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WindowBase64
       (ghcjs_dom_window_base64_atob, windowBase64Atob,
        ghcjs_dom_window_base64_btoa, windowBase64Btoa, WindowBase64,
        IsWindowBase64, castToWindowBase64, gTypeWindowBase64,
        toWindowBase64)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"atob\"]($2)"
        ghcjs_dom_window_base64_atob ::
        JSRef WindowBase64 -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowBase64.atob Mozilla WindowBase64.atob documentation> 
windowBase64Atob ::
                 (IsWindowBase64 self, ToJSString string, FromJSString result) =>
                   self -> string -> IO result
windowBase64Atob self string
  = fromJSString <$>
      (ghcjs_dom_window_base64_atob
         (unWindowBase64 (toWindowBase64 self))
         (toJSString string))
 
foreign import javascript unsafe "$1[\"btoa\"]($2)"
        ghcjs_dom_window_base64_btoa ::
        JSRef WindowBase64 -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowBase64.btoa Mozilla WindowBase64.btoa documentation> 
windowBase64Btoa ::
                 (IsWindowBase64 self, ToJSString string, FromJSString result) =>
                   self -> string -> IO result
windowBase64Btoa self string
  = fromJSString <$>
      (ghcjs_dom_window_base64_btoa
         (unWindowBase64 (toWindowBase64 self))
         (toJSString string))
#else
module GHCJS.DOM.WindowBase64 (
  ) where
#endif
