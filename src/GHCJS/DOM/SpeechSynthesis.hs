{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SpeechSynthesis
       (js_speak, speak, js_cancel, cancel, js_pause, pause, js_resume,
        resume, js_getVoices, getVoices, js_getPending, getPending,
        js_getSpeaking, getSpeaking, js_getPaused, getPaused,
        SpeechSynthesis, castToSpeechSynthesis, gTypeSpeechSynthesis)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"speak\"]($2)" js_speak ::
        JSRef SpeechSynthesis -> JSRef SpeechSynthesisUtterance -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.speak Mozilla SpeechSynthesis.speak documentation> 
speak ::
      (MonadIO m) =>
        SpeechSynthesis -> Maybe SpeechSynthesisUtterance -> m ()
speak self utterance
  = liftIO
      (js_speak (unSpeechSynthesis self)
         (maybe jsNull unSpeechSynthesisUtterance utterance))
 
foreign import javascript unsafe "$1[\"cancel\"]()" js_cancel ::
        JSRef SpeechSynthesis -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.cancel Mozilla SpeechSynthesis.cancel documentation> 
cancel :: (MonadIO m) => SpeechSynthesis -> m ()
cancel self = liftIO (js_cancel (unSpeechSynthesis self))
 
foreign import javascript unsafe "$1[\"pause\"]()" js_pause ::
        JSRef SpeechSynthesis -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.pause Mozilla SpeechSynthesis.pause documentation> 
pause :: (MonadIO m) => SpeechSynthesis -> m ()
pause self = liftIO (js_pause (unSpeechSynthesis self))
 
foreign import javascript unsafe "$1[\"resume\"]()" js_resume ::
        JSRef SpeechSynthesis -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.resume Mozilla SpeechSynthesis.resume documentation> 
resume :: (MonadIO m) => SpeechSynthesis -> m ()
resume self = liftIO (js_resume (unSpeechSynthesis self))
 
foreign import javascript unsafe "$1[\"getVoices\"]()" js_getVoices
        :: JSRef SpeechSynthesis -> IO (JSRef [Maybe SpeechSynthesisVoice])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.getVoices Mozilla SpeechSynthesis.getVoices documentation> 
getVoices ::
          (MonadIO m) => SpeechSynthesis -> m [Maybe SpeechSynthesisVoice]
getVoices self
  = liftIO
      ((js_getVoices (unSpeechSynthesis self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "($1[\"pending\"] ? 1 : 0)"
        js_getPending :: JSRef SpeechSynthesis -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.pending Mozilla SpeechSynthesis.pending documentation> 
getPending :: (MonadIO m) => SpeechSynthesis -> m Bool
getPending self = liftIO (js_getPending (unSpeechSynthesis self))
 
foreign import javascript unsafe "($1[\"speaking\"] ? 1 : 0)"
        js_getSpeaking :: JSRef SpeechSynthesis -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.speaking Mozilla SpeechSynthesis.speaking documentation> 
getSpeaking :: (MonadIO m) => SpeechSynthesis -> m Bool
getSpeaking self = liftIO (js_getSpeaking (unSpeechSynthesis self))
 
foreign import javascript unsafe "($1[\"paused\"] ? 1 : 0)"
        js_getPaused :: JSRef SpeechSynthesis -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis.paused Mozilla SpeechSynthesis.paused documentation> 
getPaused :: (MonadIO m) => SpeechSynthesis -> m Bool
getPaused self = liftIO (js_getPaused (unSpeechSynthesis self))
#else
module GHCJS.DOM.SpeechSynthesis (
  ) where
#endif
