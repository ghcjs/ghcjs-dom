{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
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
        domApplicationCacheOnobsolete)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"update\"]()"
        ghcjs_dom_dom_application_cache_update ::
        JSRef DOMApplicationCache -> IO ()
#else 
ghcjs_dom_dom_application_cache_update ::
                                         JSRef DOMApplicationCache -> IO ()
ghcjs_dom_dom_application_cache_update = undefined
#endif
 
domApplicationCacheUpdate ::
                          (IsDOMApplicationCache self) => self -> IO ()
domApplicationCacheUpdate self
  = ghcjs_dom_dom_application_cache_update
      (unDOMApplicationCache (toDOMApplicationCache self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"swapCache\"]()"
        ghcjs_dom_dom_application_cache_swap_cache ::
        JSRef DOMApplicationCache -> IO ()
#else 
ghcjs_dom_dom_application_cache_swap_cache ::
                                             JSRef DOMApplicationCache -> IO ()
ghcjs_dom_dom_application_cache_swap_cache = undefined
#endif
 
domApplicationCacheSwapCache ::
                             (IsDOMApplicationCache self) => self -> IO ()
domApplicationCacheSwapCache self
  = ghcjs_dom_dom_application_cache_swap_cache
      (unDOMApplicationCache (toDOMApplicationCache self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"abort\"]()"
        ghcjs_dom_dom_application_cache_abort ::
        JSRef DOMApplicationCache -> IO ()
#else 
ghcjs_dom_dom_application_cache_abort ::
                                        JSRef DOMApplicationCache -> IO ()
ghcjs_dom_dom_application_cache_abort = undefined
#endif
 
domApplicationCacheAbort ::
                         (IsDOMApplicationCache self) => self -> IO ()
domApplicationCacheAbort self
  = ghcjs_dom_dom_application_cache_abort
      (unDOMApplicationCache (toDOMApplicationCache self))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_application_cache_dispatch_event ::
        JSRef DOMApplicationCache -> JSRef Event -> IO JSBool
#else 
ghcjs_dom_dom_application_cache_dispatch_event ::
                                                 JSRef DOMApplicationCache ->
                                                   JSRef Event -> IO JSBool
ghcjs_dom_dom_application_cache_dispatch_event = undefined
#endif
 
domApplicationCacheDispatchEvent ::
                                 (IsDOMApplicationCache self, IsEvent evt) =>
                                   self -> Maybe evt -> IO Bool
domApplicationCacheDispatchEvent self evt
  = fromJSBool <$>
      (ghcjs_dom_dom_application_cache_dispatch_event
         (unDOMApplicationCache (toDOMApplicationCache self))
         (maybe jsNull (unEvent . toEvent) evt))
cUNCACHED = 0
cIDLE = 1
cCHECKING = 2
cDOWNLOADING = 3
cUPDATEREADY = 4
cOBSOLETE = 5


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"status\"]"
        ghcjs_dom_dom_application_cache_get_status ::
        JSRef DOMApplicationCache -> IO Word
#else 
ghcjs_dom_dom_application_cache_get_status ::
                                             JSRef DOMApplicationCache -> IO Word
ghcjs_dom_dom_application_cache_get_status = undefined
#endif
 
domApplicationCacheGetStatus ::
                             (IsDOMApplicationCache self) => self -> IO Word
domApplicationCacheGetStatus self
  = ghcjs_dom_dom_application_cache_get_status
      (unDOMApplicationCache (toDOMApplicationCache self))
 
domApplicationCacheOnchecking ::
                              (IsDOMApplicationCache self) =>
                                Signal self (EventM UIEvent self ())
domApplicationCacheOnchecking = (connect "checking")
 
domApplicationCacheOnerror ::
                           (IsDOMApplicationCache self) =>
                             Signal self (EventM UIEvent self ())
domApplicationCacheOnerror = (connect "error")
 
domApplicationCacheOnnoupdate ::
                              (IsDOMApplicationCache self) =>
                                Signal self (EventM UIEvent self ())
domApplicationCacheOnnoupdate = (connect "noupdate")
 
domApplicationCacheOndownloading ::
                                 (IsDOMApplicationCache self) =>
                                   Signal self (EventM UIEvent self ())
domApplicationCacheOndownloading = (connect "downloading")
 
domApplicationCacheOnprogress ::
                              (IsDOMApplicationCache self) =>
                                Signal self (EventM UIEvent self ())
domApplicationCacheOnprogress = (connect "progress")
 
domApplicationCacheOnupdateready ::
                                 (IsDOMApplicationCache self) =>
                                   Signal self (EventM UIEvent self ())
domApplicationCacheOnupdateready = (connect "updateready")
 
domApplicationCacheOncached ::
                            (IsDOMApplicationCache self) =>
                              Signal self (EventM UIEvent self ())
domApplicationCacheOncached = (connect "cached")
 
domApplicationCacheOnobsolete ::
                              (IsDOMApplicationCache self) =>
                                Signal self (EventM UIEvent self ())
domApplicationCacheOnobsolete = (connect "obsolete")