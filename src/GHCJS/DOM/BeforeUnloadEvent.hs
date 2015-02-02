{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.BeforeUnloadEvent
       (ghcjs_dom_before_unload_event_set_return_value,
        beforeUnloadEventSetReturnValue,
        ghcjs_dom_before_unload_event_get_return_value,
        beforeUnloadEventGetReturnValue, BeforeUnloadEvent,
        IsBeforeUnloadEvent, castToBeforeUnloadEvent,
        gTypeBeforeUnloadEvent, toBeforeUnloadEvent)
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

 
foreign import javascript unsafe "$1[\"returnValue\"] = $2;"
        ghcjs_dom_before_unload_event_set_return_value ::
        JSRef BeforeUnloadEvent -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent.returnValue Mozilla BeforeUnloadEvent.returnValue documentation> 
beforeUnloadEventSetReturnValue ::
                                (IsBeforeUnloadEvent self, ToJSString val) => self -> val -> IO ()
beforeUnloadEventSetReturnValue self val
  = ghcjs_dom_before_unload_event_set_return_value
      (unBeforeUnloadEvent (toBeforeUnloadEvent self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"returnValue\"]"
        ghcjs_dom_before_unload_event_get_return_value ::
        JSRef BeforeUnloadEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent.returnValue Mozilla BeforeUnloadEvent.returnValue documentation> 
beforeUnloadEventGetReturnValue ::
                                (IsBeforeUnloadEvent self, FromJSString result) =>
                                  self -> IO result
beforeUnloadEventGetReturnValue self
  = fromJSString <$>
      (ghcjs_dom_before_unload_event_get_return_value
         (unBeforeUnloadEvent (toBeforeUnloadEvent self)))
#else
module GHCJS.DOM.BeforeUnloadEvent (
  ) where
#endif
