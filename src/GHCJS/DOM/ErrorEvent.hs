{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ErrorEvent
       (ghcjs_dom_error_event_get_message, errorEventGetMessage,
        ghcjs_dom_error_event_get_filename, errorEventGetFilename,
        ghcjs_dom_error_event_get_lineno, errorEventGetLineno,
        ghcjs_dom_error_event_get_colno, errorEventGetColno, ErrorEvent,
        IsErrorEvent, castToErrorEvent, gTypeErrorEvent, toErrorEvent)
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

 
foreign import javascript unsafe "$1[\"message\"]"
        ghcjs_dom_error_event_get_message ::
        JSRef ErrorEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.message Mozilla ErrorEvent.message documentation> 
errorEventGetMessage ::
                     (MonadIO m, IsErrorEvent self, FromJSString result) =>
                       self -> m result
errorEventGetMessage self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_error_event_get_message
            (unErrorEvent (toErrorEvent self))))
 
foreign import javascript unsafe "$1[\"filename\"]"
        ghcjs_dom_error_event_get_filename ::
        JSRef ErrorEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.filename Mozilla ErrorEvent.filename documentation> 
errorEventGetFilename ::
                      (MonadIO m, IsErrorEvent self, FromJSString result) =>
                        self -> m result
errorEventGetFilename self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_error_event_get_filename
            (unErrorEvent (toErrorEvent self))))
 
foreign import javascript unsafe "$1[\"lineno\"]"
        ghcjs_dom_error_event_get_lineno :: JSRef ErrorEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.lineno Mozilla ErrorEvent.lineno documentation> 
errorEventGetLineno ::
                    (MonadIO m, IsErrorEvent self) => self -> m Word
errorEventGetLineno self
  = liftIO
      (ghcjs_dom_error_event_get_lineno
         (unErrorEvent (toErrorEvent self)))
 
foreign import javascript unsafe "$1[\"colno\"]"
        ghcjs_dom_error_event_get_colno :: JSRef ErrorEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.colno Mozilla ErrorEvent.colno documentation> 
errorEventGetColno ::
                   (MonadIO m, IsErrorEvent self) => self -> m Word
errorEventGetColno self
  = liftIO
      (ghcjs_dom_error_event_get_colno
         (unErrorEvent (toErrorEvent self)))
#else
module GHCJS.DOM.ErrorEvent (
  ) where
#endif
