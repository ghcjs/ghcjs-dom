{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.EventSource
       (ghcjs_dom_event_source_new, eventSourceNew,
        ghcjs_dom_event_source_close, eventSourceClose,
        ghcjs_dom_event_source_dispatch_event, eventSourceDispatchEvent,
        cCONNECTING, cOPEN, cCLOSED, ghcjs_dom_event_source_get_url,
        eventSourceGetUrl, ghcjs_dom_event_source_get_with_credentials,
        eventSourceGetWithCredentials,
        ghcjs_dom_event_source_get_ready_state, eventSourceGetReadyState,
        eventSourceOnopen, eventSourceOnmessage, eventSourceOnerror,
        EventSource, IsEventSource, castToEventSource, gTypeEventSource,
        toEventSource)
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
        "new window[\"EventSource\"]($1,\n$2)" ghcjs_dom_event_source_new
        :: JSString -> JSRef Dictionary -> IO (JSRef EventSource)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource Mozilla EventSource documentation> 
eventSourceNew ::
               (ToJSString url, IsDictionary eventSourceInit) =>
                 url -> Maybe eventSourceInit -> IO EventSource
eventSourceNew url eventSourceInit
  = ghcjs_dom_event_source_new (toJSString url)
      (maybe jsNull (unDictionary . toDictionary) eventSourceInit)
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"close\"]()"
        ghcjs_dom_event_source_close :: JSRef EventSource -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.close Mozilla EventSource.close documentation> 
eventSourceClose :: (IsEventSource self) => self -> IO ()
eventSourceClose self
  = ghcjs_dom_event_source_close (unEventSource (toEventSource self))
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_event_source_dispatch_event ::
        JSRef EventSource -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.dispatchEvent Mozilla EventSource.dispatchEvent documentation> 
eventSourceDispatchEvent ::
                         (IsEventSource self, IsEvent evt) => self -> Maybe evt -> IO Bool
eventSourceDispatchEvent self evt
  = ghcjs_dom_event_source_dispatch_event
      (unEventSource (toEventSource self))
      (maybe jsNull (unEvent . toEvent) evt)
cCONNECTING = 0
cOPEN = 1
cCLOSED = 2
 
foreign import javascript unsafe "$1[\"url\"]"
        ghcjs_dom_event_source_get_url :: JSRef EventSource -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.url Mozilla EventSource.url documentation> 
eventSourceGetUrl ::
                  (IsEventSource self, FromJSString result) => self -> IO result
eventSourceGetUrl self
  = fromJSString <$>
      (ghcjs_dom_event_source_get_url
         (unEventSource (toEventSource self)))
 
foreign import javascript unsafe
        "($1[\"withCredentials\"] ? 1 : 0)"
        ghcjs_dom_event_source_get_with_credentials ::
        JSRef EventSource -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.withCredentials Mozilla EventSource.withCredentials documentation> 
eventSourceGetWithCredentials ::
                              (IsEventSource self) => self -> IO Bool
eventSourceGetWithCredentials self
  = ghcjs_dom_event_source_get_with_credentials
      (unEventSource (toEventSource self))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_event_source_get_ready_state ::
        JSRef EventSource -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.readyState Mozilla EventSource.readyState documentation> 
eventSourceGetReadyState :: (IsEventSource self) => self -> IO Word
eventSourceGetReadyState self
  = ghcjs_dom_event_source_get_ready_state
      (unEventSource (toEventSource self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.onopen Mozilla EventSource.onopen documentation> 
eventSourceOnopen ::
                  (IsEventSource self) => Signal self (EventM UIEvent self ())
eventSourceOnopen = (connect "open")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.onmessage Mozilla EventSource.onmessage documentation> 
eventSourceOnmessage ::
                     (IsEventSource self) => Signal self (EventM UIEvent self ())
eventSourceOnmessage = (connect "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.onerror Mozilla EventSource.onerror documentation> 
eventSourceOnerror ::
                   (IsEventSource self) => Signal self (EventM UIEvent self ())
eventSourceOnerror = (connect "error")
#else
module GHCJS.DOM.EventSource (
  ) where
#endif
