{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCDTMFSender
       (ghcjs_dom_rtcdtmf_sender_insert_dtmf, rtcdtmfSenderInsertDTMF,
        ghcjs_dom_rtcdtmf_sender_get_can_insert_dtmf,
        rtcdtmfSenderGetCanInsertDTMF, ghcjs_dom_rtcdtmf_sender_get_track,
        rtcdtmfSenderGetTrack, ghcjs_dom_rtcdtmf_sender_get_tone_buffer,
        rtcdtmfSenderGetToneBuffer, ghcjs_dom_rtcdtmf_sender_get_duration,
        rtcdtmfSenderGetDuration,
        ghcjs_dom_rtcdtmf_sender_get_inter_tone_gap,
        rtcdtmfSenderGetInterToneGap, rtcdtmfSenderToneChange,
        RTCDTMFSender, IsRTCDTMFSender, castToRTCDTMFSender,
        gTypeRTCDTMFSender, toRTCDTMFSender)
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

 
foreign import javascript unsafe "$1[\"insertDTMF\"]($2, $3, $4)"
        ghcjs_dom_rtcdtmf_sender_insert_dtmf ::
        JSRef RTCDTMFSender -> JSString -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.insertDTMF Mozilla RTCDTMFSender.insertDTMF documentation> 
rtcdtmfSenderInsertDTMF ::
                        (MonadIO m, IsRTCDTMFSender self, ToJSString tones) =>
                          self -> tones -> Int -> Int -> m ()
rtcdtmfSenderInsertDTMF self tones duration interToneGap
  = liftIO
      (ghcjs_dom_rtcdtmf_sender_insert_dtmf
         (unRTCDTMFSender (toRTCDTMFSender self))
         (toJSString tones)
         duration
         interToneGap)
 
foreign import javascript unsafe "($1[\"canInsertDTMF\"] ? 1 : 0)"
        ghcjs_dom_rtcdtmf_sender_get_can_insert_dtmf ::
        JSRef RTCDTMFSender -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.canInsertDTMF Mozilla RTCDTMFSender.canInsertDTMF documentation> 
rtcdtmfSenderGetCanInsertDTMF ::
                              (MonadIO m, IsRTCDTMFSender self) => self -> m Bool
rtcdtmfSenderGetCanInsertDTMF self
  = liftIO
      (ghcjs_dom_rtcdtmf_sender_get_can_insert_dtmf
         (unRTCDTMFSender (toRTCDTMFSender self)))
 
foreign import javascript unsafe "$1[\"track\"]"
        ghcjs_dom_rtcdtmf_sender_get_track ::
        JSRef RTCDTMFSender -> IO (JSRef MediaStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.track Mozilla RTCDTMFSender.track documentation> 
rtcdtmfSenderGetTrack ::
                      (MonadIO m, IsRTCDTMFSender self) =>
                        self -> m (Maybe MediaStreamTrack)
rtcdtmfSenderGetTrack self
  = liftIO
      ((ghcjs_dom_rtcdtmf_sender_get_track
          (unRTCDTMFSender (toRTCDTMFSender self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"toneBuffer\"]"
        ghcjs_dom_rtcdtmf_sender_get_tone_buffer ::
        JSRef RTCDTMFSender -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.toneBuffer Mozilla RTCDTMFSender.toneBuffer documentation> 
rtcdtmfSenderGetToneBuffer ::
                           (MonadIO m, IsRTCDTMFSender self, FromJSString result) =>
                             self -> m result
rtcdtmfSenderGetToneBuffer self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_rtcdtmf_sender_get_tone_buffer
            (unRTCDTMFSender (toRTCDTMFSender self))))
 
foreign import javascript unsafe "$1[\"duration\"]"
        ghcjs_dom_rtcdtmf_sender_get_duration ::
        JSRef RTCDTMFSender -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.duration Mozilla RTCDTMFSender.duration documentation> 
rtcdtmfSenderGetDuration ::
                         (MonadIO m, IsRTCDTMFSender self) => self -> m Int
rtcdtmfSenderGetDuration self
  = liftIO
      (ghcjs_dom_rtcdtmf_sender_get_duration
         (unRTCDTMFSender (toRTCDTMFSender self)))
 
foreign import javascript unsafe "$1[\"interToneGap\"]"
        ghcjs_dom_rtcdtmf_sender_get_inter_tone_gap ::
        JSRef RTCDTMFSender -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.interToneGap Mozilla RTCDTMFSender.interToneGap documentation> 
rtcdtmfSenderGetInterToneGap ::
                             (MonadIO m, IsRTCDTMFSender self) => self -> m Int
rtcdtmfSenderGetInterToneGap self
  = liftIO
      (ghcjs_dom_rtcdtmf_sender_get_inter_tone_gap
         (unRTCDTMFSender (toRTCDTMFSender self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.toneChange Mozilla RTCDTMFSender.toneChange documentation> 
rtcdtmfSenderToneChange ::
                        (IsRTCDTMFSender self, IsEventTarget self) => EventName self Event
rtcdtmfSenderToneChange = unsafeEventName (toJSString "tonechange")
#else
module GHCJS.DOM.RTCDTMFSender (
  ) where
#endif
