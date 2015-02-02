{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLContextEvent
       (ghcjs_dom_web_gl_context_event_get_status_message,
        webGLContextEventGetStatusMessage, WebGLContextEvent,
        IsWebGLContextEvent, castToWebGLContextEvent,
        gTypeWebGLContextEvent, toWebGLContextEvent)
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

 
foreign import javascript unsafe "$1[\"statusMessage\"]"
        ghcjs_dom_web_gl_context_event_get_status_message ::
        JSRef WebGLContextEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextEvent.statusMessage Mozilla WebGLContextEvent.statusMessage documentation> 
webGLContextEventGetStatusMessage ::
                                  (IsWebGLContextEvent self, FromJSString result) =>
                                    self -> IO result
webGLContextEventGetStatusMessage self
  = fromJSString <$>
      (ghcjs_dom_web_gl_context_event_get_status_message
         (unWebGLContextEvent (toWebGLContextEvent self)))
#else
module GHCJS.DOM.WebGLContextEvent (
  ) where
#endif
