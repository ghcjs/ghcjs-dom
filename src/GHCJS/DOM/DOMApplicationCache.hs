{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMApplicationCache
       (js_update, update, js_swapCache, swapCache, js_abort, abort,
        pattern UNCACHED, pattern IDLE, pattern CHECKING,
        pattern DOWNLOADING, pattern UPDATEREADY, pattern OBSOLETE,
        js_getStatus, getStatus, checking, error, noUpdate, downloading,
        progress, updateReady, cached, obsolete, DOMApplicationCache,
        castToDOMApplicationCache, gTypeDOMApplicationCache)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"update\"]()" js_update ::
        JSRef DOMApplicationCache -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.update Mozilla DOMApplicationCache.update documentation> 
update :: (MonadIO m) => DOMApplicationCache -> m ()
update self = liftIO (js_update (unDOMApplicationCache self))
 
foreign import javascript unsafe "$1[\"swapCache\"]()" js_swapCache
        :: JSRef DOMApplicationCache -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.swapCache Mozilla DOMApplicationCache.swapCache documentation> 
swapCache :: (MonadIO m) => DOMApplicationCache -> m ()
swapCache self = liftIO (js_swapCache (unDOMApplicationCache self))
 
foreign import javascript unsafe "$1[\"abort\"]()" js_abort ::
        JSRef DOMApplicationCache -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.abort Mozilla DOMApplicationCache.abort documentation> 
abort :: (MonadIO m) => DOMApplicationCache -> m ()
abort self = liftIO (js_abort (unDOMApplicationCache self))
pattern UNCACHED = 0
pattern IDLE = 1
pattern CHECKING = 2
pattern DOWNLOADING = 3
pattern UPDATEREADY = 4
pattern OBSOLETE = 5
 
foreign import javascript unsafe "$1[\"status\"]" js_getStatus ::
        JSRef DOMApplicationCache -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.status Mozilla DOMApplicationCache.status documentation> 
getStatus :: (MonadIO m) => DOMApplicationCache -> m Word
getStatus self = liftIO (js_getStatus (unDOMApplicationCache self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.onchecking Mozilla DOMApplicationCache.onchecking documentation> 
checking :: EventName DOMApplicationCache Event
checking = unsafeEventName (toJSString "checking")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.onerror Mozilla DOMApplicationCache.onerror documentation> 
error :: EventName DOMApplicationCache UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.onnoupdate Mozilla DOMApplicationCache.onnoupdate documentation> 
noUpdate :: EventName DOMApplicationCache Event
noUpdate = unsafeEventName (toJSString "noupdate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.ondownloading Mozilla DOMApplicationCache.ondownloading documentation> 
downloading :: EventName DOMApplicationCache Event
downloading = unsafeEventName (toJSString "downloading")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.onprogress Mozilla DOMApplicationCache.onprogress documentation> 
progress :: EventName DOMApplicationCache ProgressEvent
progress = unsafeEventName (toJSString "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.onupdateready Mozilla DOMApplicationCache.onupdateready documentation> 
updateReady :: EventName DOMApplicationCache Event
updateReady = unsafeEventName (toJSString "updateready")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.oncached Mozilla DOMApplicationCache.oncached documentation> 
cached :: EventName DOMApplicationCache Event
cached = unsafeEventName (toJSString "cached")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache.onobsolete Mozilla DOMApplicationCache.onobsolete documentation> 
obsolete :: EventName DOMApplicationCache Event
obsolete = unsafeEventName (toJSString "obsolete")
#else
module GHCJS.DOM.DOMApplicationCache (
  module Graphics.UI.Gtk.WebKit.DOM.DOMApplicationCache
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMApplicationCache
#endif
