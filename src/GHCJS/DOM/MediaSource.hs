{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaSource
       (js_newMediaSource, newMediaSource, js_addSourceBuffer,
        addSourceBuffer, js_removeSourceBuffer, removeSourceBuffer,
        js_endOfStream, endOfStream, js_isTypeSupported, isTypeSupported,
        js_getSourceBuffers, getSourceBuffers, js_getActiveSourceBuffers,
        getActiveSourceBuffers, js_setDuration, setDuration,
        js_getDuration, getDuration, js_getReadyState, getReadyState,
        MediaSource, castToMediaSource, gTypeMediaSource)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"MediaSource\"]()"
        js_newMediaSource :: IO (JSRef MediaSource)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource Mozilla MediaSource documentation> 
newMediaSource :: (MonadIO m) => m MediaSource
newMediaSource = liftIO (js_newMediaSource >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"addSourceBuffer\"]($2)"
        js_addSourceBuffer ::
        JSRef MediaSource -> JSString -> IO (JSRef SourceBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.addSourceBuffer Mozilla MediaSource.addSourceBuffer documentation> 
addSourceBuffer ::
                (MonadIO m, ToJSString type') =>
                  MediaSource -> type' -> m (Maybe SourceBuffer)
addSourceBuffer self type'
  = liftIO
      ((js_addSourceBuffer (unMediaSource self) (toJSString type')) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"removeSourceBuffer\"]($2)"
        js_removeSourceBuffer ::
        JSRef MediaSource -> JSRef SourceBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.removeSourceBuffer Mozilla MediaSource.removeSourceBuffer documentation> 
removeSourceBuffer ::
                   (MonadIO m) => MediaSource -> Maybe SourceBuffer -> m ()
removeSourceBuffer self buffer
  = liftIO
      (js_removeSourceBuffer (unMediaSource self)
         (maybe jsNull unSourceBuffer buffer))
 
foreign import javascript unsafe "$1[\"endOfStream\"]($2)"
        js_endOfStream ::
        JSRef MediaSource -> JSRef EndOfStreamError -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.endOfStream Mozilla MediaSource.endOfStream documentation> 
endOfStream ::
            (MonadIO m) => MediaSource -> EndOfStreamError -> m ()
endOfStream self error
  = liftIO (js_endOfStream (unMediaSource self) (ptoJSRef error))
 
foreign import javascript unsafe
        "($1[\"isTypeSupported\"]($2) ? 1 : 0)" js_isTypeSupported ::
        JSRef MediaSource -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.isTypeSupported Mozilla MediaSource.isTypeSupported documentation> 
isTypeSupported ::
                (MonadIO m, ToJSString type') => MediaSource -> type' -> m Bool
isTypeSupported self type'
  = liftIO
      (js_isTypeSupported (unMediaSource self) (toJSString type'))
 
foreign import javascript unsafe "$1[\"sourceBuffers\"]"
        js_getSourceBuffers ::
        JSRef MediaSource -> IO (JSRef SourceBufferList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.sourceBuffers Mozilla MediaSource.sourceBuffers documentation> 
getSourceBuffers ::
                 (MonadIO m) => MediaSource -> m (Maybe SourceBufferList)
getSourceBuffers self
  = liftIO ((js_getSourceBuffers (unMediaSource self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"activeSourceBuffers\"]"
        js_getActiveSourceBuffers ::
        JSRef MediaSource -> IO (JSRef SourceBufferList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.activeSourceBuffers Mozilla MediaSource.activeSourceBuffers documentation> 
getActiveSourceBuffers ::
                       (MonadIO m) => MediaSource -> m (Maybe SourceBufferList)
getActiveSourceBuffers self
  = liftIO
      ((js_getActiveSourceBuffers (unMediaSource self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"duration\"] = $2;"
        js_setDuration :: JSRef MediaSource -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.duration Mozilla MediaSource.duration documentation> 
setDuration :: (MonadIO m) => MediaSource -> Double -> m ()
setDuration self val
  = liftIO (js_setDuration (unMediaSource self) val)
 
foreign import javascript unsafe "$1[\"duration\"]" js_getDuration
        :: JSRef MediaSource -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.duration Mozilla MediaSource.duration documentation> 
getDuration :: (MonadIO m) => MediaSource -> m Double
getDuration self = liftIO (js_getDuration (unMediaSource self))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: JSRef MediaSource -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.readyState Mozilla MediaSource.readyState documentation> 
getReadyState ::
              (MonadIO m, FromJSString result) => MediaSource -> m result
getReadyState self
  = liftIO (fromJSString <$> (js_getReadyState (unMediaSource self)))
#else
module GHCJS.DOM.MediaSource (
  ) where
#endif
