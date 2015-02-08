{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SpeechSynthesisUtterance
       (ghcjs_dom_speech_synthesis_utterance_new,
        speechSynthesisUtteranceNew,
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
        speechSynthesisUtteranceGetPitch, speechSynthesisUtteranceStart,
        speechSynthesisUtteranceEnd, speechSynthesisUtteranceError,
        speechSynthesisUtterancePause, speechSynthesisUtteranceResume,
        speechSynthesisUtteranceMark, speechSynthesisUtteranceBoundary,
        SpeechSynthesisUtterance, IsSpeechSynthesisUtterance,
        castToSpeechSynthesisUtterance, gTypeSpeechSynthesisUtterance,
        toSpeechSynthesisUtterance)
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

 
foreign import javascript unsafe
        "new window[\"SpeechSynthesisUtterance\"]($1)"
        ghcjs_dom_speech_synthesis_utterance_new ::
        JSString -> IO (JSRef SpeechSynthesisUtterance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance Mozilla SpeechSynthesisUtterance documentation> 
speechSynthesisUtteranceNew ::
                            (MonadIO m, ToJSString text) => text -> m SpeechSynthesisUtterance
speechSynthesisUtteranceNew text
  = liftIO
      (ghcjs_dom_speech_synthesis_utterance_new (toJSString text) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"text\"] = $2;"
        ghcjs_dom_speech_synthesis_utterance_set_text ::
        JSRef SpeechSynthesisUtterance -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.text Mozilla SpeechSynthesisUtterance.text documentation> 
speechSynthesisUtteranceSetText ::
                                (MonadIO m, IsSpeechSynthesisUtterance self, ToJSString val) =>
                                  self -> val -> m ()
speechSynthesisUtteranceSetText self val
  = liftIO
      (ghcjs_dom_speech_synthesis_utterance_set_text
         (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_speech_synthesis_utterance_get_text ::
        JSRef SpeechSynthesisUtterance -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.text Mozilla SpeechSynthesisUtterance.text documentation> 
speechSynthesisUtteranceGetText ::
                                (MonadIO m, IsSpeechSynthesisUtterance self,
                                 FromJSString result) =>
                                  self -> m result
speechSynthesisUtteranceGetText self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_speech_synthesis_utterance_get_text
            (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))))
 
foreign import javascript unsafe "$1[\"lang\"] = $2;"
        ghcjs_dom_speech_synthesis_utterance_set_lang ::
        JSRef SpeechSynthesisUtterance -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.lang Mozilla SpeechSynthesisUtterance.lang documentation> 
speechSynthesisUtteranceSetLang ::
                                (MonadIO m, IsSpeechSynthesisUtterance self, ToJSString val) =>
                                  self -> val -> m ()
speechSynthesisUtteranceSetLang self val
  = liftIO
      (ghcjs_dom_speech_synthesis_utterance_set_lang
         (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"lang\"]"
        ghcjs_dom_speech_synthesis_utterance_get_lang ::
        JSRef SpeechSynthesisUtterance -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.lang Mozilla SpeechSynthesisUtterance.lang documentation> 
speechSynthesisUtteranceGetLang ::
                                (MonadIO m, IsSpeechSynthesisUtterance self,
                                 FromJSString result) =>
                                  self -> m result
speechSynthesisUtteranceGetLang self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_speech_synthesis_utterance_get_lang
            (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))))
 
foreign import javascript unsafe "$1[\"voice\"] = $2;"
        ghcjs_dom_speech_synthesis_utterance_set_voice ::
        JSRef SpeechSynthesisUtterance ->
          JSRef SpeechSynthesisVoice -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.voice Mozilla SpeechSynthesisUtterance.voice documentation> 
speechSynthesisUtteranceSetVoice ::
                                 (MonadIO m, IsSpeechSynthesisUtterance self,
                                  IsSpeechSynthesisVoice val) =>
                                   self -> Maybe val -> m ()
speechSynthesisUtteranceSetVoice self val
  = liftIO
      (ghcjs_dom_speech_synthesis_utterance_set_voice
         (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))
         (maybe jsNull (unSpeechSynthesisVoice . toSpeechSynthesisVoice)
            val))
 
foreign import javascript unsafe "$1[\"voice\"]"
        ghcjs_dom_speech_synthesis_utterance_get_voice ::
        JSRef SpeechSynthesisUtterance -> IO (JSRef SpeechSynthesisVoice)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.voice Mozilla SpeechSynthesisUtterance.voice documentation> 
speechSynthesisUtteranceGetVoice ::
                                 (MonadIO m, IsSpeechSynthesisUtterance self) =>
                                   self -> m (Maybe SpeechSynthesisVoice)
speechSynthesisUtteranceGetVoice self
  = liftIO
      ((ghcjs_dom_speech_synthesis_utterance_get_voice
          (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"volume\"] = $2;"
        ghcjs_dom_speech_synthesis_utterance_set_volume ::
        JSRef SpeechSynthesisUtterance -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.volume Mozilla SpeechSynthesisUtterance.volume documentation> 
speechSynthesisUtteranceSetVolume ::
                                  (MonadIO m, IsSpeechSynthesisUtterance self) =>
                                    self -> Float -> m ()
speechSynthesisUtteranceSetVolume self val
  = liftIO
      (ghcjs_dom_speech_synthesis_utterance_set_volume
         (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))
         val)
 
foreign import javascript unsafe "$1[\"volume\"]"
        ghcjs_dom_speech_synthesis_utterance_get_volume ::
        JSRef SpeechSynthesisUtterance -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.volume Mozilla SpeechSynthesisUtterance.volume documentation> 
speechSynthesisUtteranceGetVolume ::
                                  (MonadIO m, IsSpeechSynthesisUtterance self) => self -> m Float
speechSynthesisUtteranceGetVolume self
  = liftIO
      (ghcjs_dom_speech_synthesis_utterance_get_volume
         (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self)))
 
foreign import javascript unsafe "$1[\"rate\"] = $2;"
        ghcjs_dom_speech_synthesis_utterance_set_rate ::
        JSRef SpeechSynthesisUtterance -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.rate Mozilla SpeechSynthesisUtterance.rate documentation> 
speechSynthesisUtteranceSetRate ::
                                (MonadIO m, IsSpeechSynthesisUtterance self) =>
                                  self -> Float -> m ()
speechSynthesisUtteranceSetRate self val
  = liftIO
      (ghcjs_dom_speech_synthesis_utterance_set_rate
         (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))
         val)
 
foreign import javascript unsafe "$1[\"rate\"]"
        ghcjs_dom_speech_synthesis_utterance_get_rate ::
        JSRef SpeechSynthesisUtterance -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.rate Mozilla SpeechSynthesisUtterance.rate documentation> 
speechSynthesisUtteranceGetRate ::
                                (MonadIO m, IsSpeechSynthesisUtterance self) => self -> m Float
speechSynthesisUtteranceGetRate self
  = liftIO
      (ghcjs_dom_speech_synthesis_utterance_get_rate
         (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self)))
 
foreign import javascript unsafe "$1[\"pitch\"] = $2;"
        ghcjs_dom_speech_synthesis_utterance_set_pitch ::
        JSRef SpeechSynthesisUtterance -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.pitch Mozilla SpeechSynthesisUtterance.pitch documentation> 
speechSynthesisUtteranceSetPitch ::
                                 (MonadIO m, IsSpeechSynthesisUtterance self) =>
                                   self -> Float -> m ()
speechSynthesisUtteranceSetPitch self val
  = liftIO
      (ghcjs_dom_speech_synthesis_utterance_set_pitch
         (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self))
         val)
 
foreign import javascript unsafe "$1[\"pitch\"]"
        ghcjs_dom_speech_synthesis_utterance_get_pitch ::
        JSRef SpeechSynthesisUtterance -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.pitch Mozilla SpeechSynthesisUtterance.pitch documentation> 
speechSynthesisUtteranceGetPitch ::
                                 (MonadIO m, IsSpeechSynthesisUtterance self) => self -> m Float
speechSynthesisUtteranceGetPitch self
  = liftIO
      (ghcjs_dom_speech_synthesis_utterance_get_pitch
         (unSpeechSynthesisUtterance (toSpeechSynthesisUtterance self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.start Mozilla SpeechSynthesisUtterance.start documentation> 
speechSynthesisUtteranceStart ::
                              (IsSpeechSynthesisUtterance self, IsEventTarget self) =>
                                EventName self Event
speechSynthesisUtteranceStart
  = unsafeEventName (toJSString "start")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.end Mozilla SpeechSynthesisUtterance.end documentation> 
speechSynthesisUtteranceEnd ::
                            (IsSpeechSynthesisUtterance self, IsEventTarget self) =>
                              EventName self Event
speechSynthesisUtteranceEnd = unsafeEventName (toJSString "end")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.error Mozilla SpeechSynthesisUtterance.error documentation> 
speechSynthesisUtteranceError ::
                              (IsSpeechSynthesisUtterance self, IsEventTarget self) =>
                                EventName self UIEvent
speechSynthesisUtteranceError
  = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.pause Mozilla SpeechSynthesisUtterance.pause documentation> 
speechSynthesisUtterancePause ::
                              (IsSpeechSynthesisUtterance self, IsEventTarget self) =>
                                EventName self Event
speechSynthesisUtterancePause
  = unsafeEventName (toJSString "pause")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.resume Mozilla SpeechSynthesisUtterance.resume documentation> 
speechSynthesisUtteranceResume ::
                               (IsSpeechSynthesisUtterance self, IsEventTarget self) =>
                                 EventName self Event
speechSynthesisUtteranceResume
  = unsafeEventName (toJSString "resume")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.mark Mozilla SpeechSynthesisUtterance.mark documentation> 
speechSynthesisUtteranceMark ::
                             (IsSpeechSynthesisUtterance self, IsEventTarget self) =>
                               EventName self Event
speechSynthesisUtteranceMark = unsafeEventName (toJSString "mark")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance.boundary Mozilla SpeechSynthesisUtterance.boundary documentation> 
speechSynthesisUtteranceBoundary ::
                                 (IsSpeechSynthesisUtterance self, IsEventTarget self) =>
                                   EventName self Event
speechSynthesisUtteranceBoundary
  = unsafeEventName (toJSString "boundary")
#else
module GHCJS.DOM.SpeechSynthesisUtterance (
  ) where
#endif
