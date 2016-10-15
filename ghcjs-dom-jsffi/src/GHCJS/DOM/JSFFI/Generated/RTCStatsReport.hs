{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RTCStatsReport
       (js_stat, stat, stat_, js_names, names, names_, js_getTimestamp,
        getTimestamp, getTimestampUnchecked, js_getId, getId, js_getType,
        getType, js_getLocal, getLocal, getLocalUnchecked, js_getRemote,
        getRemote, getRemoteUnchecked, RTCStatsReport(..),
        gTypeRTCStatsReport)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"stat\"]($2)" js_stat ::
        RTCStatsReport -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.stat Mozilla RTCStatsReport.stat documentation> 
stat ::
     (MonadIO m, ToJSString name, FromJSString result) =>
       RTCStatsReport -> name -> m result
stat self name
  = liftIO (fromJSString <$> (js_stat (self) (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.stat Mozilla RTCStatsReport.stat documentation> 
stat_ ::
      (MonadIO m, ToJSString name) => RTCStatsReport -> name -> m ()
stat_ self name = liftIO (void (js_stat (self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"names\"]()" js_names ::
        RTCStatsReport -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.names Mozilla RTCStatsReport.names documentation> 
names ::
      (MonadIO m, FromJSString result) => RTCStatsReport -> m [result]
names self = liftIO ((js_names (self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.names Mozilla RTCStatsReport.names documentation> 
names_ :: (MonadIO m) => RTCStatsReport -> m ()
names_ self = liftIO (void (js_names (self)))
 
foreign import javascript unsafe "$1[\"timestamp\"]"
        js_getTimestamp :: RTCStatsReport -> IO (Nullable Date)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.timestamp Mozilla RTCStatsReport.timestamp documentation> 
getTimestamp :: (MonadIO m) => RTCStatsReport -> m (Maybe Date)
getTimestamp self
  = liftIO (nullableToMaybe <$> (js_getTimestamp (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.timestamp Mozilla RTCStatsReport.timestamp documentation> 
getTimestampUnchecked :: (MonadIO m) => RTCStatsReport -> m Date
getTimestampUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getTimestamp (self)))
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        RTCStatsReport -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.id Mozilla RTCStatsReport.id documentation> 
getId ::
      (MonadIO m, FromJSString result) => RTCStatsReport -> m result
getId self = liftIO (fromJSString <$> (js_getId (self)))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        RTCStatsReport -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.type Mozilla RTCStatsReport.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => RTCStatsReport -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"local\"]" js_getLocal ::
        RTCStatsReport -> IO (Nullable RTCStatsReport)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.local Mozilla RTCStatsReport.local documentation> 
getLocal ::
         (MonadIO m) => RTCStatsReport -> m (Maybe RTCStatsReport)
getLocal self = liftIO (nullableToMaybe <$> (js_getLocal (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.local Mozilla RTCStatsReport.local documentation> 
getLocalUnchecked ::
                  (MonadIO m) => RTCStatsReport -> m RTCStatsReport
getLocalUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getLocal (self)))
 
foreign import javascript unsafe "$1[\"remote\"]" js_getRemote ::
        RTCStatsReport -> IO (Nullable RTCStatsReport)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.remote Mozilla RTCStatsReport.remote documentation> 
getRemote ::
          (MonadIO m) => RTCStatsReport -> m (Maybe RTCStatsReport)
getRemote self = liftIO (nullableToMaybe <$> (js_getRemote (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.remote Mozilla RTCStatsReport.remote documentation> 
getRemoteUnchecked ::
                   (MonadIO m) => RTCStatsReport -> m RTCStatsReport
getRemoteUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRemote (self)))