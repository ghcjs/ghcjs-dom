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
import Control.Monad.IO.Class (MonadIO(..))
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
                     (MonadIO m, IsSpeechSynthesis self,
                      IsSpeechSynthesisUtterance utterance) =>
                       self -> Maybe utterance -> m ()
speechSynthesisSpeak self utterance
  = liftIO
      (ghcjs_dom_speech_synthesis_speak
         (unSpeechSynthesis (toSpeechSynthesis self))
         (maybe jsNull
            (unSpeechSynthesisUtterance . toSpeechSynthesisUtterance)
            utterance))
 
foreign import javascript unsafe "$1[\"cancel\"]()"
        ghcjs_dom_speech_synthesis_cancel :: JSRef SpeechSynthesis -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.cancel Mozilla SpeechSynthesis.cancel documentation> 
speechSynthesisCancel ::
                      (MonadIO m, IsSpeechSynthesis self) => self -> m ()
speechSynthesisCancel self
  = liftIO
      (ghcjs_dom_speech_synthesis_cancel
         (unSpeechSynthesis (toSpeechSynthesis self)))
 
foreign import javascript unsafe "$1[\"pause\"]()"
        ghcjs_dom_speech_synthesis_pause :: JSRef SpeechSynthesis -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.pause Mozilla SpeechSynthesis.pause documentation> 
speechSynthesisPause ::
                     (MonadIO m, IsSpeechSynthesis self) => self -> m ()
speechSynthesisPause self
  = liftIO
      (ghcjs_dom_speech_synthesis_pause
         (unSpeechSynthesis (toSpeechSynthesis self)))
 
foreign import javascript unsafe "$1[\"resume\"]()"
        ghcjs_dom_speech_synthesis_resume :: JSRef SpeechSynthesis -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.resume Mozilla SpeechSynthesis.resume documentation> 
speechSynthesisResume ::
                      (MonadIO m, IsSpeechSynthesis self) => self -> m ()
speechSynthesisResume self
  = liftIO
      (ghcjs_dom_speech_synthesis_resume
         (unSpeechSynthesis (toSpeechSynthesis self)))
 
foreign import javascript unsafe "$1[\"getVoices\"]()"
        ghcjs_dom_speech_synthesis_get_voices ::
        JSRef SpeechSynthesis -> IO (JSRef [Maybe SpeechSynthesisVoice])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.voices Mozilla SpeechSynthesis.voices documentation> 
speechSynthesisGetVoices ::
                         (MonadIO m, IsSpeechSynthesis self) =>
                           self -> m [Maybe SpeechSynthesisVoice]
speechSynthesisGetVoices self
  = liftIO
      ((ghcjs_dom_speech_synthesis_get_voices
          (unSpeechSynthesis (toSpeechSynthesis self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "($1[\"pending\"] ? 1 : 0)"
        ghcjs_dom_speech_synthesis_get_pending ::
        JSRef SpeechSynthesis -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.pending Mozilla SpeechSynthesis.pending documentation> 
speechSynthesisGetPending ::
                          (MonadIO m, IsSpeechSynthesis self) => self -> m Bool
speechSynthesisGetPending self
  = liftIO
      (ghcjs_dom_speech_synthesis_get_pending
         (unSpeechSynthesis (toSpeechSynthesis self)))
 
foreign import javascript unsafe "($1[\"speaking\"] ? 1 : 0)"
        ghcjs_dom_speech_synthesis_get_speaking ::
        JSRef SpeechSynthesis -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.speaking Mozilla SpeechSynthesis.speaking documentation> 
speechSynthesisGetSpeaking ::
                           (MonadIO m, IsSpeechSynthesis self) => self -> m Bool
speechSynthesisGetSpeaking self
  = liftIO
      (ghcjs_dom_speech_synthesis_get_speaking
         (unSpeechSynthesis (toSpeechSynthesis self)))
 
foreign import javascript unsafe "($1[\"paused\"] ? 1 : 0)"
        ghcjs_dom_speech_synthesis_get_paused ::
        JSRef SpeechSynthesis -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.paused Mozilla SpeechSynthesis.paused documentation> 
speechSynthesisGetPaused ::
                         (MonadIO m, IsSpeechSynthesis self) => self -> m Bool
speechSynthesisGetPaused self
  = liftIO
      (ghcjs_dom_speech_synthesis_get_paused
         (unSpeechSynthesis (toSpeechSynthesis self)))
#else
module GHCJS.DOM.SpeechSynthesis (
  ) where
#endif
