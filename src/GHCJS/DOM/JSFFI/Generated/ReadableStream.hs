{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.ReadableStream
       (js_newReadableStream, newReadableStream, js_read, read, js_cancel,
        cancel, js_pipeTo, pipeTo, js_pipeThrough, pipeThrough,
        js_getState, getState, js_getClosed, getClosed, js_getReady,
        getReady, ReadableStream, castToReadableStream,
        gTypeReadableStream)
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
 
foreign import javascript unsafe "$1[\"cancel\"]($2)" js_cancel ::
        ReadableStream -> JSString -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.cancel Mozilla ReadableStream.cancel documentation> 
cancel ::
       (MonadIO m, ToJSString reason) =>
         ReadableStream -> reason -> m (Maybe Promise)
cancel self reason
  = liftIO
      (nullableToMaybe <$> (js_cancel (self) (toJSString reason)))
 
foreign import javascript unsafe "$1[\"pipeTo\"]($2, $3)" js_pipeTo
        :: ReadableStream -> JSVal -> JSVal -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeTo Mozilla ReadableStream.pipeTo documentation> 
pipeTo ::
       (MonadIO m) =>
         ReadableStream -> JSVal -> JSVal -> m (Maybe Promise)
pipeTo self streams options
  = liftIO (nullableToMaybe <$> (js_pipeTo (self) streams options))
 
foreign import javascript unsafe "$1[\"pipeThrough\"]($2, $3)"
        js_pipeThrough ::
        ReadableStream -> JSVal -> JSVal -> IO (Nullable GObject)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeThrough Mozilla ReadableStream.pipeThrough documentation> 
pipeThrough ::
            (MonadIO m) =>
              ReadableStream -> JSVal -> JSVal -> m (Maybe GObject)
pipeThrough self dest options
  = liftIO (nullableToMaybe <$> (js_pipeThrough (self) dest options))
 
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
 
foreign import javascript unsafe "$1[\"ready\"]" js_getReady ::
        ReadableStream -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.ready Mozilla ReadableStream.ready documentation> 
getReady :: (MonadIO m) => ReadableStream -> m (Maybe Promise)
getReady self = liftIO (nullableToMaybe <$> (js_getReady (self)))