{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AllVideoCapabilities
       (ghcjs_dom_all_video_capabilities_get_source_type,
        allVideoCapabilitiesGetSourceType,
        ghcjs_dom_all_video_capabilities_get_source_id,
        allVideoCapabilitiesGetSourceId,
        ghcjs_dom_all_video_capabilities_get_width,
        allVideoCapabilitiesGetWidth,
        ghcjs_dom_all_video_capabilities_get_height,
        allVideoCapabilitiesGetHeight,
        ghcjs_dom_all_video_capabilities_get_frame_rate,
        allVideoCapabilitiesGetFrameRate,
        ghcjs_dom_all_video_capabilities_get_aspect_ratio,
        allVideoCapabilitiesGetAspectRatio,
        ghcjs_dom_all_video_capabilities_get_facing_mode,
        allVideoCapabilitiesGetFacingMode, AllVideoCapabilities,
        IsAllVideoCapabilities, castToAllVideoCapabilities,
        gTypeAllVideoCapabilities, toAllVideoCapabilities)
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

 
foreign import javascript unsafe "$1[\"sourceType\"]"
        ghcjs_dom_all_video_capabilities_get_source_type ::
        JSRef AllVideoCapabilities -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.sourceType Mozilla AllVideoCapabilities.sourceType documentation> 
allVideoCapabilitiesGetSourceType ::
                                  (MonadIO m, IsAllVideoCapabilities self, FromJSString result) =>
                                    self -> m [result]
allVideoCapabilitiesGetSourceType self
  = liftIO
      ((ghcjs_dom_all_video_capabilities_get_source_type
          (unAllVideoCapabilities (toAllVideoCapabilities self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"sourceId\"]"
        ghcjs_dom_all_video_capabilities_get_source_id ::
        JSRef AllVideoCapabilities -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.sourceId Mozilla AllVideoCapabilities.sourceId documentation> 
allVideoCapabilitiesGetSourceId ::
                                (MonadIO m, IsAllVideoCapabilities self, FromJSString result) =>
                                  self -> m [result]
allVideoCapabilitiesGetSourceId self
  = liftIO
      ((ghcjs_dom_all_video_capabilities_get_source_id
          (unAllVideoCapabilities (toAllVideoCapabilities self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_all_video_capabilities_get_width ::
        JSRef AllVideoCapabilities -> IO (JSRef CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.width Mozilla AllVideoCapabilities.width documentation> 
allVideoCapabilitiesGetWidth ::
                             (MonadIO m, IsAllVideoCapabilities self) =>
                               self -> m (Maybe CapabilityRange)
allVideoCapabilitiesGetWidth self
  = liftIO
      ((ghcjs_dom_all_video_capabilities_get_width
          (unAllVideoCapabilities (toAllVideoCapabilities self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_all_video_capabilities_get_height ::
        JSRef AllVideoCapabilities -> IO (JSRef CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.height Mozilla AllVideoCapabilities.height documentation> 
allVideoCapabilitiesGetHeight ::
                              (MonadIO m, IsAllVideoCapabilities self) =>
                                self -> m (Maybe CapabilityRange)
allVideoCapabilitiesGetHeight self
  = liftIO
      ((ghcjs_dom_all_video_capabilities_get_height
          (unAllVideoCapabilities (toAllVideoCapabilities self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"frameRate\"]"
        ghcjs_dom_all_video_capabilities_get_frame_rate ::
        JSRef AllVideoCapabilities -> IO (JSRef CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.frameRate Mozilla AllVideoCapabilities.frameRate documentation> 
allVideoCapabilitiesGetFrameRate ::
                                 (MonadIO m, IsAllVideoCapabilities self) =>
                                   self -> m (Maybe CapabilityRange)
allVideoCapabilitiesGetFrameRate self
  = liftIO
      ((ghcjs_dom_all_video_capabilities_get_frame_rate
          (unAllVideoCapabilities (toAllVideoCapabilities self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"aspectRatio\"]"
        ghcjs_dom_all_video_capabilities_get_aspect_ratio ::
        JSRef AllVideoCapabilities -> IO (JSRef CapabilityRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.aspectRatio Mozilla AllVideoCapabilities.aspectRatio documentation> 
allVideoCapabilitiesGetAspectRatio ::
                                   (MonadIO m, IsAllVideoCapabilities self) =>
                                     self -> m (Maybe CapabilityRange)
allVideoCapabilitiesGetAspectRatio self
  = liftIO
      ((ghcjs_dom_all_video_capabilities_get_aspect_ratio
          (unAllVideoCapabilities (toAllVideoCapabilities self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"facingMode\"]"
        ghcjs_dom_all_video_capabilities_get_facing_mode ::
        JSRef AllVideoCapabilities -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities.facingMode Mozilla AllVideoCapabilities.facingMode documentation> 
allVideoCapabilitiesGetFacingMode ::
                                  (MonadIO m, IsAllVideoCapabilities self, FromJSString result) =>
                                    self -> m [result]
allVideoCapabilitiesGetFacingMode self
  = liftIO
      ((ghcjs_dom_all_video_capabilities_get_facing_mode
          (unAllVideoCapabilities (toAllVideoCapabilities self)))
         >>= fromJSRefUnchecked)
#else
module GHCJS.DOM.AllVideoCapabilities (
  ) where
#endif
