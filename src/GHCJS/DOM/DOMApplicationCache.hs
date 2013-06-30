{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DOMApplicationCache
       (webkit_dom_dom_application_cache_update,
        domApplicationCacheUpdate,
        webkit_dom_dom_application_cache_swap_cache,
        domApplicationCacheSwapCache,
        webkit_dom_dom_application_cache_abort, domApplicationCacheAbort,
        webkit_dom_dom_application_cache_dispatch_event,
        domApplicationCacheDispatchEvent, cUNCACHED, cIDLE, cCHECKING,
        cDOWNLOADING, cUPDATEREADY, cOBSOLETE,
        webkit_dom_dom_application_cache_get_status,
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
        webkit_dom_dom_application_cache_update ::
        JSRef DOMApplicationCache -> IO ()
#else 
webkit_dom_dom_application_cache_update ::
                                          JSRef DOMApplicationCache -> IO ()
webkit_dom_dom_application_cache_update = undefined
#endif
 
domApplicationCacheUpdate ::
                          (DOMApplicationCacheClass self) => self -> IO ()
domApplicationCacheUpdate self
  = webkit_dom_dom_application_cache_update
      (unDOMApplicationCache (toDOMApplicationCache self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"swapCache\"]()"
        webkit_dom_dom_application_cache_swap_cache ::
        JSRef DOMApplicationCache -> IO ()
#else 
webkit_dom_dom_application_cache_swap_cache ::
                                              JSRef DOMApplicationCache -> IO ()
webkit_dom_dom_application_cache_swap_cache = undefined
#endif
 
domApplicationCacheSwapCache ::
                             (DOMApplicationCacheClass self) => self -> IO ()
domApplicationCacheSwapCache self
  = webkit_dom_dom_application_cache_swap_cache
      (unDOMApplicationCache (toDOMApplicationCache self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"abort\"]()"
        webkit_dom_dom_application_cache_abort ::
        JSRef DOMApplicationCache -> IO ()
#else 
webkit_dom_dom_application_cache_abort ::
                                         JSRef DOMApplicationCache -> IO ()
webkit_dom_dom_application_cache_abort = undefined
#endif
 
domApplicationCacheAbort ::
                         (DOMApplicationCacheClass self) => self -> IO ()
domApplicationCacheAbort self
  = webkit_dom_dom_application_cache_abort
      (unDOMApplicationCache (toDOMApplicationCache self))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        webkit_dom_dom_application_cache_dispatch_event ::
        JSRef DOMApplicationCache -> JSRef Event -> IO JSBool
#else 
webkit_dom_dom_application_cache_dispatch_event ::
                                                  JSRef DOMApplicationCache ->
                                                    JSRef Event -> IO JSBool
webkit_dom_dom_application_cache_dispatch_event = undefined
#endif
 
domApplicationCacheDispatchEvent ::
                                 (DOMApplicationCacheClass self, EventClass evt) =>
                                   self -> Maybe evt -> IO Bool
domApplicationCacheDispatchEvent self evt
  = fromJSBool <$>
      (webkit_dom_dom_application_cache_dispatch_event
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
        webkit_dom_dom_application_cache_get_status ::
        JSRef DOMApplicationCache -> IO Word
#else 
webkit_dom_dom_application_cache_get_status ::
                                              JSRef DOMApplicationCache -> IO Word
webkit_dom_dom_application_cache_get_status = undefined
#endif
 
domApplicationCacheGetStatus ::
                             (DOMApplicationCacheClass self) => self -> IO Word
domApplicationCacheGetStatus self
  = webkit_dom_dom_application_cache_get_status
      (unDOMApplicationCache (toDOMApplicationCache self))
 
domApplicationCacheOnchecking ::
                              (DOMApplicationCacheClass self) =>
                                Signal self (EventM UIEvent self ())
domApplicationCacheOnchecking = (connect "checking")
 
domApplicationCacheOnerror ::
                           (DOMApplicationCacheClass self) =>
                             Signal self (EventM UIEvent self ())
domApplicationCacheOnerror = (connect "error")
 
domApplicationCacheOnnoupdate ::
                              (DOMApplicationCacheClass self) =>
                                Signal self (EventM UIEvent self ())
domApplicationCacheOnnoupdate = (connect "noupdate")
 
domApplicationCacheOndownloading ::
                                 (DOMApplicationCacheClass self) =>
                                   Signal self (EventM UIEvent self ())
domApplicationCacheOndownloading = (connect "downloading")
 
domApplicationCacheOnprogress ::
                              (DOMApplicationCacheClass self) =>
                                Signal self (EventM UIEvent self ())
domApplicationCacheOnprogress = (connect "progress")
 
domApplicationCacheOnupdateready ::
                                 (DOMApplicationCacheClass self) =>
                                   Signal self (EventM UIEvent self ())
domApplicationCacheOnupdateready = (connect "updateready")
 
domApplicationCacheOncached ::
                            (DOMApplicationCacheClass self) =>
                              Signal self (EventM UIEvent self ())
domApplicationCacheOncached = (connect "cached")
 
domApplicationCacheOnobsolete ::
                              (DOMApplicationCacheClass self) =>
                                Signal self (EventM UIEvent self ())
domApplicationCacheOnobsolete = (connect "obsolete")