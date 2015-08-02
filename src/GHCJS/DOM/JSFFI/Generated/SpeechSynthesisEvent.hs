{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SpeechSynthesisEvent
       (js_getCharIndex, getCharIndex, js_getElapsedTime, getElapsedTime,
        js_getName, getName, SpeechSynthesisEvent,
        castToSpeechSynthesisEvent, gTypeSpeechSynthesisEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"charIndex\"]"
        js_getCharIndex :: JSRef SpeechSynthesisEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent.charIndex Mozilla SpeechSynthesisEvent.charIndex documentation> 
getCharIndex :: (MonadIO m) => SpeechSynthesisEvent -> m Word
getCharIndex self
  = liftIO (js_getCharIndex (unSpeechSynthesisEvent self))
 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        js_getElapsedTime :: JSRef SpeechSynthesisEvent -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent.elapsedTime Mozilla SpeechSynthesisEvent.elapsedTime documentation> 
getElapsedTime :: (MonadIO m) => SpeechSynthesisEvent -> m Float
getElapsedTime self
  = liftIO (js_getElapsedTime (unSpeechSynthesisEvent self))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef SpeechSynthesisEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent.name Mozilla SpeechSynthesisEvent.name documentation> 
getName ::
        (MonadIO m, FromJSString result) =>
          SpeechSynthesisEvent -> m result
getName self
  = liftIO
      (fromJSString <$> (js_getName (unSpeechSynthesisEvent self)))