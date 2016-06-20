{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SpeechSynthesisVoice
       (js_getVoiceURI, getVoiceURI, js_getName, getName, js_getLang,
        getLang, js_getLocalService, getLocalService, js_getDefault,
        getDefault, SpeechSynthesisVoice, castToSpeechSynthesisVoice,
        gTypeSpeechSynthesisVoice)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"voiceURI\"]" js_getVoiceURI
        :: SpeechSynthesisVoice -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.voiceURI Mozilla SpeechSynthesisVoice.voiceURI documentation> 
getVoiceURI ::
            (MonadIO m, FromJSString result) =>
              SpeechSynthesisVoice -> m result
getVoiceURI self
  = liftIO (fromJSString <$> (js_getVoiceURI (self)))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        SpeechSynthesisVoice -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.name Mozilla SpeechSynthesisVoice.name documentation> 
getName ::
        (MonadIO m, FromJSString result) =>
          SpeechSynthesisVoice -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"lang\"]" js_getLang ::
        SpeechSynthesisVoice -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.lang Mozilla SpeechSynthesisVoice.lang documentation> 
getLang ::
        (MonadIO m, FromJSString result) =>
          SpeechSynthesisVoice -> m result
getLang self = liftIO (fromJSString <$> (js_getLang (self)))
 
foreign import javascript unsafe "($1[\"localService\"] ? 1 : 0)"
        js_getLocalService :: SpeechSynthesisVoice -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.localService Mozilla SpeechSynthesisVoice.localService documentation> 
getLocalService :: (MonadIO m) => SpeechSynthesisVoice -> m Bool
getLocalService self = liftIO (js_getLocalService (self))
 
foreign import javascript unsafe "($1[\"default\"] ? 1 : 0)"
        js_getDefault :: SpeechSynthesisVoice -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice.default Mozilla SpeechSynthesisVoice.default documentation> 
getDefault :: (MonadIO m) => SpeechSynthesisVoice -> m Bool
getDefault self = liftIO (js_getDefault (self))