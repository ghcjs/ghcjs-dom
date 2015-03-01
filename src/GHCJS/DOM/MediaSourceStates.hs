{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaSourceStates
       (js_getSourceType, getSourceType, js_getSourceId, getSourceId,
        js_getWidth, getWidth, js_getHeight, getHeight, js_getFrameRate,
        getFrameRate, js_getAspectRatio, getAspectRatio, js_getFacingMode,
        getFacingMode, js_getVolume, getVolume, MediaSourceStates,
        castToMediaSourceStates, gTypeMediaSourceStates)
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

 
foreign import javascript unsafe "$1[\"sourceType\"]"
        js_getSourceType ::
        JSRef MediaSourceStates -> IO (JSRef SourceTypeEnum)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.sourceType Mozilla MediaSourceStates.sourceType documentation> 
getSourceType ::
              (MonadIO m) => MediaSourceStates -> m SourceTypeEnum
getSourceType self
  = liftIO
      ((js_getSourceType (unMediaSourceStates self)) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"sourceId\"]" js_getSourceId
        :: JSRef MediaSourceStates -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.sourceId Mozilla MediaSourceStates.sourceId documentation> 
getSourceId ::
            (MonadIO m, FromJSString result) => MediaSourceStates -> m result
getSourceId self
  = liftIO
      (fromJSString <$> (js_getSourceId (unMediaSourceStates self)))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef MediaSourceStates -> IO (JSRef (Maybe Word))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.width Mozilla MediaSourceStates.width documentation> 
getWidth :: (MonadIO m) => MediaSourceStates -> m (Maybe Word)
getWidth self
  = liftIO
      ((js_getWidth (unMediaSourceStates self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef MediaSourceStates -> IO (JSRef (Maybe Word))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.height Mozilla MediaSourceStates.height documentation> 
getHeight :: (MonadIO m) => MediaSourceStates -> m (Maybe Word)
getHeight self
  = liftIO
      ((js_getHeight (unMediaSourceStates self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"frameRate\"]"
        js_getFrameRate ::
        JSRef MediaSourceStates -> IO (JSRef (Maybe Float))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.frameRate Mozilla MediaSourceStates.frameRate documentation> 
getFrameRate :: (MonadIO m) => MediaSourceStates -> m (Maybe Float)
getFrameRate self
  = liftIO
      ((js_getFrameRate (unMediaSourceStates self)) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"aspectRatio\"]"
        js_getAspectRatio ::
        JSRef MediaSourceStates -> IO (JSRef (Maybe Float))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.aspectRatio Mozilla MediaSourceStates.aspectRatio documentation> 
getAspectRatio ::
               (MonadIO m) => MediaSourceStates -> m (Maybe Float)
getAspectRatio self
  = liftIO
      ((js_getAspectRatio (unMediaSourceStates self)) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"facingMode\"]"
        js_getFacingMode ::
        JSRef MediaSourceStates -> IO (JSRef VideoFacingModeEnum)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.facingMode Mozilla MediaSourceStates.facingMode documentation> 
getFacingMode ::
              (MonadIO m) => MediaSourceStates -> m VideoFacingModeEnum
getFacingMode self
  = liftIO
      ((js_getFacingMode (unMediaSourceStates self)) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"volume\"]" js_getVolume ::
        JSRef MediaSourceStates -> IO (JSRef (Maybe Word))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates.volume Mozilla MediaSourceStates.volume documentation> 
getVolume :: (MonadIO m) => MediaSourceStates -> m (Maybe Word)
getVolume self
  = liftIO
      ((js_getVolume (unMediaSourceStates self)) >>= fromJSRefUnchecked)
#else
module GHCJS.DOM.MediaSourceStates (
  ) where
#endif
