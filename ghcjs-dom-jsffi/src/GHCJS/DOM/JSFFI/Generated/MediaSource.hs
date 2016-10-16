{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaSource
       (js_newMediaSource, newMediaSource, js_addSourceBuffer,
        addSourceBuffer, addSourceBuffer_, addSourceBufferUnsafe,
        addSourceBufferUnchecked, js_removeSourceBuffer,
        removeSourceBuffer, js_endOfStream, endOfStream,
        js_isTypeSupported, isTypeSupported, isTypeSupported_,
        js_getSourceBuffers, getSourceBuffers, getSourceBuffersUnsafe,
        getSourceBuffersUnchecked, js_getActiveSourceBuffers,
        getActiveSourceBuffers, getActiveSourceBuffersUnsafe,
        getActiveSourceBuffersUnchecked, js_setDuration, setDuration,
        js_getDuration, getDuration, js_getReadyState, getReadyState,
        MediaSource(..), gTypeMediaSource)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.addSourceBuffer Mozilla MediaSource.addSourceBuffer documentation> 
addSourceBuffer_ ::
                 (MonadIO m, ToJSString type') => MediaSource -> type' -> m ()
addSourceBuffer_ self type'
  = liftIO (void (js_addSourceBuffer (self) (toJSString type')))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.addSourceBuffer Mozilla MediaSource.addSourceBuffer documentation> 
addSourceBufferUnsafe ::
                      (MonadIO m, ToJSString type', HasCallStack) =>
                        MediaSource -> type' -> m SourceBuffer
addSourceBufferUnsafe self type'
  = liftIO
      ((nullableToMaybe <$>
          (js_addSourceBuffer (self) (toJSString type')))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.addSourceBuffer Mozilla MediaSource.addSourceBuffer documentation> 
addSourceBufferUnchecked ::
                         (MonadIO m, ToJSString type') =>
                           MediaSource -> type' -> m SourceBuffer
addSourceBufferUnchecked self type'
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.isTypeSupported Mozilla MediaSource.isTypeSupported documentation> 
isTypeSupported_ ::
                 (MonadIO m, ToJSString type') => MediaSource -> type' -> m ()
isTypeSupported_ self type'
  = liftIO (void (js_isTypeSupported (self) (toJSString type')))
 
foreign import javascript unsafe "$1[\"sourceBuffers\"]"
        js_getSourceBuffers ::
        MediaSource -> IO (Nullable SourceBufferList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.sourceBuffers Mozilla MediaSource.sourceBuffers documentation> 
getSourceBuffers ::
                 (MonadIO m) => MediaSource -> m (Maybe SourceBufferList)
getSourceBuffers self
  = liftIO (nullableToMaybe <$> (js_getSourceBuffers (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.sourceBuffers Mozilla MediaSource.sourceBuffers documentation> 
getSourceBuffersUnsafe ::
                       (MonadIO m, HasCallStack) => MediaSource -> m SourceBufferList
getSourceBuffersUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSourceBuffers (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.sourceBuffers Mozilla MediaSource.sourceBuffers documentation> 
getSourceBuffersUnchecked ::
                          (MonadIO m) => MediaSource -> m SourceBufferList
getSourceBuffersUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getSourceBuffers (self)))
 
foreign import javascript unsafe "$1[\"activeSourceBuffers\"]"
        js_getActiveSourceBuffers ::
        MediaSource -> IO (Nullable SourceBufferList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.activeSourceBuffers Mozilla MediaSource.activeSourceBuffers documentation> 
getActiveSourceBuffers ::
                       (MonadIO m) => MediaSource -> m (Maybe SourceBufferList)
getActiveSourceBuffers self
  = liftIO (nullableToMaybe <$> (js_getActiveSourceBuffers (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.activeSourceBuffers Mozilla MediaSource.activeSourceBuffers documentation> 
getActiveSourceBuffersUnsafe ::
                             (MonadIO m, HasCallStack) => MediaSource -> m SourceBufferList
getActiveSourceBuffersUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getActiveSourceBuffers (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.activeSourceBuffers Mozilla MediaSource.activeSourceBuffers documentation> 
getActiveSourceBuffersUnchecked ::
                                (MonadIO m) => MediaSource -> m SourceBufferList
getActiveSourceBuffersUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getActiveSourceBuffers (self)))
 
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