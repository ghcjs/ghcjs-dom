{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaSource
       (js_newMediaSource, newMediaSource, js_addSourceBuffer,
        addSourceBuffer, js_removeSourceBuffer, removeSourceBuffer,
        js_endOfStream, endOfStream, js_isTypeSupported, isTypeSupported,
        js_getSourceBuffers, getSourceBuffers, js_getActiveSourceBuffers,
        getActiveSourceBuffers, js_setDuration, setDuration,
        js_getDuration, getDuration, js_getReadyState, getReadyState,
        MediaSource, castToMediaSource, gTypeMediaSource)
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
 
foreign import javascript unsafe "new window[\"MediaSource\"]()"
        js_newMediaSource :: IO MediaSource

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource Mozilla MediaSource documentation> 
newMediaSource :: (MonadIO m) => m MediaSource
newMediaSource = liftIO (js_newMediaSource)
 
foreign import javascript unsafe "$1[\"addSourceBuffer\"]($2)"
        js_addSourceBuffer ::
        MediaSource -> JSString -> IO (Nullable SourceBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.addSourceBuffer Mozilla MediaSource.addSourceBuffer documentation> 
addSourceBuffer ::
                (MonadIO m, ToJSString type') =>
                  MediaSource -> type' -> m (Maybe SourceBuffer)
addSourceBuffer self type'
  = liftIO
      (nullableToMaybe <$>
         (js_addSourceBuffer (self) (toJSString type')))
 
foreign import javascript unsafe "$1[\"removeSourceBuffer\"]($2)"
        js_removeSourceBuffer ::
        MediaSource -> Nullable SourceBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.removeSourceBuffer Mozilla MediaSource.removeSourceBuffer documentation> 
removeSourceBuffer ::
                   (MonadIO m) => MediaSource -> Maybe SourceBuffer -> m ()
removeSourceBuffer self buffer
  = liftIO (js_removeSourceBuffer (self) (maybeToNullable buffer))
 
foreign import javascript unsafe "$1[\"endOfStream\"]($2)"
        js_endOfStream :: MediaSource -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.endOfStream Mozilla MediaSource.endOfStream documentation> 
endOfStream ::
            (MonadIO m) => MediaSource -> EndOfStreamError -> m ()
endOfStream self error
  = liftIO (js_endOfStream (self) (pToJSVal error))
 
foreign import javascript unsafe
        "($1[\"isTypeSupported\"]($2) ? 1 : 0)" js_isTypeSupported ::
        MediaSource -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.isTypeSupported Mozilla MediaSource.isTypeSupported documentation> 
isTypeSupported ::
                (MonadIO m, ToJSString type') => MediaSource -> type' -> m Bool
isTypeSupported self type'
  = liftIO (js_isTypeSupported (self) (toJSString type'))
 
foreign import javascript unsafe "$1[\"sourceBuffers\"]"
        js_getSourceBuffers ::
        MediaSource -> IO (Nullable SourceBufferList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.sourceBuffers Mozilla MediaSource.sourceBuffers documentation> 
getSourceBuffers ::
                 (MonadIO m) => MediaSource -> m (Maybe SourceBufferList)
getSourceBuffers self
  = liftIO (nullableToMaybe <$> (js_getSourceBuffers (self)))
 
foreign import javascript unsafe "$1[\"activeSourceBuffers\"]"
        js_getActiveSourceBuffers ::
        MediaSource -> IO (Nullable SourceBufferList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.activeSourceBuffers Mozilla MediaSource.activeSourceBuffers documentation> 
getActiveSourceBuffers ::
                       (MonadIO m) => MediaSource -> m (Maybe SourceBufferList)
getActiveSourceBuffers self
  = liftIO (nullableToMaybe <$> (js_getActiveSourceBuffers (self)))
 
foreign import javascript unsafe "$1[\"duration\"] = $2;"
        js_setDuration :: MediaSource -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.duration Mozilla MediaSource.duration documentation> 
setDuration :: (MonadIO m) => MediaSource -> Double -> m ()
setDuration self val = liftIO (js_setDuration (self) val)
 
foreign import javascript unsafe "$1[\"duration\"]" js_getDuration
        :: MediaSource -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.duration Mozilla MediaSource.duration documentation> 
getDuration :: (MonadIO m) => MediaSource -> m Double
getDuration self = liftIO (js_getDuration (self))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: MediaSource -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.readyState Mozilla MediaSource.readyState documentation> 
getReadyState ::
              (MonadIO m, FromJSString result) => MediaSource -> m result
getReadyState self
  = liftIO (fromJSString <$> (js_getReadyState (self)))