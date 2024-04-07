{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.SpeechRecognitionError
       (getError, getMessage,
        SpeechRecognitionError(..), gTypeSpeechRecognitionError)
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

foreign import javascript unsafe "$1[\"error\"]" js_getSpeechRecognitionError ::
        SpeechRecognitionError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognitionError.error Mozilla SpeechRecognitionError.error documentation>
getError :: (MonadIO m, FromJSString result)
  => SpeechRecognitionError -> m (result)
getError self
  = liftIO (fromJSString <$> (js_getSpeechRecognitionError self))

foreign import javascript unsafe "$1[\"message\"]" js_getSpeechRecognitionErrorMessage ::
        SpeechRecognitionError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognitionError.message Mozilla SpeechRecognitionError.message documentation>
getMessage :: (MonadIO m, FromJSString result)
  => SpeechRecognitionError -> m (result)
getMessage self
  = liftIO (fromJSString <$> (js_getSpeechRecognitionErrorMessage self))
