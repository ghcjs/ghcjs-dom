{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.FocusEvent
       (ghcjs_dom_focus_event_get_related_target,
        focusEventGetRelatedTarget, FocusEvent, IsFocusEvent,
        castToFocusEvent, gTypeFocusEvent, toFocusEvent)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"relatedTarget\"]"
        ghcjs_dom_focus_event_get_related_target ::
        JSRef FocusEvent -> IO (JSRef EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent.relatedTarget Mozilla FocusEvent.relatedTarget documentation> 
focusEventGetRelatedTarget ::
                           (MonadIO m, IsFocusEvent self) => self -> m (Maybe EventTarget)
focusEventGetRelatedTarget self
  = liftIO
      ((ghcjs_dom_focus_event_get_related_target
          (unFocusEvent (toFocusEvent self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.FocusEvent (
  ) where
#endif
