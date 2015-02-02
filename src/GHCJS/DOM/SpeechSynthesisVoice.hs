{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SpeechSynthesisVoice
       (ghcjs_dom_speech_synthesis_voice_get_voice_uri,
        speechSynthesisVoiceGetVoiceURI,
        ghcjs_dom_speech_synthesis_voice_get_name,
        speechSynthesisVoiceGetName,
        ghcjs_dom_speech_synthesis_voice_get_lang,
        speechSynthesisVoiceGetLang,
        ghcjs_dom_speech_synthesis_voice_get_local_service,
        speechSynthesisVoiceGetLocalService,
        ghcjs_dom_speech_synthesis_voice_get_default,
        speechSynthesisVoiceGetDefault, SpeechSynthesisVoice,
        IsSpeechSynthesisVoice, castToSpeechSynthesisVoice,
        gTypeSpeechSynthesisVoice, toSpeechSynthesisVoice)
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

 
foreign import javascript unsafe "$1[\"voiceURI\"]"
        ghcjs_dom_speech_synthesis_voice_get_voice_uri ::
        JSRef SpeechSynthesisVoice -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.voiceURI Mozilla SpeechSynthesisVoice.voiceURI documentation> 
speechSynthesisVoiceGetVoiceURI ::
                                (IsSpeechSynthesisVoice self, FromJSString result) =>
                                  self -> IO result
speechSynthesisVoiceGetVoiceURI self
  = fromJSString <$>
      (ghcjs_dom_speech_synthesis_voice_get_voice_uri
         (unSpeechSynthesisVoice (toSpeechSynthesisVoice self)))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_speech_synthesis_voice_get_name ::
        JSRef SpeechSynthesisVoice -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.name Mozilla SpeechSynthesisVoice.name documentation> 
speechSynthesisVoiceGetName ::
                            (IsSpeechSynthesisVoice self, FromJSString result) =>
                              self -> IO result
speechSynthesisVoiceGetName self
  = fromJSString <$>
      (ghcjs_dom_speech_synthesis_voice_get_name
         (unSpeechSynthesisVoice (toSpeechSynthesisVoice self)))
 
foreign import javascript unsafe "$1[\"lang\"]"
        ghcjs_dom_speech_synthesis_voice_get_lang ::
        JSRef SpeechSynthesisVoice -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.lang Mozilla SpeechSynthesisVoice.lang documentation> 
speechSynthesisVoiceGetLang ::
                            (IsSpeechSynthesisVoice self, FromJSString result) =>
                              self -> IO result
speechSynthesisVoiceGetLang self
  = fromJSString <$>
      (ghcjs_dom_speech_synthesis_voice_get_lang
         (unSpeechSynthesisVoice (toSpeechSynthesisVoice self)))
 
foreign import javascript unsafe "($1[\"localService\"] ? 1 : 0)"
        ghcjs_dom_speech_synthesis_voice_get_local_service ::
        JSRef SpeechSynthesisVoice -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.localService Mozilla SpeechSynthesisVoice.localService documentation> 
speechSynthesisVoiceGetLocalService ::
                                    (IsSpeechSynthesisVoice self) => self -> IO Bool
speechSynthesisVoiceGetLocalService self
  = ghcjs_dom_speech_synthesis_voice_get_local_service
      (unSpeechSynthesisVoice (toSpeechSynthesisVoice self))
 
foreign import javascript unsafe "($1[\"default\"] ? 1 : 0)"
        ghcjs_dom_speech_synthesis_voice_get_default ::
        JSRef SpeechSynthesisVoice -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.default Mozilla SpeechSynthesisVoice.default documentation> 
speechSynthesisVoiceGetDefault ::
                               (IsSpeechSynthesisVoice self) => self -> IO Bool
speechSynthesisVoiceGetDefault self
  = ghcjs_dom_speech_synthesis_voice_get_default
      (unSpeechSynthesisVoice (toSpeechSynthesisVoice self))
#else
module GHCJS.DOM.SpeechSynthesisVoice (
  ) where
#endif
