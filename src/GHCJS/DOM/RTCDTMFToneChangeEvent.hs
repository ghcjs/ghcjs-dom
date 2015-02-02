{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCDTMFToneChangeEvent
       (ghcjs_dom_rtcdtmf_tone_change_event_get_tone,
        rtcdtmfToneChangeEventGetTone, RTCDTMFToneChangeEvent,
        IsRTCDTMFToneChangeEvent, castToRTCDTMFToneChangeEvent,
        gTypeRTCDTMFToneChangeEvent, toRTCDTMFToneChangeEvent)
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

 
foreign import javascript unsafe "$1[\"tone\"]"
        ghcjs_dom_rtcdtmf_tone_change_event_get_tone ::
        JSRef RTCDTMFToneChangeEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFToneChangeEvent.tone Mozilla RTCDTMFToneChangeEvent.tone documentation> 
rtcdtmfToneChangeEventGetTone ::
                              (IsRTCDTMFToneChangeEvent self, FromJSString result) =>
                                self -> IO result
rtcdtmfToneChangeEventGetTone self
  = fromJSString <$>
      (ghcjs_dom_rtcdtmf_tone_change_event_get_tone
         (unRTCDTMFToneChangeEvent (toRTCDTMFToneChangeEvent self)))
#else
module GHCJS.DOM.RTCDTMFToneChangeEvent (
  ) where
#endif
