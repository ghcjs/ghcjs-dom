{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCStatsReport
       (js_stat, stat, js_names, names, js_getTimestamp, getTimestamp,
        js_getId, getId, js_getLocal, getLocal, js_getRemote, getRemote,
        RTCStatsReport, castToRTCStatsReport, gTypeRTCStatsReport)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"stat\"]($2)" js_stat ::
        JSRef RTCStatsReport -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.stat Mozilla RTCStatsReport.stat documentation> 
stat ::
     (MonadIO m, ToJSString name, FromJSString result) =>
       RTCStatsReport -> name -> m result
stat self name
  = liftIO
      (fromJSString <$>
         (js_stat (unRTCStatsReport self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"names\"]()" js_names ::
        JSRef RTCStatsReport -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.names Mozilla RTCStatsReport.names documentation> 
names ::
      (MonadIO m, FromJSString result) => RTCStatsReport -> m [result]
names self
  = liftIO
      ((js_names (unRTCStatsReport self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"timestamp\"]"
        js_getTimestamp :: JSRef RTCStatsReport -> IO (JSRef Date)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.timestamp Mozilla RTCStatsReport.timestamp documentation> 
getTimestamp :: (MonadIO m) => RTCStatsReport -> m (Maybe Date)
getTimestamp self
  = liftIO ((js_getTimestamp (unRTCStatsReport self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        JSRef RTCStatsReport -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.id Mozilla RTCStatsReport.id documentation> 
getId ::
      (MonadIO m, FromJSString result) => RTCStatsReport -> m result
getId self
  = liftIO (fromJSString <$> (js_getId (unRTCStatsReport self)))
 
foreign import javascript unsafe "$1[\"local\"]" js_getLocal ::
        JSRef RTCStatsReport -> IO (JSRef RTCStatsReport)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.local Mozilla RTCStatsReport.local documentation> 
getLocal ::
         (MonadIO m) => RTCStatsReport -> m (Maybe RTCStatsReport)
getLocal self
  = liftIO ((js_getLocal (unRTCStatsReport self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"remote\"]" js_getRemote ::
        JSRef RTCStatsReport -> IO (JSRef RTCStatsReport)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.remote Mozilla RTCStatsReport.remote documentation> 
getRemote ::
          (MonadIO m) => RTCStatsReport -> m (Maybe RTCStatsReport)
getRemote self
  = liftIO ((js_getRemote (unRTCStatsReport self)) >>= fromJSRef)
#else
module GHCJS.DOM.RTCStatsReport (
  ) where
#endif
