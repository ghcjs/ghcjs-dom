{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.SpeechRecognitionEvent
       (getResultList, getResultListLength, getResultLength,
        getResult, getAlternative, getTranscript, getConfidence,
        getResultIsFinal, getBestAlternative,
        SpeechRecognitionResultList(..), gTypeSpeechRecognitionResultList,
        SpeechRecognitionResult(..), gTypeSpeechRecognitionResult,
        SpeechRecognitionAlternative(..), gTypeSpeechRecognitionAlternative,
        SpeechRecognitionEvent(..), gTypeSpeechRecognitionEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
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

foreign import javascript unsafe "$1[\"results\"]" js_getSpeechRecognitionResultList ::
        SpeechRecognitionEvent -> IO SpeechRecognitionResultList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognitionEvent.results Mozilla SpeechRecognitionEvent.results documentation>
getResultList :: (MonadIO m)
  => SpeechRecognitionEvent -> m SpeechRecognitionResultList
getResultList self
  = liftIO (js_getSpeechRecognitionResultList self)

foreign import javascript unsafe "$1[\"isFinal\"]" js_getIsFinal ::
        SpeechRecognitionResult -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognitionResult.isFinal Mozilla SpeechRecognitionResult.isFinal documentation>
getResultIsFinal :: (MonadIO m) => SpeechRecognitionResult -> m Bool
getResultIsFinal self = liftIO (js_getIsFinal self)

foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        SpeechRecognitionResult -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognitionResult.length Mozilla SpeechRecognitionResult.length documentation>
getResultLength :: (MonadIO m) => SpeechRecognitionResult -> m Word
getResultLength self = liftIO (js_getLength self)

foreign import javascript unsafe "$1[\"length\"]" js_getLength2 ::
        SpeechRecognitionResultList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognitionResultList.length Mozilla SpeechRecognitionResultList.length documentation>
getResultListLength :: (MonadIO m) => SpeechRecognitionResultList -> m Word
getResultListLength self = liftIO (js_getLength2 self)

foreign import javascript unsafe "$1[$2]" js_getSpeechRecognitionAlternative ::
        SpeechRecognitionResult -> Word -> IO SpeechRecognitionAlternative

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognitionResult.item Mozilla SpeechRecognitionResult.item documentation>
getAlternative :: (MonadIO m) => SpeechRecognitionResult -> Word -> m SpeechRecognitionAlternative
getAlternative self index = liftIO (js_getSpeechRecognitionAlternative self index)

foreign import javascript unsafe "$1[$2]" js_getSpeechRecognitionResult ::
        SpeechRecognitionResultList -> Word -> IO SpeechRecognitionResult

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognitionResultList.item Mozilla SpeechRecognitionResultList.item documentation>
getResult :: (MonadIO m) => SpeechRecognitionResultList -> Word -> m SpeechRecognitionResult
getResult self index = liftIO (js_getSpeechRecognitionResult self index)

foreign import javascript unsafe
        "$1[\"transcript\"]"
        js_getSpeechRecognitionAlternativeTranscript ::
        SpeechRecognitionAlternative -> IO (JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognitionAlternative.transcript Mozilla SpeechRecognitionAlternative.transcript documentation>
getTranscript :: (MonadIO m)
  => SpeechRecognitionAlternative -> m (JSString)
getTranscript self
  = liftIO (js_getSpeechRecognitionAlternativeTranscript self)

foreign import javascript unsafe
        "$1[\"confidence\"]"
        js_getSpeechRecognitionAlternativeConfidence ::
        SpeechRecognitionAlternative -> IO (Double)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognitionAlternative.confidence Mozilla SpeechRecognitionAlternative.confidence documentation>
getConfidence :: (MonadIO m)
  => SpeechRecognitionAlternative -> m (Double)
getConfidence self
  = liftIO (js_getSpeechRecognitionAlternativeConfidence self)

foreign import javascript unsafe
        "$1[\"results\"][0][0]"
        js_getBestAlternative ::
        SpeechRecognitionEvent -> IO SpeechRecognitionAlternative

getBestAlternative :: (MonadIO m)
  => SpeechRecognitionEvent -> m SpeechRecognitionAlternative
getBestAlternative ev =
  liftIO (js_getBestAlternative ev)
