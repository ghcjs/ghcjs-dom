{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.EventListener
       (ghcjs_dom_event_listener_handle_event, eventListenerHandleEvent,
        EventListener, IsEventListener, castToEventListener,
        gTypeEventListener, toEventListener)
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

 
foreign import javascript unsafe "$1[\"handleEvent\"]($2)"
        ghcjs_dom_event_listener_handle_event ::
        JSRef EventListener -> JSRef Event -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventListener.handleEvent Mozilla EventListener.handleEvent documentation> 
eventListenerHandleEvent ::
                         (IsEventListener self, IsEvent evt) => self -> Maybe evt -> IO ()
eventListenerHandleEvent self evt
  = ghcjs_dom_event_listener_handle_event
      (unEventListener (toEventListener self))
      (maybe jsNull (unEvent . toEvent) evt)
#else
module GHCJS.DOM.EventListener (
  ) where
#endif
