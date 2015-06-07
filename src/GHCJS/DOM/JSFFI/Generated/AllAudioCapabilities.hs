{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AllAudioCapabilities
       (js_getSourceId, getSourceId, js_getVolume, getVolume,
        AllAudioCapabilities, castToAllAudioCapabilities,
        gTypeAllAudioCapabilities)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
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

foreign import javascript unsafe "$1[\"sourceId\"]" js_getSourceId
        :: JSRef AllAudioCapabilities -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllAudioCapabilities.sourceId Mozilla AllAudioCapabilities.sourceId documentation>
getSourceId ::
            (MonadIO m, FromJSString result, FromJSRef result) =>
              AllAudioCapabilities -> m [result]
getSourceId self
  = liftIO
      ((js_getSourceId (unAllAudioCapabilities self)) >>=
         fromJSRefUnchecked)

foreign import javascript unsafe "$1[\"volume\"]" js_getVolume ::
        JSRef AllAudioCapabilities -> IO (JSRef CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllAudioCapabilities.volume Mozilla AllAudioCapabilities.volume documentation>
getVolume ::
          (MonadIO m) => AllAudioCapabilities -> m (Maybe CapabilityRange)
getVolume self
  = liftIO
      ((js_getVolume (unAllAudioCapabilities self)) >>= fromJSRef)
