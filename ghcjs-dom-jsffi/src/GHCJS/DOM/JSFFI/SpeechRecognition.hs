{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.SpeechRecognition
       (newSpeechRecognition, getMaxAlternatives, setMaxAlternatives,
        getGrammars, setGrammars, getLang, setLang,
        getInterimResults, setInterimResults,
        getContinuous, setContinuous,
        audiostart, audioend, end, error, nomatch,
        result, soundstart, soundend, speechstart, speechend, start,
        abort, startRecognition, stop,
        SpeechRecognition(..), gTypeSpeechRecognition)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums

foreign import javascript unsafe
        "new window[\"webkitSpeechRecognition\"]()"
        js_newSpeechRecognition :: IO SpeechRecognition

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition Mozilla SpeechRecognition documentation>
newSpeechRecognition :: (MonadIO m) => m SpeechRecognition
newSpeechRecognition = liftIO (js_newSpeechRecognition)

foreign import javascript unsafe
        "$1[\"maxAlternatives\"]"
        js_speechRecognitionGetMaxAlternatives ::
        SpeechRecognition -> IO (Word)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.maxAlternatives Mozilla SpeechRecognition.maxAlternatives documentation>
getMaxAlternatives :: (MonadIO m)
  => SpeechRecognition -> m Word
getMaxAlternatives self
  = liftIO (js_speechRecognitionGetMaxAlternatives self)

foreign import javascript unsafe
        "$1[\"maxAlternatives\"] = $2;"
        js_speechRecognitionMaxAlternatives ::
        SpeechRecognition -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.maxAlternatives Mozilla SpeechRecognition.maxAlternatives documentation>
setMaxAlternatives :: (MonadIO m)
  => SpeechRecognition -> Word -> m ()
setMaxAlternatives self maxAlt
  = liftIO (js_speechRecognitionMaxAlternatives self maxAlt)

foreign import javascript unsafe
        "$1[\"grammars\"]"
        js_speechRecognitionGetGrammars ::
        SpeechRecognition -> IO SpeechGrammarList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.grammars Mozilla SpeechRecognition.grammars documentation>
getGrammars :: (MonadIO m)
  => SpeechRecognition -> m (SpeechGrammarList)
getGrammars self
  = liftIO (js_speechRecognitionGetGrammars self)

foreign import javascript unsafe
        "$1[\"grammars\"] = $2;"
        js_speechRecognitionSetGrammars ::
        SpeechRecognition -> SpeechGrammarList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.grammars Mozilla SpeechRecognition.grammars documentation>
setGrammars :: (MonadIO m)
  => SpeechRecognition -> SpeechGrammarList -> m ()
setGrammars self grammars
  = liftIO (js_speechRecognitionSetGrammars self grammars)

foreign import javascript unsafe
        "$1[\"lang\"]"
        js_speechRecognitionGetLang ::
        SpeechRecognition -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.lang Mozilla SpeechRecognition.lang documentation>
getLang :: (MonadIO m, FromJSString result)
  => SpeechRecognition -> m (result)
getLang self
  = liftIO (fromJSString <$> (js_speechRecognitionGetLang self))

foreign import javascript unsafe
        "$1[\"lang\"] = $2;"
        js_speechRecognitionSetLang ::
        SpeechRecognition -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.lang Mozilla SpeechRecognition.lang documentation>
setLang :: (MonadIO m, ToJSString lang)
  => SpeechRecognition -> lang -> m ()
setLang self lang
  = liftIO (js_speechRecognitionSetLang self (toJSString lang))

foreign import javascript unsafe
        "$1[\"interimResults\"]"
        js_speechRecognitionGetInterimResults ::
        SpeechRecognition -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.interimResults Mozilla SpeechRecognition.interimResults documentation>
getInterimResults :: (MonadIO m)
  => SpeechRecognition -> m (Bool)
getInterimResults self
  = liftIO (js_speechRecognitionGetInterimResults self)

foreign import javascript unsafe
        "$1[\"interimResults\"] = $2;"
        js_speechRecognitionSetInterimResults ::
        SpeechRecognition -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.interimResults Mozilla SpeechRecognition.interimResults documentation>
setInterimResults :: (MonadIO m)
  => SpeechRecognition -> Bool -> m ()
setInterimResults self val
  = liftIO (js_speechRecognitionSetInterimResults self val)

foreign import javascript unsafe
        "$1[\"continuous\"]"
        js_speechRecognitionGetContinuous ::
        SpeechRecognition -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.continuous Mozilla SpeechRecognition.continuous documentation>
getContinuous :: (MonadIO m)
  => SpeechRecognition -> m (Bool)
getContinuous self
  = liftIO (js_speechRecognitionGetContinuous self)

foreign import javascript unsafe
        "$1[\"continuous\"] = $2;"
        js_speechRecognitionSetContinuous ::
        SpeechRecognition -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.continuous Mozilla SpeechRecognition.continuous documentation>
setContinuous :: (MonadIO m)
  => SpeechRecognition -> Bool -> m ()
setContinuous self val
  = liftIO (js_speechRecognitionSetContinuous self val)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.onaudiostart Mozilla SpeechRecognition.onaudiostart documentation>
audiostart :: EventName SpeechRecognition Event
audiostart = unsafeEventName (toJSString "audiostart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.onaudioend Mozilla SpeechRecognition.onaudioend documentation>
audioend :: EventName SpeechRecognition Event
audioend = unsafeEventName (toJSString "audioend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.onend Mozilla SpeechRecognition.onend documentation>
end :: EventName SpeechRecognition Event
end = unsafeEventName (toJSString "end")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.onerror Mozilla SpeechRecognition.onerror documentation>
error :: EventName SpeechRecognition SpeechRecognitionError
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.onnomatch Mozilla SpeechRecognition.onnomatch documentation>
nomatch :: EventName SpeechRecognition SpeechRecognitionEvent
nomatch = unsafeEventName (toJSString "nomatch")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.onresult Mozilla SpeechRecognition.onresult documentation>
result :: EventName SpeechRecognition SpeechRecognitionEvent
result = unsafeEventName (toJSString "result")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.onsoundstart Mozilla SpeechRecognition.onsoundstart documentation>
soundstart :: EventName SpeechRecognition Event
soundstart = unsafeEventName (toJSString "soundstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.onsoundend Mozilla SpeechRecognition.onsoundend documentation>
soundend :: EventName SpeechRecognition Event
soundend = unsafeEventName (toJSString "soundend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.onspeechstart Mozilla SpeechRecognition.onspeechstart documentation>
speechstart :: EventName SpeechRecognition Event
speechstart = unsafeEventName (toJSString "speechstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.onspeechend Mozilla SpeechRecognition.onspeechend documentation>
speechend :: EventName SpeechRecognition Event
speechend = unsafeEventName (toJSString "speechend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.onstart Mozilla SpeechRecognition.onstart documentation>
start :: EventName SpeechRecognition Event
start = unsafeEventName (toJSString "start")

foreign import javascript unsafe
        "$1[\"abort\"]()"
        js_speechRecognitionAbort ::
        SpeechRecognition ->  IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.abort Mozilla SpeechRecognition.abort documentation>
abort :: (MonadIO m)
  => SpeechRecognition -> m ()
abort self
  = liftIO (js_speechRecognitionAbort self)

foreign import javascript unsafe
        "$1[\"start\"]()"
        js_speechRecognitionStart ::
        SpeechRecognition ->  IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.start Mozilla SpeechRecognition.start documentation>
startRecognition :: (MonadIO m)
  => SpeechRecognition -> m ()
startRecognition self
  = liftIO (js_speechRecognitionStart self)

foreign import javascript unsafe
        "$1[\"stop\"]()"
        js_speechRecognitionStop ::
        SpeechRecognition ->  IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition.stop Mozilla SpeechRecognition.stop documentation>
stop :: (MonadIO m)
  => SpeechRecognition -> m ()
stop self
  = liftIO (js_speechRecognitionStop self)
