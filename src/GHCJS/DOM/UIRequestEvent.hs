{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.UIRequestEvent
       (ghcjs_dom_ui_request_event_get_receiver,
        uiRequestEventGetReceiver, UIRequestEvent, IsUIRequestEvent,
        castToUIRequestEvent, gTypeUIRequestEvent, toUIRequestEvent)
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

 
foreign import javascript unsafe "$1[\"receiver\"]"
        ghcjs_dom_ui_request_event_get_receiver ::
        JSRef UIRequestEvent -> IO (JSRef EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIRequestEvent.receiver Mozilla UIRequestEvent.receiver documentation> 
uiRequestEventGetReceiver ::
                          (IsUIRequestEvent self) => self -> IO (Maybe EventTarget)
uiRequestEventGetReceiver self
  = (ghcjs_dom_ui_request_event_get_receiver
       (unUIRequestEvent (toUIRequestEvent self)))
      >>= fromJSRef
#else
module GHCJS.DOM.UIRequestEvent (
  ) where
#endif
