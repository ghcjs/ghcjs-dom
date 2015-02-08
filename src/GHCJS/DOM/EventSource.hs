{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.EventSource
       (ghcjs_dom_event_source_new, eventSourceNew,
        ghcjs_dom_event_source_close, eventSourceClose, cCONNECTING, cOPEN,
        cCLOSED, ghcjs_dom_event_source_get_url, eventSourceGetUrl,
        ghcjs_dom_event_source_get_with_credentials,
        eventSourceGetWithCredentials,
        ghcjs_dom_event_source_get_ready_state, eventSourceGetReadyState,
        eventSourceOpen, eventSourceMessage, eventSourceError, EventSource,
        IsEventSource, castToEventSource, gTypeEventSource, toEventSource)
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

 
foreign import javascript unsafe
        "new window[\"EventSource\"]($1,\n$2)" ghcjs_dom_event_source_new
        :: JSString -> JSRef Dictionary -> IO (JSRef EventSource)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource Mozilla EventSource documentation> 
eventSourceNew ::
               (MonadIO m, ToJSString url, IsDictionary eventSourceInit) =>
                 url -> Maybe eventSourceInit -> m EventSource
eventSourceNew url eventSourceInit
  = liftIO
      (ghcjs_dom_event_source_new (toJSString url)
         (maybe jsNull (unDictionary . toDictionary) eventSourceInit)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"close\"]()"
        ghcjs_dom_event_source_close :: JSRef EventSource -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.close Mozilla EventSource.close documentation> 
eventSourceClose :: (MonadIO m, IsEventSource self) => self -> m ()
eventSourceClose self
  = liftIO
      (ghcjs_dom_event_source_close (unEventSource (toEventSource self)))
cCONNECTING = 0
cOPEN = 1
cCLOSED = 2
 
foreign import javascript unsafe "$1[\"url\"]"
        ghcjs_dom_event_source_get_url :: JSRef EventSource -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.url Mozilla EventSource.url documentation> 
eventSourceGetUrl ::
                  (MonadIO m, IsEventSource self, FromJSString result) =>
                    self -> m result
eventSourceGetUrl self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_event_source_get_url
            (unEventSource (toEventSource self))))
 
foreign import javascript unsafe
        "($1[\"withCredentials\"] ? 1 : 0)"
        ghcjs_dom_event_source_get_with_credentials ::
        JSRef EventSource -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.withCredentials Mozilla EventSource.withCredentials documentation> 
eventSourceGetWithCredentials ::
                              (MonadIO m, IsEventSource self) => self -> m Bool
eventSourceGetWithCredentials self
  = liftIO
      (ghcjs_dom_event_source_get_with_credentials
         (unEventSource (toEventSource self)))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_event_source_get_ready_state ::
        JSRef EventSource -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.readyState Mozilla EventSource.readyState documentation> 
eventSourceGetReadyState ::
                         (MonadIO m, IsEventSource self) => self -> m Word
eventSourceGetReadyState self
  = liftIO
      (ghcjs_dom_event_source_get_ready_state
         (unEventSource (toEventSource self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.open Mozilla EventSource.open documentation> 
eventSourceOpen ::
                (IsEventSource self, IsEventTarget self) => EventName self Event
eventSourceOpen = unsafeEventName (toJSString "open")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.message Mozilla EventSource.message documentation> 
eventSourceMessage ::
                   (IsEventSource self, IsEventTarget self) =>
                     EventName self MessageEvent
eventSourceMessage = unsafeEventName (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.error Mozilla EventSource.error documentation> 
eventSourceError ::
                 (IsEventSource self, IsEventTarget self) => EventName self UIEvent
eventSourceError = unsafeEventName (toJSString "error")
#else
module GHCJS.DOM.EventSource (
  ) where
#endif
