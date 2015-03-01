{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCDTMFSender
       (js_insertDTMF, insertDTMF, js_getCanInsertDTMF, getCanInsertDTMF,
        js_getTrack, getTrack, js_getToneBuffer, getToneBuffer,
        js_getDuration, getDuration, js_getInterToneGap, getInterToneGap,
        toneChange, RTCDTMFSender, castToRTCDTMFSender, gTypeRTCDTMFSender)
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

 
foreign import javascript unsafe "$1[\"insertDTMF\"]($2, $3, $4)"
        js_insertDTMF ::
        JSRef RTCDTMFSender -> JSString -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.insertDTMF Mozilla RTCDTMFSender.insertDTMF documentation> 
insertDTMF ::
           (MonadIO m, ToJSString tones) =>
             RTCDTMFSender -> tones -> Int -> Int -> m ()
insertDTMF self tones duration interToneGap
  = liftIO
      (js_insertDTMF (unRTCDTMFSender self) (toJSString tones) duration
         interToneGap)
 
foreign import javascript unsafe "($1[\"canInsertDTMF\"] ? 1 : 0)"
        js_getCanInsertDTMF :: JSRef RTCDTMFSender -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.canInsertDTMF Mozilla RTCDTMFSender.canInsertDTMF documentation> 
getCanInsertDTMF :: (MonadIO m) => RTCDTMFSender -> m Bool
getCanInsertDTMF self
  = liftIO (js_getCanInsertDTMF (unRTCDTMFSender self))
 
foreign import javascript unsafe "$1[\"track\"]" js_getTrack ::
        JSRef RTCDTMFSender -> IO (JSRef MediaStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.track Mozilla RTCDTMFSender.track documentation> 
getTrack ::
         (MonadIO m) => RTCDTMFSender -> m (Maybe MediaStreamTrack)
getTrack self
  = liftIO ((js_getTrack (unRTCDTMFSender self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"toneBuffer\"]"
        js_getToneBuffer :: JSRef RTCDTMFSender -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.toneBuffer Mozilla RTCDTMFSender.toneBuffer documentation> 
getToneBuffer ::
              (MonadIO m, FromJSString result) => RTCDTMFSender -> m result
getToneBuffer self
  = liftIO
      (fromJSString <$> (js_getToneBuffer (unRTCDTMFSender self)))
 
foreign import javascript unsafe "$1[\"duration\"]" js_getDuration
        :: JSRef RTCDTMFSender -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.duration Mozilla RTCDTMFSender.duration documentation> 
getDuration :: (MonadIO m) => RTCDTMFSender -> m Int
getDuration self = liftIO (js_getDuration (unRTCDTMFSender self))
 
foreign import javascript unsafe "$1[\"interToneGap\"]"
        js_getInterToneGap :: JSRef RTCDTMFSender -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.interToneGap Mozilla RTCDTMFSender.interToneGap documentation> 
getInterToneGap :: (MonadIO m) => RTCDTMFSender -> m Int
getInterToneGap self
  = liftIO (js_getInterToneGap (unRTCDTMFSender self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.ontonechange Mozilla RTCDTMFSender.ontonechange documentation> 
toneChange :: EventName RTCDTMFSender Event
toneChange = unsafeEventName (toJSString "tonechange")
#else
module GHCJS.DOM.RTCDTMFSender (
  ) where
#endif
