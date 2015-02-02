{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SpeechSynthesis
       (ghcjs_dom_speech_synthesis_speak, speechSynthesisSpeak,
        ghcjs_dom_speech_synthesis_cancel, speechSynthesisCancel,
        ghcjs_dom_speech_synthesis_pause, speechSynthesisPause,
        ghcjs_dom_speech_synthesis_resume, speechSynthesisResume,
        ghcjs_dom_speech_synthesis_get_voices, speechSynthesisGetVoices,
        ghcjs_dom_speech_synthesis_get_pending, speechSynthesisGetPending,
        ghcjs_dom_speech_synthesis_get_speaking,
        speechSynthesisGetSpeaking, ghcjs_dom_speech_synthesis_get_paused,
        speechSynthesisGetPaused, SpeechSynthesis, IsSpeechSynthesis,
        castToSpeechSynthesis, gTypeSpeechSynthesis, toSpeechSynthesis)
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

 
foreign import javascript unsafe "$1[\"speak\"]($2)"
        ghcjs_dom_speech_synthesis_speak ::
        JSRef SpeechSynthesis -> JSRef SpeechSynthesisUtterance -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.speak Mozilla SpeechSynthesis.speak documentation> 
speechSynthesisSpeak ::
                     (IsSpeechSynthesis self, IsSpeechSynthesisUtterance utterance) =>
                       self -> Maybe utterance -> IO ()
speechSynthesisSpeak self utterance
  = ghcjs_dom_speech_synthesis_speak
      (unSpeechSynthesis (toSpeechSynthesis self))
      (maybe jsNull
         (unSpeechSynthesisUtterance . toSpeechSynthesisUtterance)
         utterance)
 
foreign import javascript unsafe "$1[\"cancel\"]()"
        ghcjs_dom_speech_synthesis_cancel :: JSRef SpeechSynthesis -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.cancel Mozilla SpeechSynthesis.cancel documentation> 
speechSynthesisCancel :: (IsSpeechSynthesis self) => self -> IO ()
speechSynthesisCancel self
  = ghcjs_dom_speech_synthesis_cancel
      (unSpeechSynthesis (toSpeechSynthesis self))
 
foreign import javascript unsafe "$1[\"pause\"]()"
        ghcjs_dom_speech_synthesis_pause :: JSRef SpeechSynthesis -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.pause Mozilla SpeechSynthesis.pause documentation> 
speechSynthesisPause :: (IsSpeechSynthesis self) => self -> IO ()
speechSynthesisPause self
  = ghcjs_dom_speech_synthesis_pause
      (unSpeechSynthesis (toSpeechSynthesis self))
 
foreign import javascript unsafe "$1[\"resume\"]()"
        ghcjs_dom_speech_synthesis_resume :: JSRef SpeechSynthesis -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.resume Mozilla SpeechSynthesis.resume documentation> 
speechSynthesisResume :: (IsSpeechSynthesis self) => self -> IO ()
speechSynthesisResume self
  = ghcjs_dom_speech_synthesis_resume
      (unSpeechSynthesis (toSpeechSynthesis self))
 
foreign import javascript unsafe "$1[\"getVoices\"]()"
        ghcjs_dom_speech_synthesis_get_voices ::
        JSRef SpeechSynthesis -> IO (JSRef [Maybe SpeechSynthesisVoice])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.voices Mozilla SpeechSynthesis.voices documentation> 
speechSynthesisGetVoices ::
                         (IsSpeechSynthesis self) => self -> IO [Maybe SpeechSynthesisVoice]
speechSynthesisGetVoices self
  = (ghcjs_dom_speech_synthesis_get_voices
       (unSpeechSynthesis (toSpeechSynthesis self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "($1[\"pending\"] ? 1 : 0)"
        ghcjs_dom_speech_synthesis_get_pending ::
        JSRef SpeechSynthesis -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.pending Mozilla SpeechSynthesis.pending documentation> 
speechSynthesisGetPending ::
                          (IsSpeechSynthesis self) => self -> IO Bool
speechSynthesisGetPending self
  = ghcjs_dom_speech_synthesis_get_pending
      (unSpeechSynthesis (toSpeechSynthesis self))
 
foreign import javascript unsafe "($1[\"speaking\"] ? 1 : 0)"
        ghcjs_dom_speech_synthesis_get_speaking ::
        JSRef SpeechSynthesis -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.speaking Mozilla SpeechSynthesis.speaking documentation> 
speechSynthesisGetSpeaking ::
                           (IsSpeechSynthesis self) => self -> IO Bool
speechSynthesisGetSpeaking self
  = ghcjs_dom_speech_synthesis_get_speaking
      (unSpeechSynthesis (toSpeechSynthesis self))
 
foreign import javascript unsafe "($1[\"paused\"] ? 1 : 0)"
        ghcjs_dom_speech_synthesis_get_paused ::
        JSRef SpeechSynthesis -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.paused Mozilla SpeechSynthesis.paused documentation> 
speechSynthesisGetPaused ::
                         (IsSpeechSynthesis self) => self -> IO Bool
speechSynthesisGetPaused self
  = ghcjs_dom_speech_synthesis_get_paused
      (unSpeechSynthesis (toSpeechSynthesis self))
#else
module GHCJS.DOM.SpeechSynthesis (
  ) where
#endif
