{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AllAudioCapabilities
       (ghcjs_dom_all_audio_capabilities_get_source_id,
        allAudioCapabilitiesGetSourceId,
        ghcjs_dom_all_audio_capabilities_get_volume,
        allAudioCapabilitiesGetVolume, AllAudioCapabilities,
        IsAllAudioCapabilities, castToAllAudioCapabilities,
        gTypeAllAudioCapabilities, toAllAudioCapabilities)
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

 
foreign import javascript unsafe "$1[\"sourceId\"]"
        ghcjs_dom_all_audio_capabilities_get_source_id ::
        JSRef AllAudioCapabilities -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllAudioCapabilities.sourceId Mozilla AllAudioCapabilities.sourceId documentation> 
allAudioCapabilitiesGetSourceId ::
                                (MonadIO m, IsAllAudioCapabilities self, FromJSString result) =>
                                  self -> m [result]
allAudioCapabilitiesGetSourceId self
  = liftIO
      ((ghcjs_dom_all_audio_capabilities_get_source_id
          (unAllAudioCapabilities (toAllAudioCapabilities self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"volume\"]"
        ghcjs_dom_all_audio_capabilities_get_volume ::
        JSRef AllAudioCapabilities -> IO (JSRef CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllAudioCapabilities.volume Mozilla AllAudioCapabilities.volume documentation> 
allAudioCapabilitiesGetVolume ::
                              (MonadIO m, IsAllAudioCapabilities self) =>
                                self -> m (Maybe CapabilityRange)
allAudioCapabilitiesGetVolume self
  = liftIO
      ((ghcjs_dom_all_audio_capabilities_get_volume
          (unAllAudioCapabilities (toAllAudioCapabilities self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.AllAudioCapabilities (
  ) where
#endif
