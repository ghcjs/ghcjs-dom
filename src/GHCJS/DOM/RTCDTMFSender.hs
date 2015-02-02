{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCDTMFSender
       (ghcjs_dom_rtcdtmf_sender_insert_dtmf, rtcdtmfSenderInsertDTMF,
        ghcjs_dom_rtcdtmf_sender_dispatch_event,
        rtcdtmfSenderDispatchEvent,
        ghcjs_dom_rtcdtmf_sender_get_can_insert_dtmf,
        rtcdtmfSenderGetCanInsertDTMF, ghcjs_dom_rtcdtmf_sender_get_track,
        rtcdtmfSenderGetTrack, ghcjs_dom_rtcdtmf_sender_get_tone_buffer,
        rtcdtmfSenderGetToneBuffer, ghcjs_dom_rtcdtmf_sender_get_duration,
        rtcdtmfSenderGetDuration,
        ghcjs_dom_rtcdtmf_sender_get_inter_tone_gap,
        rtcdtmfSenderGetInterToneGap, rtcdtmfSenderOntonechange,
        RTCDTMFSender, IsRTCDTMFSender, castToRTCDTMFSender,
        gTypeRTCDTMFSender, toRTCDTMFSender)
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

 
foreign import javascript unsafe "$1[\"insertDTMF\"]($2, $3, $4)"
        ghcjs_dom_rtcdtmf_sender_insert_dtmf ::
        JSRef RTCDTMFSender -> JSString -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.insertDTMF Mozilla RTCDTMFSender.insertDTMF documentation> 
rtcdtmfSenderInsertDTMF ::
                        (IsRTCDTMFSender self, ToJSString tones) =>
                          self -> tones -> Int -> Int -> IO ()
rtcdtmfSenderInsertDTMF self tones duration interToneGap
  = ghcjs_dom_rtcdtmf_sender_insert_dtmf
      (unRTCDTMFSender (toRTCDTMFSender self))
      (toJSString tones)
      duration
      interToneGap
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_rtcdtmf_sender_dispatch_event ::
        JSRef RTCDTMFSender -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.dispatchEvent Mozilla RTCDTMFSender.dispatchEvent documentation> 
rtcdtmfSenderDispatchEvent ::
                           (IsRTCDTMFSender self, IsEvent event) =>
                             self -> Maybe event -> IO Bool
rtcdtmfSenderDispatchEvent self event
  = ghcjs_dom_rtcdtmf_sender_dispatch_event
      (unRTCDTMFSender (toRTCDTMFSender self))
      (maybe jsNull (unEvent . toEvent) event)
 
foreign import javascript unsafe "($1[\"canInsertDTMF\"] ? 1 : 0)"
        ghcjs_dom_rtcdtmf_sender_get_can_insert_dtmf ::
        JSRef RTCDTMFSender -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.canInsertDTMF Mozilla RTCDTMFSender.canInsertDTMF documentation> 
rtcdtmfSenderGetCanInsertDTMF ::
                              (IsRTCDTMFSender self) => self -> IO Bool
rtcdtmfSenderGetCanInsertDTMF self
  = ghcjs_dom_rtcdtmf_sender_get_can_insert_dtmf
      (unRTCDTMFSender (toRTCDTMFSender self))
 
foreign import javascript unsafe "$1[\"track\"]"
        ghcjs_dom_rtcdtmf_sender_get_track ::
        JSRef RTCDTMFSender -> IO (JSRef MediaStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.track Mozilla RTCDTMFSender.track documentation> 
rtcdtmfSenderGetTrack ::
                      (IsRTCDTMFSender self) => self -> IO (Maybe MediaStreamTrack)
rtcdtmfSenderGetTrack self
  = (ghcjs_dom_rtcdtmf_sender_get_track
       (unRTCDTMFSender (toRTCDTMFSender self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"toneBuffer\"]"
        ghcjs_dom_rtcdtmf_sender_get_tone_buffer ::
        JSRef RTCDTMFSender -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.toneBuffer Mozilla RTCDTMFSender.toneBuffer documentation> 
rtcdtmfSenderGetToneBuffer ::
                           (IsRTCDTMFSender self, FromJSString result) => self -> IO result
rtcdtmfSenderGetToneBuffer self
  = fromJSString <$>
      (ghcjs_dom_rtcdtmf_sender_get_tone_buffer
         (unRTCDTMFSender (toRTCDTMFSender self)))
 
foreign import javascript unsafe "$1[\"duration\"]"
        ghcjs_dom_rtcdtmf_sender_get_duration ::
        JSRef RTCDTMFSender -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.duration Mozilla RTCDTMFSender.duration documentation> 
rtcdtmfSenderGetDuration ::
                         (IsRTCDTMFSender self) => self -> IO Int
rtcdtmfSenderGetDuration self
  = ghcjs_dom_rtcdtmf_sender_get_duration
      (unRTCDTMFSender (toRTCDTMFSender self))
 
foreign import javascript unsafe "$1[\"interToneGap\"]"
        ghcjs_dom_rtcdtmf_sender_get_inter_tone_gap ::
        JSRef RTCDTMFSender -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.interToneGap Mozilla RTCDTMFSender.interToneGap documentation> 
rtcdtmfSenderGetInterToneGap ::
                             (IsRTCDTMFSender self) => self -> IO Int
rtcdtmfSenderGetInterToneGap self
  = ghcjs_dom_rtcdtmf_sender_get_inter_tone_gap
      (unRTCDTMFSender (toRTCDTMFSender self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender.ontonechange Mozilla RTCDTMFSender.ontonechange documentation> 
rtcdtmfSenderOntonechange ::
                          (IsRTCDTMFSender self) => Signal self (EventM UIEvent self ())
rtcdtmfSenderOntonechange = (connect "tonechange")
#else
module GHCJS.DOM.RTCDTMFSender (
  ) where
#endif
