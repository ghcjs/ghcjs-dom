{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaSourceStates
       (ghcjs_dom_media_source_states_get_source_type,
        mediaSourceStatesGetSourceType,
        ghcjs_dom_media_source_states_get_source_id,
        mediaSourceStatesGetSourceId,
        ghcjs_dom_media_source_states_get_width, mediaSourceStatesGetWidth,
        ghcjs_dom_media_source_states_get_height,
        mediaSourceStatesGetHeight,
        ghcjs_dom_media_source_states_get_frame_rate,
        mediaSourceStatesGetFrameRate,
        ghcjs_dom_media_source_states_get_aspect_ratio,
        mediaSourceStatesGetAspectRatio,
        ghcjs_dom_media_source_states_get_facing_mode,
        mediaSourceStatesGetFacingMode,
        ghcjs_dom_media_source_states_get_volume,
        mediaSourceStatesGetVolume, MediaSourceStates, IsMediaSourceStates,
        castToMediaSourceStates, gTypeMediaSourceStates,
        toMediaSourceStates)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"sourceType\"]"
        ghcjs_dom_media_source_states_get_source_type ::
        JSRef MediaSourceStates -> IO (JSRef SourceTypeEnum)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.sourceType Mozilla MediaSourceStates.sourceType documentation> 
mediaSourceStatesGetSourceType ::
                               (IsMediaSourceStates self) => self -> IO SourceTypeEnum
mediaSourceStatesGetSourceType self
  = (ghcjs_dom_media_source_states_get_source_type
       (unMediaSourceStates (toMediaSourceStates self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"sourceId\"]"
        ghcjs_dom_media_source_states_get_source_id ::
        JSRef MediaSourceStates -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.sourceId Mozilla MediaSourceStates.sourceId documentation> 
mediaSourceStatesGetSourceId ::
                             (IsMediaSourceStates self, FromJSString result) =>
                               self -> IO result
mediaSourceStatesGetSourceId self
  = fromJSString <$>
      (ghcjs_dom_media_source_states_get_source_id
         (unMediaSourceStates (toMediaSourceStates self)))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_media_source_states_get_width ::
        JSRef MediaSourceStates -> IO (JSRef (Maybe Word))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.width Mozilla MediaSourceStates.width documentation> 
mediaSourceStatesGetWidth ::
                          (IsMediaSourceStates self) => self -> IO (Maybe Word)
mediaSourceStatesGetWidth self
  = (ghcjs_dom_media_source_states_get_width
       (unMediaSourceStates (toMediaSourceStates self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_media_source_states_get_height ::
        JSRef MediaSourceStates -> IO (JSRef (Maybe Word))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.height Mozilla MediaSourceStates.height documentation> 
mediaSourceStatesGetHeight ::
                           (IsMediaSourceStates self) => self -> IO (Maybe Word)
mediaSourceStatesGetHeight self
  = (ghcjs_dom_media_source_states_get_height
       (unMediaSourceStates (toMediaSourceStates self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"frameRate\"]"
        ghcjs_dom_media_source_states_get_frame_rate ::
        JSRef MediaSourceStates -> IO (JSRef (Maybe Float))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.frameRate Mozilla MediaSourceStates.frameRate documentation> 
mediaSourceStatesGetFrameRate ::
                              (IsMediaSourceStates self) => self -> IO (Maybe Float)
mediaSourceStatesGetFrameRate self
  = (ghcjs_dom_media_source_states_get_frame_rate
       (unMediaSourceStates (toMediaSourceStates self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"aspectRatio\"]"
        ghcjs_dom_media_source_states_get_aspect_ratio ::
        JSRef MediaSourceStates -> IO (JSRef (Maybe Float))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.aspectRatio Mozilla MediaSourceStates.aspectRatio documentation> 
mediaSourceStatesGetAspectRatio ::
                                (IsMediaSourceStates self) => self -> IO (Maybe Float)
mediaSourceStatesGetAspectRatio self
  = (ghcjs_dom_media_source_states_get_aspect_ratio
       (unMediaSourceStates (toMediaSourceStates self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"facingMode\"]"
        ghcjs_dom_media_source_states_get_facing_mode ::
        JSRef MediaSourceStates -> IO (JSRef VideoFacingModeEnum)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.facingMode Mozilla MediaSourceStates.facingMode documentation> 
mediaSourceStatesGetFacingMode ::
                               (IsMediaSourceStates self) => self -> IO VideoFacingModeEnum
mediaSourceStatesGetFacingMode self
  = (ghcjs_dom_media_source_states_get_facing_mode
       (unMediaSourceStates (toMediaSourceStates self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"volume\"]"
        ghcjs_dom_media_source_states_get_volume ::
        JSRef MediaSourceStates -> IO (JSRef (Maybe Word))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.volume Mozilla MediaSourceStates.volume documentation> 
mediaSourceStatesGetVolume ::
                           (IsMediaSourceStates self) => self -> IO (Maybe Word)
mediaSourceStatesGetVolume self
  = (ghcjs_dom_media_source_states_get_volume
       (unMediaSourceStates (toMediaSourceStates self)))
      >>= fromJSRefUnchecked
#else
module GHCJS.DOM.MediaSourceStates (
  ) where
#endif
