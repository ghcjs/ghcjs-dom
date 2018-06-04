{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaSource
       (js_newMediaSource, newMediaSource, js_addSourceBuffer,
        addSourceBuffer, addSourceBuffer_, js_removeSourceBuffer,
        removeSourceBuffer, js_endOfStream, endOfStream,
        js_isTypeSupported, isTypeSupported, isTypeSupported_,
        js_setLiveSeekableRange, setLiveSeekableRange,
        js_clearLiveSeekableRange, clearLiveSeekableRange,
        js_getSourceBuffers, getSourceBuffers, js_getActiveSourceBuffers,
        getActiveSourceBuffers, js_setDuration, setDuration,
        js_getDuration, getDuration, js_getReadyState, getReadyState,
        sourceopen, sourceended, sourceclose, MediaSource(..),
        gTypeMediaSource)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "new window[\"MediaSource\"]()"
        js_newMediaSource :: IO MediaSource

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource Mozilla MediaSource documentation> 
newMediaSource :: (MonadIO m) => m MediaSource
newMediaSource = liftIO (js_newMediaSource)
 
foreign import javascript safe "$1[\"addSourceBuffer\"]($2)"
        js_addSourceBuffer :: MediaSource -> JSString -> IO SourceBuffer

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.addSourceBuffer Mozilla MediaSource.addSourceBuffer documentation> 
addSourceBuffer ::
                (MonadIO m, ToJSString type') =>
                  MediaSource -> type' -> m SourceBuffer
addSourceBuffer self type'
  = liftIO (js_addSourceBuffer self (toJSString type'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.addSourceBuffer Mozilla MediaSource.addSourceBuffer documentation> 
addSourceBuffer_ ::
                 (MonadIO m, ToJSString type') => MediaSource -> type' -> m ()
addSourceBuffer_ self type'
  = liftIO (void (js_addSourceBuffer self (toJSString type')))
 
foreign import javascript safe "$1[\"removeSourceBuffer\"]($2)"
        js_removeSourceBuffer :: MediaSource -> SourceBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.removeSourceBuffer Mozilla MediaSource.removeSourceBuffer documentation> 
removeSourceBuffer ::
                   (MonadIO m) => MediaSource -> SourceBuffer -> m ()
removeSourceBuffer self buffer
  = liftIO (js_removeSourceBuffer self buffer)
 
foreign import javascript safe "$1[\"endOfStream\"]($2)"
        js_endOfStream :: MediaSource -> Optional EndOfStreamError -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.endOfStream Mozilla MediaSource.endOfStream documentation> 
endOfStream ::
            (MonadIO m) => MediaSource -> Maybe EndOfStreamError -> m ()
endOfStream self error
  = liftIO (js_endOfStream self (maybeToOptional error))
 
foreign import javascript unsafe
        "(window[\"MediaSource\"][\"isTypeSupported\"]($1) ? 1 : 0)"
        js_isTypeSupported :: JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.isTypeSupported Mozilla MediaSource.isTypeSupported documentation> 
isTypeSupported :: (MonadIO m, ToJSString type') => type' -> m Bool
isTypeSupported type'
  = liftIO (js_isTypeSupported (toJSString type'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.isTypeSupported Mozilla MediaSource.isTypeSupported documentation> 
isTypeSupported_ :: (MonadIO m, ToJSString type') => type' -> m ()
isTypeSupported_ type'
  = liftIO (void (js_isTypeSupported (toJSString type')))
 
foreign import javascript safe
        "$1[\"setLiveSeekableRange\"]($2,\n$3)" js_setLiveSeekableRange ::
        MediaSource -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.setLiveSeekableRange Mozilla MediaSource.setLiveSeekableRange documentation> 
setLiveSeekableRange ::
                     (MonadIO m) => MediaSource -> Double -> Double -> m ()
setLiveSeekableRange self start end
  = liftIO (js_setLiveSeekableRange self start end)
 
foreign import javascript safe "$1[\"clearLiveSeekableRange\"]()"
        js_clearLiveSeekableRange :: MediaSource -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.clearLiveSeekableRange Mozilla MediaSource.clearLiveSeekableRange documentation> 
clearLiveSeekableRange :: (MonadIO m) => MediaSource -> m ()
clearLiveSeekableRange self
  = liftIO (js_clearLiveSeekableRange self)
 
foreign import javascript unsafe "$1[\"sourceBuffers\"]"
        js_getSourceBuffers :: MediaSource -> IO SourceBufferList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.sourceBuffers Mozilla MediaSource.sourceBuffers documentation> 
getSourceBuffers ::
                 (MonadIO m) => MediaSource -> m SourceBufferList
getSourceBuffers self = liftIO (js_getSourceBuffers self)
 
foreign import javascript unsafe "$1[\"activeSourceBuffers\"]"
        js_getActiveSourceBuffers :: MediaSource -> IO SourceBufferList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.activeSourceBuffers Mozilla MediaSource.activeSourceBuffers documentation> 
getActiveSourceBuffers ::
                       (MonadIO m) => MediaSource -> m SourceBufferList
getActiveSourceBuffers self
  = liftIO (js_getActiveSourceBuffers self)
 
foreign import javascript safe "$1[\"duration\"] = $2;"
        js_setDuration :: MediaSource -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.duration Mozilla MediaSource.duration documentation> 
setDuration :: (MonadIO m) => MediaSource -> Double -> m ()
setDuration self val = liftIO (js_setDuration self val)
 
foreign import javascript unsafe "$1[\"duration\"]" js_getDuration
        :: MediaSource -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.duration Mozilla MediaSource.duration documentation> 
getDuration :: (MonadIO m) => MediaSource -> m Double
getDuration self = liftIO (js_getDuration self)
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: MediaSource -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.readyState Mozilla MediaSource.readyState documentation> 
getReadyState :: (MonadIO m) => MediaSource -> m ReadyState
getReadyState self
  = liftIO ((js_getReadyState self) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.onsourceopen Mozilla MediaSource.onsourceopen documentation> 
sourceopen :: EventName MediaSource onsourceopen
sourceopen = unsafeEventName (toJSString "sourceopen")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.onsourceended Mozilla MediaSource.onsourceended documentation> 
sourceended :: EventName MediaSource onsourceended
sourceended = unsafeEventName (toJSString "sourceended")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.onsourceclose Mozilla MediaSource.onsourceclose documentation> 
sourceclose :: EventName MediaSource onsourceclose
sourceclose = unsafeEventName (toJSString "sourceclose")