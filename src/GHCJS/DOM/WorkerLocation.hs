{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WorkerLocation
       (ghcjs_dom_worker_location_to_string, workerLocationToString,
        ghcjs_dom_worker_location_get_href, workerLocationGetHref,
        ghcjs_dom_worker_location_get_protocol, workerLocationGetProtocol,
        ghcjs_dom_worker_location_get_host, workerLocationGetHost,
        ghcjs_dom_worker_location_get_hostname, workerLocationGetHostname,
        ghcjs_dom_worker_location_get_port, workerLocationGetPort,
        ghcjs_dom_worker_location_get_pathname, workerLocationGetPathname,
        ghcjs_dom_worker_location_get_search, workerLocationGetSearch,
        ghcjs_dom_worker_location_get_hash, workerLocationGetHash,
        WorkerLocation, IsWorkerLocation, castToWorkerLocation,
        gTypeWorkerLocation, toWorkerLocation)
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

 
foreign import javascript unsafe "$1[\"toString\"]()"
        ghcjs_dom_worker_location_to_string ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.toString Mozilla WorkerLocation.toString documentation> 
workerLocationToString ::
                       (IsWorkerLocation self, FromJSString result) => self -> IO result
workerLocationToString self
  = fromJSString <$>
      (ghcjs_dom_worker_location_to_string
         (unWorkerLocation (toWorkerLocation self)))
 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_worker_location_get_href ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.href Mozilla WorkerLocation.href documentation> 
workerLocationGetHref ::
                      (IsWorkerLocation self, FromJSString result) => self -> IO result
workerLocationGetHref self
  = fromJSString <$>
      (ghcjs_dom_worker_location_get_href
         (unWorkerLocation (toWorkerLocation self)))
 
foreign import javascript unsafe "$1[\"protocol\"]"
        ghcjs_dom_worker_location_get_protocol ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.protocol Mozilla WorkerLocation.protocol documentation> 
workerLocationGetProtocol ::
                          (IsWorkerLocation self, FromJSString result) => self -> IO result
workerLocationGetProtocol self
  = fromJSString <$>
      (ghcjs_dom_worker_location_get_protocol
         (unWorkerLocation (toWorkerLocation self)))
 
foreign import javascript unsafe "$1[\"host\"]"
        ghcjs_dom_worker_location_get_host ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.host Mozilla WorkerLocation.host documentation> 
workerLocationGetHost ::
                      (IsWorkerLocation self, FromJSString result) => self -> IO result
workerLocationGetHost self
  = fromJSString <$>
      (ghcjs_dom_worker_location_get_host
         (unWorkerLocation (toWorkerLocation self)))
 
foreign import javascript unsafe "$1[\"hostname\"]"
        ghcjs_dom_worker_location_get_hostname ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.hostname Mozilla WorkerLocation.hostname documentation> 
workerLocationGetHostname ::
                          (IsWorkerLocation self, FromJSString result) => self -> IO result
workerLocationGetHostname self
  = fromJSString <$>
      (ghcjs_dom_worker_location_get_hostname
         (unWorkerLocation (toWorkerLocation self)))
 
foreign import javascript unsafe "$1[\"port\"]"
        ghcjs_dom_worker_location_get_port ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.port Mozilla WorkerLocation.port documentation> 
workerLocationGetPort ::
                      (IsWorkerLocation self, FromJSString result) => self -> IO result
workerLocationGetPort self
  = fromJSString <$>
      (ghcjs_dom_worker_location_get_port
         (unWorkerLocation (toWorkerLocation self)))
 
foreign import javascript unsafe "$1[\"pathname\"]"
        ghcjs_dom_worker_location_get_pathname ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.pathname Mozilla WorkerLocation.pathname documentation> 
workerLocationGetPathname ::
                          (IsWorkerLocation self, FromJSString result) => self -> IO result
workerLocationGetPathname self
  = fromJSString <$>
      (ghcjs_dom_worker_location_get_pathname
         (unWorkerLocation (toWorkerLocation self)))
 
foreign import javascript unsafe "$1[\"search\"]"
        ghcjs_dom_worker_location_get_search ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.search Mozilla WorkerLocation.search documentation> 
workerLocationGetSearch ::
                        (IsWorkerLocation self, FromJSString result) => self -> IO result
workerLocationGetSearch self
  = fromJSString <$>
      (ghcjs_dom_worker_location_get_search
         (unWorkerLocation (toWorkerLocation self)))
 
foreign import javascript unsafe "$1[\"hash\"]"
        ghcjs_dom_worker_location_get_hash ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.hash Mozilla WorkerLocation.hash documentation> 
workerLocationGetHash ::
                      (IsWorkerLocation self, FromJSString result) => self -> IO result
workerLocationGetHash self
  = fromJSString <$>
      (ghcjs_dom_worker_location_get_hash
         (unWorkerLocation (toWorkerLocation self)))
#else
module GHCJS.DOM.WorkerLocation (
  ) where
#endif
