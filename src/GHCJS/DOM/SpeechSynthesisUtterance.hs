{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SpeechSynthesisUtterance
       (ghcjs_dom_speech_synthesis_utterance_new,
        speechSynthesisUtteranceNew,
        ghcjs_dom_speech_synthesis_utterance_dispatch_event,
        speechSynthesisUtteranceDispatchEvent,
        ghcjs_dom_speech_synthesis_utterance_set_text,
        speechSynthesisUtteranceSetText,
        ghcjs_dom_speech_synthesis_utterance_get_text,
        speechSynthesisUtteranceGetText,
        ghcjs_dom_speech_synthesis_utterance_set_lang,
        speechSynthesisUtteranceSetLang,
        ghcjs_dom_speech_synthesis_utterance_get_lang,
        speechSynthesisUtteranceGetLang,
        ghcjs_dom_speech_synthesis_utterance_set_voice,
        speechSynthesisUtteranceSetVoice,
        ghcjs_dom_speech_synthesis_utterance_get_voice,
        speechSynthesisUtteranceGetVoice,
        ghcjs_dom_speech_synthesis_utterance_set_volume,
        speechSynthesisUtteranceSetVolume,
        ghcjs_dom_speech_synthesis_utterance_get_volume,
        speechSynthesisUtteranceGetVolume,
        ghcjs_dom_speech_synthesis_utterance_set_rate,
        speechSynthesisUtteranceSetRate,
        ghcjs_dom_speech_synthesis_utterance_get_rate,
        speechSynthesisUtteranceGetRate,
        ghcjs_dom_speech_synthesis_utterance_set_pitch,
        speechSynthesisUtteranceSetPitch,
        ghcjs_dom_speech_synthesis_utterance_get_pitch,
        speechSynthesisUtteranceGetPitch, speechSynthesisUtteranceOnstart,
        speechSynthesisUtteranceOnend, speechSynthesisUtteranceOnerror,
        speechSynthesisUtteranceOnpause, speechSynthesisUtteranceOnresume,
        speechSynthesisUtteranceOnmark, speechSynthesisUtteranceOnboundary,
        SpeechSynthesisUtterance, IsSpeechSynthesisUtterance,
        castToSpeechSynthesisUtterance, gTypeSpeechSynthesisUtterance,
        toSpeechSynthesisUtterance)
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

 
foreign import javascript unsafe
        "new window[\"SpeechSynthesisUtterance\"]($1)"
        ghcjs_dom_speech_synthesis_utterance_new ::
        JSString -> IO (JSRef SpeechSynthesisUtterance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance Mozilla SpeechSynthesisUtterance documentation> 
speechSynthesisUtteranceNew ::
                            (ToJSString text) => text -> IO SpeechSynthesisUtterance
speechSynthesisUtteranceNew text
  = ghcjs_dom_speech_synthesis_utterance_new (toJSString text) >>=
      fromJSRefUnchecked
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_speech_synthesis_utterance_dispatch_event ::
        JSRef SpeechSynthesisUtterance -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.dispatchEvent Mozilla SpeechSynthesisUtterance.dispatchEvent documentation> 
speechSynthesisUtteranceDispatchEvent ::
                                      (IsSpeechSynthesisUtterance self, IsEvent evt) =>
                                        self -> Maybe evt -> IO Bool
speechSynthesisUtteranceDispatchEvent self evt
  = ghcjs_dom_speech_synthesis_utterance_dispatch_event
      (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))
      (maybe jsNull (unEvent . toEvent) evt)
 
foreign import javascript unsafe "$1[\"text\"] = $2;"
        ghcjs_dom_speech_synthesis_utterance_set_text ::
        JSRef SpeechSynthesisUtterance -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.text Mozilla SpeechSynthesisUtterance.text documentation> 
speechSynthesisUtteranceSetText ::
                                (IsSpeechSynthesisUtterance self, ToJSString val) =>
                                  self -> val -> IO ()
speechSynthesisUtteranceSetText self val
  = ghcjs_dom_speech_synthesis_utterance_set_text
      (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_speech_synthesis_utterance_get_text ::
        JSRef SpeechSynthesisUtterance -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.text Mozilla SpeechSynthesisUtterance.text documentation> 
speechSynthesisUtteranceGetText ::
                                (IsSpeechSynthesisUtterance self, FromJSString result) =>
                                  self -> IO result
speechSynthesisUtteranceGetText self
  = fromJSString <$>
      (ghcjs_dom_speech_synthesis_utterance_get_text
         (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self)))
 
foreign import javascript unsafe "$1[\"lang\"] = $2;"
        ghcjs_dom_speech_synthesis_utterance_set_lang ::
        JSRef SpeechSynthesisUtterance -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.lang Mozilla SpeechSynthesisUtterance.lang documentation> 
speechSynthesisUtteranceSetLang ::
                                (IsSpeechSynthesisUtterance self, ToJSString val) =>
                                  self -> val -> IO ()
speechSynthesisUtteranceSetLang self val
  = ghcjs_dom_speech_synthesis_utterance_set_lang
      (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"lang\"]"
        ghcjs_dom_speech_synthesis_utterance_get_lang ::
        JSRef SpeechSynthesisUtterance -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.lang Mozilla SpeechSynthesisUtterance.lang documentation> 
speechSynthesisUtteranceGetLang ::
                                (IsSpeechSynthesisUtterance self, FromJSString result) =>
                                  self -> IO result
speechSynthesisUtteranceGetLang self
  = fromJSString <$>
      (ghcjs_dom_speech_synthesis_utterance_get_lang
         (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self)))
 
foreign import javascript unsafe "$1[\"voice\"] = $2;"
        ghcjs_dom_speech_synthesis_utterance_set_voice ::
        JSRef SpeechSynthesisUtterance ->
          JSRef SpeechSynthesisVoice -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.voice Mozilla SpeechSynthesisUtterance.voice documentation> 
speechSynthesisUtteranceSetVoice ::
                                 (IsSpeechSynthesisUtterance self, IsSpeechSynthesisVoice val) =>
                                   self -> Maybe val -> IO ()
speechSynthesisUtteranceSetVoice self val
  = ghcjs_dom_speech_synthesis_utterance_set_voice
      (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))
      (maybe jsNull (unSpeechSynthesisVoice . toSpeechSynthesisVoice)
         val)
 
foreign import javascript unsafe "$1[\"voice\"]"
        ghcjs_dom_speech_synthesis_utterance_get_voice ::
        JSRef SpeechSynthesisUtterance -> IO (JSRef SpeechSynthesisVoice)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.voice Mozilla SpeechSynthesisUtterance.voice documentation> 
speechSynthesisUtteranceGetVoice ::
                                 (IsSpeechSynthesisUtterance self) =>
                                   self -> IO (Maybe SpeechSynthesisVoice)
speechSynthesisUtteranceGetVoice self
  = (ghcjs_dom_speech_synthesis_utterance_get_voice
       (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"volume\"] = $2;"
        ghcjs_dom_speech_synthesis_utterance_set_volume ::
        JSRef SpeechSynthesisUtterance -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.volume Mozilla SpeechSynthesisUtterance.volume documentation> 
speechSynthesisUtteranceSetVolume ::
                                  (IsSpeechSynthesisUtterance self) => self -> Float -> IO ()
speechSynthesisUtteranceSetVolume self val
  = ghcjs_dom_speech_synthesis_utterance_set_volume
      (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))
      val
 
foreign import javascript unsafe "$1[\"volume\"]"
        ghcjs_dom_speech_synthesis_utterance_get_volume ::
        JSRef SpeechSynthesisUtterance -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.volume Mozilla SpeechSynthesisUtterance.volume documentation> 
speechSynthesisUtteranceGetVolume ::
                                  (IsSpeechSynthesisUtterance self) => self -> IO Float
speechSynthesisUtteranceGetVolume self
  = ghcjs_dom_speech_synthesis_utterance_get_volume
      (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))
 
foreign import javascript unsafe "$1[\"rate\"] = $2;"
        ghcjs_dom_speech_synthesis_utterance_set_rate ::
        JSRef SpeechSynthesisUtterance -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.rate Mozilla SpeechSynthesisUtterance.rate documentation> 
speechSynthesisUtteranceSetRate ::
                                (IsSpeechSynthesisUtterance self) => self -> Float -> IO ()
speechSynthesisUtteranceSetRate self val
  = ghcjs_dom_speech_synthesis_utterance_set_rate
      (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))
      val
 
foreign import javascript unsafe "$1[\"rate\"]"
        ghcjs_dom_speech_synthesis_utterance_get_rate ::
        JSRef SpeechSynthesisUtterance -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.rate Mozilla SpeechSynthesisUtterance.rate documentation> 
speechSynthesisUtteranceGetRate ::
                                (IsSpeechSynthesisUtterance self) => self -> IO Float
speechSynthesisUtteranceGetRate self
  = ghcjs_dom_speech_synthesis_utterance_get_rate
      (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))
 
foreign import javascript unsafe "$1[\"pitch\"] = $2;"
        ghcjs_dom_speech_synthesis_utterance_set_pitch ::
        JSRef SpeechSynthesisUtterance -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.pitch Mozilla SpeechSynthesisUtterance.pitch documentation> 
speechSynthesisUtteranceSetPitch ::
                                 (IsSpeechSynthesisUtterance self) => self -> Float -> IO ()
speechSynthesisUtteranceSetPitch self val
  = ghcjs_dom_speech_synthesis_utterance_set_pitch
      (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))
      val
 
foreign import javascript unsafe "$1[\"pitch\"]"
        ghcjs_dom_speech_synthesis_utterance_get_pitch ::
        JSRef SpeechSynthesisUtterance -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.pitch Mozilla SpeechSynthesisUtterance.pitch documentation> 
speechSynthesisUtteranceGetPitch ::
                                 (IsSpeechSynthesisUtterance self) => self -> IO Float
speechSynthesisUtteranceGetPitch self
  = ghcjs_dom_speech_synthesis_utterance_get_pitch
      (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onstart Mozilla SpeechSynthesisUtterance.onstart documentation> 
speechSynthesisUtteranceOnstart ::
                                (IsSpeechSynthesisUtterance self) =>
                                  Signal self (EventM UIEvent self ())
speechSynthesisUtteranceOnstart = (connect "start")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onend Mozilla SpeechSynthesisUtterance.onend documentation> 
speechSynthesisUtteranceOnend ::
                              (IsSpeechSynthesisUtterance self) =>
                                Signal self (EventM UIEvent self ())
speechSynthesisUtteranceOnend = (connect "end")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onerror Mozilla SpeechSynthesisUtterance.onerror documentation> 
speechSynthesisUtteranceOnerror ::
                                (IsSpeechSynthesisUtterance self) =>
                                  Signal self (EventM UIEvent self ())
speechSynthesisUtteranceOnerror = (connect "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onpause Mozilla SpeechSynthesisUtterance.onpause documentation> 
speechSynthesisUtteranceOnpause ::
                                (IsSpeechSynthesisUtterance self) =>
                                  Signal self (EventM UIEvent self ())
speechSynthesisUtteranceOnpause = (connect "pause")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onresume Mozilla SpeechSynthesisUtterance.onresume documentation> 
speechSynthesisUtteranceOnresume ::
                                 (IsSpeechSynthesisUtterance self) =>
                                   Signal self (EventM UIEvent self ())
speechSynthesisUtteranceOnresume = (connect "resume")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onmark Mozilla SpeechSynthesisUtterance.onmark documentation> 
speechSynthesisUtteranceOnmark ::
                               (IsSpeechSynthesisUtterance self) =>
                                 Signal self (EventM UIEvent self ())
speechSynthesisUtteranceOnmark = (connect "mark")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.onboundary Mozilla SpeechSynthesisUtterance.onboundary documentation> 
speechSynthesisUtteranceOnboundary ::
                                   (IsSpeechSynthesisUtterance self) =>
                                     Signal self (EventM UIEvent self ())
speechSynthesisUtteranceOnboundary = (connect "boundary")
#else
module GHCJS.DOM.SpeechSynthesisUtterance (
  ) where
#endif
