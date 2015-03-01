{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SpeechSynthesisVoice
       (js_getVoiceURI, getVoiceURI, js_getName, getName, js_getLang,
        getLang, js_getLocalService, getLocalService, js_getDefault,
        getDefault, SpeechSynthesisVoice, castToSpeechSynthesisVoice,
        gTypeSpeechSynthesisVoice)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"voiceURI\"]" js_getVoiceURI
        :: JSRef SpeechSynthesisVoice -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.voiceURI Mozilla SpeechSynthesisVoice.voiceURI documentation> 
getVoiceURI ::
            (MonadIO m, FromJSString result) =>
              SpeechSynthesisVoice -> m result
getVoiceURI self
  = liftIO
      (fromJSString <$> (js_getVoiceURI (unSpeechSynthesisVoice self)))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef SpeechSynthesisVoice -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.name Mozilla SpeechSynthesisVoice.name documentation> 
getName ::
        (MonadIO m, FromJSString result) =>
          SpeechSynthesisVoice -> m result
getName self
  = liftIO
      (fromJSString <$> (js_getName (unSpeechSynthesisVoice self)))
 
foreign import javascript unsafe "$1[\"lang\"]" js_getLang ::
        JSRef SpeechSynthesisVoice -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.lang Mozilla SpeechSynthesisVoice.lang documentation> 
getLang ::
        (MonadIO m, FromJSString result) =>
          SpeechSynthesisVoice -> m result
getLang self
  = liftIO
      (fromJSString <$> (js_getLang (unSpeechSynthesisVoice self)))
 
foreign import javascript unsafe "($1[\"localService\"] ? 1 : 0)"
        js_getLocalService :: JSRef SpeechSynthesisVoice -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.localService Mozilla SpeechSynthesisVoice.localService documentation> 
getLocalService :: (MonadIO m) => SpeechSynthesisVoice -> m Bool
getLocalService self
  = liftIO (js_getLocalService (unSpeechSynthesisVoice self))
 
foreign import javascript unsafe "($1[\"default\"] ? 1 : 0)"
        js_getDefault :: JSRef SpeechSynthesisVoice -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.default Mozilla SpeechSynthesisVoice.default documentation> 
getDefault :: (MonadIO m) => SpeechSynthesisVoice -> m Bool
getDefault self
  = liftIO (js_getDefault (unSpeechSynthesisVoice self))
#else
module GHCJS.DOM.SpeechSynthesisVoice (
  ) where
#endif
