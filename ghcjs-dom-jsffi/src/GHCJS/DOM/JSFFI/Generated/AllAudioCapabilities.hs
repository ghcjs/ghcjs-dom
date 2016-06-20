{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AllAudioCapabilities
       (js_getSourceId, getSourceId, js_getVolume, getVolume,
        AllAudioCapabilities, castToAllAudioCapabilities,
        gTypeAllAudioCapabilities)
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
 
foreign import javascript unsafe "$1[\"sourceId\"]" js_getSourceId
        :: AllAudioCapabilities -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllAudioCapabilities.sourceId Mozilla AllAudioCapabilities.sourceId documentation> 
getSourceId ::
            (MonadIO m, FromJSString result) =>
              AllAudioCapabilities -> m [result]
getSourceId self
  = liftIO ((js_getSourceId (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"volume\"]" js_getVolume ::
        AllAudioCapabilities -> IO (Nullable CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllAudioCapabilities.volume Mozilla AllAudioCapabilities.volume documentation> 
getVolume ::
          (MonadIO m) => AllAudioCapabilities -> m (Maybe CapabilityRange)
getVolume self = liftIO (nullableToMaybe <$> (js_getVolume (self)))