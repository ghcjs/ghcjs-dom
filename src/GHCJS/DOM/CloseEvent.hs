{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CloseEvent
       (ghcjs_dom_close_event_get_was_clean, closeEventGetWasClean,
        ghcjs_dom_close_event_get_code, closeEventGetCode,
        ghcjs_dom_close_event_get_reason, closeEventGetReason, CloseEvent,
        IsCloseEvent, castToCloseEvent, gTypeCloseEvent, toCloseEvent)
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

 
foreign import javascript unsafe "($1[\"wasClean\"] ? 1 : 0)"
        ghcjs_dom_close_event_get_was_clean :: JSRef CloseEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent.wasClean Mozilla CloseEvent.wasClean documentation> 
closeEventGetWasClean ::
                      (MonadIO m, IsCloseEvent self) => self -> m Bool
closeEventGetWasClean self
  = liftIO
      (ghcjs_dom_close_event_get_was_clean
         (unCloseEvent (toCloseEvent self)))
 
foreign import javascript unsafe "$1[\"code\"]"
        ghcjs_dom_close_event_get_code :: JSRef CloseEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent.code Mozilla CloseEvent.code documentation> 
closeEventGetCode ::
                  (MonadIO m, IsCloseEvent self) => self -> m Word
closeEventGetCode self
  = liftIO
      (ghcjs_dom_close_event_get_code (unCloseEvent (toCloseEvent self)))
 
foreign import javascript unsafe "$1[\"reason\"]"
        ghcjs_dom_close_event_get_reason :: JSRef CloseEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent.reason Mozilla CloseEvent.reason documentation> 
closeEventGetReason ::
                    (MonadIO m, IsCloseEvent self, FromJSString result) =>
                      self -> m result
closeEventGetReason self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_close_event_get_reason
            (unCloseEvent (toCloseEvent self))))
#else
module GHCJS.DOM.CloseEvent (
  ) where
#endif
