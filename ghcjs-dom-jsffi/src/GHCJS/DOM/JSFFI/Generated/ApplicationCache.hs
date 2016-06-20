{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.ApplicationCache
       (js_update, update, js_swapCache, swapCache, js_abort, abort,
        pattern UNCACHED, pattern IDLE, pattern CHECKING,
        pattern DOWNLOADING, pattern UPDATEREADY, pattern OBSOLETE,
        js_getStatus, getStatus, checking, error, noUpdate, downloading,
        progress, updateReady, cached, obsolete, ApplicationCache,
        castToApplicationCache, gTypeApplicationCache)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"update\"]()" js_update ::
        ApplicationCache -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.update Mozilla ApplicationCache.update documentation> 
update :: (MonadIO m) => ApplicationCache -> m ()
update self = liftIO (js_update (self))
 
foreign import javascript unsafe "$1[\"swapCache\"]()" js_swapCache
        :: ApplicationCache -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.swapCache Mozilla ApplicationCache.swapCache documentation> 
swapCache :: (MonadIO m) => ApplicationCache -> m ()
swapCache self = liftIO (js_swapCache (self))
 
foreign import javascript unsafe "$1[\"abort\"]()" js_abort ::
        ApplicationCache -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.abort Mozilla ApplicationCache.abort documentation> 
abort :: (MonadIO m) => ApplicationCache -> m ()
abort self = liftIO (js_abort (self))
pattern UNCACHED = 0
pattern IDLE = 1
pattern CHECKING = 2
pattern DOWNLOADING = 3
pattern UPDATEREADY = 4
pattern OBSOLETE = 5
 
foreign import javascript unsafe "$1[\"status\"]" js_getStatus ::
        ApplicationCache -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.status Mozilla ApplicationCache.status documentation> 
getStatus :: (MonadIO m) => ApplicationCache -> m Word
getStatus self = liftIO (js_getStatus (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.onchecking Mozilla ApplicationCache.onchecking documentation> 
checking :: EventName ApplicationCache Event
checking = unsafeEventName (toJSString "checking")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.onerror Mozilla ApplicationCache.onerror documentation> 
error :: EventName ApplicationCache UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.onnoupdate Mozilla ApplicationCache.onnoupdate documentation> 
noUpdate :: EventName ApplicationCache Event
noUpdate = unsafeEventName (toJSString "noupdate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.ondownloading Mozilla ApplicationCache.ondownloading documentation> 
downloading :: EventName ApplicationCache Event
downloading = unsafeEventName (toJSString "downloading")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.onprogress Mozilla ApplicationCache.onprogress documentation> 
progress :: EventName ApplicationCache ProgressEvent
progress = unsafeEventName (toJSString "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.onupdateready Mozilla ApplicationCache.onupdateready documentation> 
updateReady :: EventName ApplicationCache Event
updateReady = unsafeEventName (toJSString "updateready")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.oncached Mozilla ApplicationCache.oncached documentation> 
cached :: EventName ApplicationCache Event
cached = unsafeEventName (toJSString "cached")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache.onobsolete Mozilla ApplicationCache.onobsolete documentation> 
obsolete :: EventName ApplicationCache Event
obsolete = unsafeEventName (toJSString "obsolete")