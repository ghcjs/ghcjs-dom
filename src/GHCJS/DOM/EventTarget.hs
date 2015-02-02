{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.EventTarget
       (ghcjs_dom_event_target_dispatch_event, eventTargetDispatchEvent,
        EventTarget, IsEventTarget, castToEventTarget, gTypeEventTarget,
        toEventTarget)
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

 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_event_target_dispatch_event ::
        JSRef EventTarget -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.dispatchEvent Mozilla EventTarget.dispatchEvent documentation> 
eventTargetDispatchEvent ::
                         (IsEventTarget self, IsEvent event) =>
                           self -> Maybe event -> IO Bool
eventTargetDispatchEvent self event
  = ghcjs_dom_event_target_dispatch_event
      (unEventTarget (toEventTarget self))
      (maybe jsNull (unEvent . toEvent) event)
#else
module GHCJS.DOM.EventTarget (
  ) where
#endif
