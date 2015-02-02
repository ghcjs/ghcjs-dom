{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PopStateEvent
       (ghcjs_dom_pop_state_event_get_state, popStateEventGetState,
        PopStateEvent, IsPopStateEvent, castToPopStateEvent,
        gTypePopStateEvent, toPopStateEvent)
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

 
foreign import javascript unsafe "$1[\"state\"]"
        ghcjs_dom_pop_state_event_get_state ::
        JSRef PopStateEvent -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PopStateEvent.state Mozilla PopStateEvent.state documentation> 
popStateEventGetState ::
                      (IsPopStateEvent self) => self -> IO (JSRef a)
popStateEventGetState self
  = ghcjs_dom_pop_state_event_get_state
      (unPopStateEvent (toPopStateEvent self))
#else
module GHCJS.DOM.PopStateEvent (
  ) where
#endif
