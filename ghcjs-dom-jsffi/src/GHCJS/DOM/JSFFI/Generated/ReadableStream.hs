{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ReadableStream
       (js_newReadableStream, newReadableStream, js_read, read, read_,
        readUnsafe, readUnchecked, js_cancel, cancel, cancel_,
        cancelUnsafe, cancelUnchecked, js_pipeTo, pipeTo, pipeTo_,
        pipeToUnsafe, pipeToUnchecked, js_pipeThrough, pipeThrough,
        pipeThrough_, pipeThroughUnsafe, pipeThroughUnchecked, js_getState,
        getState, js_getClosed, getClosed, getClosedUnsafe,
        getClosedUnchecked, js_getReady, getReady, getReadyUnsafe,
        getReadyUnchecked, ReadableStream(..), gTypeReadableStream)
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
 
foreign import javascript unsafe
        "new window[\"ReadableStream\"]($1)" js_newReadableStream ::
        JSVal -> IO ReadableStream

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream Mozilla ReadableStream documentation> 
newReadableStream :: (MonadIO m) => JSVal -> m ReadableStream
newReadableStream properties
  = liftIO (js_newReadableStream properties)
 
foreign import javascript unsafe "$1[\"read\"]()" js_read ::
        ReadableStream -> IO (Nullable GObject)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.read Mozilla ReadableStream.read documentation> 
read :: (MonadIO m) => ReadableStream -> m (Maybe GObject)
read self = liftIO (nullableToMaybe <$> (js_read (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.read Mozilla ReadableStream.read documentation> 
read_ :: (MonadIO m) => ReadableStream -> m ()
read_ self = liftIO (void (js_read (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.read Mozilla ReadableStream.read documentation> 
readUnsafe ::
           (MonadIO m, HasCallStack) => ReadableStream -> m GObject
readUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_read (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.read Mozilla ReadableStream.read documentation> 
readUnchecked :: (MonadIO m) => ReadableStream -> m GObject
readUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_read (self)))
 
foreign import javascript unsafe "$1[\"cancel\"]($2)" js_cancel ::
        ReadableStream -> JSString -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.cancel Mozilla ReadableStream.cancel documentation> 
cancel ::
       (MonadIO m, ToJSString reason) =>
         ReadableStream -> reason -> m (Maybe Promise)
cancel self reason
  = liftIO
      (nullableToMaybe <$> (js_cancel (self) (toJSString reason)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.cancel Mozilla ReadableStream.cancel documentation> 
cancel_ ::
        (MonadIO m, ToJSString reason) => ReadableStream -> reason -> m ()
cancel_ self reason
  = liftIO (void (js_cancel (self) (toJSString reason)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.cancel Mozilla ReadableStream.cancel documentation> 
cancelUnsafe ::
             (MonadIO m, ToJSString reason, HasCallStack) =>
               ReadableStream -> reason -> m Promise
cancelUnsafe self reason
  = liftIO
      ((nullableToMaybe <$> (js_cancel (self) (toJSString reason))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.cancel Mozilla ReadableStream.cancel documentation> 
cancelUnchecked ::
                (MonadIO m, ToJSString reason) =>
                  ReadableStream -> reason -> m Promise
cancelUnchecked self reason
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_cancel (self) (toJSString reason)))
 
foreign import javascript unsafe "$1[\"pipeTo\"]($2, $3)" js_pipeTo
        :: ReadableStream -> JSVal -> JSVal -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeTo Mozilla ReadableStream.pipeTo documentation> 
pipeTo ::
       (MonadIO m) =>
         ReadableStream -> JSVal -> JSVal -> m (Maybe Promise)
pipeTo self streams options
  = liftIO (nullableToMaybe <$> (js_pipeTo (self) streams options))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeTo Mozilla ReadableStream.pipeTo documentation> 
pipeTo_ :: (MonadIO m) => ReadableStream -> JSVal -> JSVal -> m ()
pipeTo_ self streams options
  = liftIO (void (js_pipeTo (self) streams options))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeTo Mozilla ReadableStream.pipeTo documentation> 
pipeToUnsafe ::
             (MonadIO m, HasCallStack) =>
               ReadableStream -> JSVal -> JSVal -> m Promise
pipeToUnsafe self streams options
  = liftIO
      ((nullableToMaybe <$> (js_pipeTo (self) streams options)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeTo Mozilla ReadableStream.pipeTo documentation> 
pipeToUnchecked ::
                (MonadIO m) => ReadableStream -> JSVal -> JSVal -> m Promise
pipeToUnchecked self streams options
  = liftIO
      (fromJust . nullableToMaybe <$> (js_pipeTo (self) streams options))
 
foreign import javascript unsafe "$1[\"pipeThrough\"]($2, $3)"
        js_pipeThrough ::
        ReadableStream -> JSVal -> JSVal -> IO (Nullable GObject)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeThrough Mozilla ReadableStream.pipeThrough documentation> 
pipeThrough ::
            (MonadIO m) =>
              ReadableStream -> JSVal -> JSVal -> m (Maybe GObject)
pipeThrough self dest options
  = liftIO (nullableToMaybe <$> (js_pipeThrough (self) dest options))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeThrough Mozilla ReadableStream.pipeThrough documentation> 
pipeThrough_ ::
             (MonadIO m) => ReadableStream -> JSVal -> JSVal -> m ()
pipeThrough_ self dest options
  = liftIO (void (js_pipeThrough (self) dest options))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeThrough Mozilla ReadableStream.pipeThrough documentation> 
pipeThroughUnsafe ::
                  (MonadIO m, HasCallStack) =>
                    ReadableStream -> JSVal -> JSVal -> m GObject
pipeThroughUnsafe self dest options
  = liftIO
      ((nullableToMaybe <$> (js_pipeThrough (self) dest options)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeThrough Mozilla ReadableStream.pipeThrough documentation> 
pipeThroughUnchecked ::
                     (MonadIO m) => ReadableStream -> JSVal -> JSVal -> m GObject
pipeThroughUnchecked self dest options
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_pipeThrough (self) dest options))
 
foreign import javascript unsafe "$1[\"state\"]" js_getState ::
        ReadableStream -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.state Mozilla ReadableStream.state documentation> 
getState ::
         (MonadIO m) => ReadableStream -> m ReadableStreamStateType
getState self
  = liftIO ((js_getState (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"closed\"]" js_getClosed ::
        ReadableStream -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.closed Mozilla ReadableStream.closed documentation> 
getClosed :: (MonadIO m) => ReadableStream -> m (Maybe Promise)
getClosed self = liftIO (nullableToMaybe <$> (js_getClosed (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.closed Mozilla ReadableStream.closed documentation> 
getClosedUnsafe ::
                (MonadIO m, HasCallStack) => ReadableStream -> m Promise
getClosedUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getClosed (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.closed Mozilla ReadableStream.closed documentation> 
getClosedUnchecked :: (MonadIO m) => ReadableStream -> m Promise
getClosedUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getClosed (self)))
 
foreign import javascript unsafe "$1[\"ready\"]" js_getReady ::
        ReadableStream -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.ready Mozilla ReadableStream.ready documentation> 
getReady :: (MonadIO m) => ReadableStream -> m (Maybe Promise)
getReady self = liftIO (nullableToMaybe <$> (js_getReady (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.ready Mozilla ReadableStream.ready documentation> 
getReadyUnsafe ::
               (MonadIO m, HasCallStack) => ReadableStream -> m Promise
getReadyUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getReady (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.ready Mozilla ReadableStream.ready documentation> 
getReadyUnchecked :: (MonadIO m) => ReadableStream -> m Promise
getReadyUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getReady (self)))