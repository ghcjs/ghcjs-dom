{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMApplicationCache
       (ghcjs_dom_dom_application_cache_update, domApplicationCacheUpdate,
        ghcjs_dom_dom_application_cache_swap_cache,
        domApplicationCacheSwapCache,
        ghcjs_dom_dom_application_cache_abort, domApplicationCacheAbort,
        ghcjs_dom_dom_application_cache_dispatch_event,
        domApplicationCacheDispatchEvent, cUNCACHED, cIDLE, cCHECKING,
        cDOWNLOADING, cUPDATEREADY, cOBSOLETE,
        ghcjs_dom_dom_application_cache_get_status,
        domApplicationCacheGetStatus, domApplicationCacheOnchecking,
        domApplicationCacheOnerror, domApplicationCacheOnnoupdate,
        domApplicationCacheOndownloading, domApplicationCacheOnprogress,
        domApplicationCacheOnupdateready, domApplicationCacheOncached,
        domApplicationCacheOnobsolete, DOMApplicationCache,
        IsDOMApplicationCache, castToDOMApplicationCache,
        gTypeDOMApplicationCache, toDOMApplicationCache)
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

 
foreign import javascript unsafe "$1[\"update\"]()"
        ghcjs_dom_dom_application_cache_update ::
        JSRef DOMApplicationCache -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.update Mozilla DOMApplicationCache.update documentation> 
domApplicationCacheUpdate ::
                          (IsDOMApplicationCache self) => self -> IO ()
domApplicationCacheUpdate self
  = ghcjs_dom_dom_application_cache_update
      (unDOMApplicationCache (toDOMApplicationCache self))
 
foreign import javascript unsafe "$1[\"swapCache\"]()"
        ghcjs_dom_dom_application_cache_swap_cache ::
        JSRef DOMApplicationCache -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.swapCache Mozilla DOMApplicationCache.swapCache documentation> 
domApplicationCacheSwapCache ::
                             (IsDOMApplicationCache self) => self -> IO ()
domApplicationCacheSwapCache self
  = ghcjs_dom_dom_application_cache_swap_cache
      (unDOMApplicationCache (toDOMApplicationCache self))
 
foreign import javascript unsafe "$1[\"abort\"]()"
        ghcjs_dom_dom_application_cache_abort ::
        JSRef DOMApplicationCache -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.abort Mozilla DOMApplicationCache.abort documentation> 
domApplicationCacheAbort ::
                         (IsDOMApplicationCache self) => self -> IO ()
domApplicationCacheAbort self
  = ghcjs_dom_dom_application_cache_abort
      (unDOMApplicationCache (toDOMApplicationCache self))
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_application_cache_dispatch_event ::
        JSRef DOMApplicationCache -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.dispatchEvent Mozilla DOMApplicationCache.dispatchEvent documentation> 
domApplicationCacheDispatchEvent ::
                                 (IsDOMApplicationCache self, IsEvent evt) =>
                                   self -> Maybe evt -> IO Bool
domApplicationCacheDispatchEvent self evt
  = ghcjs_dom_dom_application_cache_dispatch_event
      (unDOMApplicationCache (toDOMApplicationCache self))
      (maybe jsNull (unEvent . toEvent) evt)
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
                             (IsDOMApplicationCache self) => self -> IO Word
domApplicationCacheGetStatus self
  = ghcjs_dom_dom_application_cache_get_status
      (unDOMApplicationCache (toDOMApplicationCache self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.onchecking Mozilla DOMApplicationCache.onchecking documentation> 
domApplicationCacheOnchecking ::
                              (IsDOMApplicationCache self) =>
                                Signal self (EventM UIEvent self ())
domApplicationCacheOnchecking = (connect "checking")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.onerror Mozilla DOMApplicationCache.onerror documentation> 
domApplicationCacheOnerror ::
                           (IsDOMApplicationCache self) =>
                             Signal self (EventM UIEvent self ())
domApplicationCacheOnerror = (connect "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.onnoupdate Mozilla DOMApplicationCache.onnoupdate documentation> 
domApplicationCacheOnnoupdate ::
                              (IsDOMApplicationCache self) =>
                                Signal self (EventM UIEvent self ())
domApplicationCacheOnnoupdate = (connect "noupdate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.ondownloading Mozilla DOMApplicationCache.ondownloading documentation> 
domApplicationCacheOndownloading ::
                                 (IsDOMApplicationCache self) =>
                                   Signal self (EventM UIEvent self ())
domApplicationCacheOndownloading = (connect "downloading")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.onprogress Mozilla DOMApplicationCache.onprogress documentation> 
domApplicationCacheOnprogress ::
                              (IsDOMApplicationCache self) =>
                                Signal self (EventM UIEvent self ())
domApplicationCacheOnprogress = (connect "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.onupdateready Mozilla DOMApplicationCache.onupdateready documentation> 
domApplicationCacheOnupdateready ::
                                 (IsDOMApplicationCache self) =>
                                   Signal self (EventM UIEvent self ())
domApplicationCacheOnupdateready = (connect "updateready")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.oncached Mozilla DOMApplicationCache.oncached documentation> 
domApplicationCacheOncached ::
                            (IsDOMApplicationCache self) =>
                              Signal self (EventM UIEvent self ())
domApplicationCacheOncached = (connect "cached")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.onobsolete Mozilla DOMApplicationCache.onobsolete documentation> 
domApplicationCacheOnobsolete ::
                              (IsDOMApplicationCache self) =>
                                Signal self (EventM UIEvent self ())
domApplicationCacheOnobsolete = (connect "obsolete")
#else
module GHCJS.DOM.DOMApplicationCache (
  module Graphics.UI.Gtk.WebKit.DOM.DOMApplicationCache
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMApplicationCache
#endif
