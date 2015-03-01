{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ReadableStream
       (js_newReadableStream, newReadableStream, js_read, read, js_cancel,
        cancel, js_pipeTo, pipeTo, js_pipeThrough, pipeThrough,
        js_getState, getState, js_getClosed, getClosed, js_getReady,
        getReady, ReadableStream, castToReadableStream,
        gTypeReadableStream)
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

 
foreign import javascript unsafe
        "new window[\"ReadableStream\"]($1)" js_newReadableStream ::
        JSRef a -> IO (JSRef ReadableStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream Mozilla ReadableStream documentation> 
newReadableStream :: (MonadIO m) => JSRef a -> m ReadableStream
newReadableStream properties
  = liftIO (js_newReadableStream properties >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"read\"]()" js_read ::
        JSRef ReadableStream -> IO (JSRef GObject)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.read Mozilla ReadableStream.read documentation> 
read :: (MonadIO m) => ReadableStream -> m (Maybe GObject)
read self
  = liftIO ((js_read (unReadableStream self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"cancel\"]($2)" js_cancel ::
        JSRef ReadableStream -> JSString -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.cancel Mozilla ReadableStream.cancel documentation> 
cancel ::
       (MonadIO m, ToJSString reason) =>
         ReadableStream -> reason -> m (Maybe Promise)
cancel self reason
  = liftIO
      ((js_cancel (unReadableStream self) (toJSString reason)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"pipeTo\"]($2, $3)" js_pipeTo
        :: JSRef ReadableStream -> JSRef a -> JSRef a -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeTo Mozilla ReadableStream.pipeTo documentation> 
pipeTo ::
       (MonadIO m) =>
         ReadableStream -> JSRef a -> JSRef a -> m (Maybe Promise)
pipeTo self streams options
  = liftIO
      ((js_pipeTo (unReadableStream self) streams options) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"pipeThrough\"]($2, $3)"
        js_pipeThrough ::
        JSRef ReadableStream -> JSRef a -> JSRef a -> IO (JSRef GObject)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeThrough Mozilla ReadableStream.pipeThrough documentation> 
pipeThrough ::
            (MonadIO m) =>
              ReadableStream -> JSRef a -> JSRef a -> m (Maybe GObject)
pipeThrough self dest options
  = liftIO
      ((js_pipeThrough (unReadableStream self) dest options) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"state\"]" js_getState ::
        JSRef ReadableStream -> IO (JSRef ReadableStreamStateType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.state Mozilla ReadableStream.state documentation> 
getState ::
         (MonadIO m) => ReadableStream -> m ReadableStreamStateType
getState self
  = liftIO
      ((js_getState (unReadableStream self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"closed\"]" js_getClosed ::
        JSRef ReadableStream -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.closed Mozilla ReadableStream.closed documentation> 
getClosed :: (MonadIO m) => ReadableStream -> m (Maybe Promise)
getClosed self
  = liftIO ((js_getClosed (unReadableStream self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"ready\"]" js_getReady ::
        JSRef ReadableStream -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.ready Mozilla ReadableStream.ready documentation> 
getReady :: (MonadIO m) => ReadableStream -> m (Maybe Promise)
getReady self
  = liftIO ((js_getReady (unReadableStream self)) >>= fromJSRef)
#else
module GHCJS.DOM.ReadableStream (
  ) where
#endif
