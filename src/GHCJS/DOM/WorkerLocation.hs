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
import Control.Monad.IO.Class (MonadIO(..))
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
                       (MonadIO m, IsWorkerLocation self, FromJSString result) =>
                         self -> m result
workerLocationToString self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_worker_location_to_string
            (unWorkerLocation (toWorkerLocation self))))
 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_worker_location_get_href ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.href Mozilla WorkerLocation.href documentation> 
workerLocationGetHref ::
                      (MonadIO m, IsWorkerLocation self, FromJSString result) =>
                        self -> m result
workerLocationGetHref self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_worker_location_get_href
            (unWorkerLocation (toWorkerLocation self))))
 
foreign import javascript unsafe "$1[\"protocol\"]"
        ghcjs_dom_worker_location_get_protocol ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.protocol Mozilla WorkerLocation.protocol documentation> 
workerLocationGetProtocol ::
                          (MonadIO m, IsWorkerLocation self, FromJSString result) =>
                            self -> m result
workerLocationGetProtocol self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_worker_location_get_protocol
            (unWorkerLocation (toWorkerLocation self))))
 
foreign import javascript unsafe "$1[\"host\"]"
        ghcjs_dom_worker_location_get_host ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.host Mozilla WorkerLocation.host documentation> 
workerLocationGetHost ::
                      (MonadIO m, IsWorkerLocation self, FromJSString result) =>
                        self -> m result
workerLocationGetHost self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_worker_location_get_host
            (unWorkerLocation (toWorkerLocation self))))
 
foreign import javascript unsafe "$1[\"hostname\"]"
        ghcjs_dom_worker_location_get_hostname ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.hostname Mozilla WorkerLocation.hostname documentation> 
workerLocationGetHostname ::
                          (MonadIO m, IsWorkerLocation self, FromJSString result) =>
                            self -> m result
workerLocationGetHostname self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_worker_location_get_hostname
            (unWorkerLocation (toWorkerLocation self))))
 
foreign import javascript unsafe "$1[\"port\"]"
        ghcjs_dom_worker_location_get_port ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.port Mozilla WorkerLocation.port documentation> 
workerLocationGetPort ::
                      (MonadIO m, IsWorkerLocation self, FromJSString result) =>
                        self -> m result
workerLocationGetPort self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_worker_location_get_port
            (unWorkerLocation (toWorkerLocation self))))
 
foreign import javascript unsafe "$1[\"pathname\"]"
        ghcjs_dom_worker_location_get_pathname ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.pathname Mozilla WorkerLocation.pathname documentation> 
workerLocationGetPathname ::
                          (MonadIO m, IsWorkerLocation self, FromJSString result) =>
                            self -> m result
workerLocationGetPathname self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_worker_location_get_pathname
            (unWorkerLocation (toWorkerLocation self))))
 
foreign import javascript unsafe "$1[\"search\"]"
        ghcjs_dom_worker_location_get_search ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.search Mozilla WorkerLocation.search documentation> 
workerLocationGetSearch ::
                        (MonadIO m, IsWorkerLocation self, FromJSString result) =>
                          self -> m result
workerLocationGetSearch self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_worker_location_get_search
            (unWorkerLocation (toWorkerLocation self))))
 
foreign import javascript unsafe "$1[\"hash\"]"
        ghcjs_dom_worker_location_get_hash ::
        JSRef WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.hash Mozilla WorkerLocation.hash documentation> 
workerLocationGetHash ::
                      (MonadIO m, IsWorkerLocation self, FromJSString result) =>
                        self -> m result
workerLocationGetHash self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_worker_location_get_hash
            (unWorkerLocation (toWorkerLocation self))))
#else
module GHCJS.DOM.WorkerLocation (
  ) where
#endif
