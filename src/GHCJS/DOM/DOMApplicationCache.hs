{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMApplicationCache
       (ghcjs_dom_dom_application_cache_update, domApplicationCacheUpdate,
        ghcjs_dom_dom_application_cache_swap_cache,
        domApplicationCacheSwapCache,
        ghcjs_dom_dom_application_cache_abort, domApplicationCacheAbort,
        cUNCACHED, cIDLE, cCHECKING, cDOWNLOADING, cUPDATEREADY, cOBSOLETE,
        ghcjs_dom_dom_application_cache_get_status,
        domApplicationCacheGetStatus, domApplicationCacheChecking,
        domApplicationCacheError, domApplicationCacheNoUpdate,
        domApplicationCacheDownloading, domApplicationCacheProgress,
        domApplicationCacheUpdateReady, domApplicationCacheCached,
        domApplicationCacheObsolete, DOMApplicationCache,
        IsDOMApplicationCache, castToDOMApplicationCache,
        gTypeDOMApplicationCache, toDOMApplicationCache)
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

 
foreign import javascript unsafe "$1[\"update\"]()"
        ghcjs_dom_dom_application_cache_update ::
        JSRef DOMApplicationCache -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.update Mozilla DOMApplicationCache.update documentation> 
domApplicationCacheUpdate ::
                          (MonadIO m, IsDOMApplicationCache self) => self -> m ()
domApplicationCacheUpdate self
  = liftIO
      (ghcjs_dom_dom_application_cache_update
         (unDOMApplicationCache (toDOMApplicationCache self)))
 
foreign import javascript unsafe "$1[\"swapCache\"]()"
        ghcjs_dom_dom_application_cache_swap_cache ::
        JSRef DOMApplicationCache -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.swapCache Mozilla DOMApplicationCache.swapCache documentation> 
domApplicationCacheSwapCache ::
                             (MonadIO m, IsDOMApplicationCache self) => self -> m ()
domApplicationCacheSwapCache self
  = liftIO
      (ghcjs_dom_dom_application_cache_swap_cache
         (unDOMApplicationCache (toDOMApplicationCache self)))
 
foreign import javascript unsafe "$1[\"abort\"]()"
        ghcjs_dom_dom_application_cache_abort ::
        JSRef DOMApplicationCache -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.abort Mozilla DOMApplicationCache.abort documentation> 
domApplicationCacheAbort ::
                         (MonadIO m, IsDOMApplicationCache self) => self -> m ()
domApplicationCacheAbort self
  = liftIO
      (ghcjs_dom_dom_application_cache_abort
         (unDOMApplicationCache (toDOMApplicationCache self)))
cUNCACHED = 0
cIDLE = 1
cCHECKING = 2
cDOWNLOADING = 3
cUPDATEREADY = 4
cOBSOLETE = 5
 
foreign import javascript unsafe "$1[\"status\"]"
        ghcjs_dom_dom_application_cache_get_status ::
        JSRef DOMApplicationCache -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.status Mozilla DOMApplicationCache.status documentation> 
domApplicationCacheGetStatus ::
                             (MonadIO m, IsDOMApplicationCache self) => self -> m Word
domApplicationCacheGetStatus self
  = liftIO
      (ghcjs_dom_dom_application_cache_get_status
         (unDOMApplicationCache (toDOMApplicationCache self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.checking Mozilla DOMApplicationCache.checking documentation> 
domApplicationCacheChecking ::
                            (IsDOMApplicationCache self, IsEventTarget self) =>
                              EventName self Event
domApplicationCacheChecking
  = unsafeEventName (toJSString "checking")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.error Mozilla DOMApplicationCache.error documentation> 
domApplicationCacheError ::
                         (IsDOMApplicationCache self, IsEventTarget self) =>
                           EventName self UIEvent
domApplicationCacheError = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.noUpdate Mozilla DOMApplicationCache.noUpdate documentation> 
domApplicationCacheNoUpdate ::
                            (IsDOMApplicationCache self, IsEventTarget self) =>
                              EventName self Event
domApplicationCacheNoUpdate
  = unsafeEventName (toJSString "noupdate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.downloading Mozilla DOMApplicationCache.downloading documentation> 
domApplicationCacheDownloading ::
                               (IsDOMApplicationCache self, IsEventTarget self) =>
                                 EventName self Event
domApplicationCacheDownloading
  = unsafeEventName (toJSString "downloading")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.progress Mozilla DOMApplicationCache.progress documentation> 
domApplicationCacheProgress ::
                            (IsDOMApplicationCache self, IsEventTarget self) =>
                              EventName self ProgressEvent
domApplicationCacheProgress
  = unsafeEventName (toJSString "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.updateReady Mozilla DOMApplicationCache.updateReady documentation> 
domApplicationCacheUpdateReady ::
                               (IsDOMApplicationCache self, IsEventTarget self) =>
                                 EventName self Event
domApplicationCacheUpdateReady
  = unsafeEventName (toJSString "updateready")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.cached Mozilla DOMApplicationCache.cached documentation> 
domApplicationCacheCached ::
                          (IsDOMApplicationCache self, IsEventTarget self) =>
                            EventName self Event
domApplicationCacheCached = unsafeEventName (toJSString "cached")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.obsolete Mozilla DOMApplicationCache.obsolete documentation> 
domApplicationCacheObsolete ::
                            (IsDOMApplicationCache self, IsEventTarget self) =>
                              EventName self Event
domApplicationCacheObsolete
  = unsafeEventName (toJSString "obsolete")
#else
module GHCJS.DOM.DOMApplicationCache (
  module Graphics.UI.Gtk.WebKit.DOM.DOMApplicationCache
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMApplicationCache
#endif
