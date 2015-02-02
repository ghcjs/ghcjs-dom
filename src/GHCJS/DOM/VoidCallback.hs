{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.VoidCallback
       (ghcjs_dom_void_callback_handle_event, voidCallbackHandleEvent,
        VoidCallback, IsVoidCallback, castToVoidCallback,
        gTypeVoidCallback, toVoidCallback)
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

 
foreign import javascript unsafe "($1[\"handleEvent\"]() ? 1 : 0)"
        ghcjs_dom_void_callback_handle_event ::
        JSRef VoidCallback -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VoidCallback.handleEvent Mozilla VoidCallback.handleEvent documentation> 
voidCallbackHandleEvent :: (IsVoidCallback self) => self -> IO Bool
voidCallbackHandleEvent self
  = ghcjs_dom_void_callback_handle_event
      (unVoidCallback (toVoidCallback self))
#else
module GHCJS.DOM.VoidCallback (
  ) where
#endif
