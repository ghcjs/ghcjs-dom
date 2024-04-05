{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ReadableByteStreamController
       (js_newReadableByteStreamController,
        newReadableByteStreamController, js_enqueue, enqueue, js_close,
        close, js_error, error, js_getByobRequest, getByobRequest,
        js_getDesiredSize, getDesiredSize,
        ReadableByteStreamController(..),
        gTypeReadableByteStreamController)
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
 
foreign import javascript unsafe
        "new window[\"ReadableByteStreamController\"]($1,\n$2, $3)"
        js_newReadableByteStreamController ::
        ReadableStream -> JSVal -> Word -> IO ReadableByteStreamController

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController Mozilla ReadableByteStreamController documentation> 
newReadableByteStreamController ::
                                (MonadIO m, ToJSVal underlyingByteSource) =>
                                  ReadableStream ->
                                    underlyingByteSource -> Word -> m ReadableByteStreamController
newReadableByteStreamController stream underlyingByteSource
  highWaterMark
  = liftIO
      (toJSVal underlyingByteSource >>=
         \ underlyingByteSource' ->
           js_newReadableByteStreamController stream underlyingByteSource'
         highWaterMark)
 
foreign import javascript unsafe "$1[\"enqueue\"]($2)" js_enqueue
        :: ReadableByteStreamController -> Optional JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController.enqueue Mozilla ReadableByteStreamController.enqueue documentation> 
enqueue ::
        (MonadIO m, ToJSVal chunk) =>
          ReadableByteStreamController -> Maybe chunk -> m ()
enqueue self chunk
  = liftIO
      (mapM toJSVal chunk >>=
         \ chunk' -> js_enqueue self (maybeToOptional chunk'))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        ReadableByteStreamController -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController.close Mozilla ReadableByteStreamController.close documentation> 
close :: (MonadIO m) => ReadableByteStreamController -> m ()
close self = liftIO (js_close self)
 
foreign import javascript unsafe "$1[\"error\"]($2)" js_error ::
        ReadableByteStreamController -> Optional JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController.error Mozilla ReadableByteStreamController.error documentation> 
error ::
      (MonadIO m, ToJSVal error) =>
        ReadableByteStreamController -> Maybe error -> m ()
error self error
  = liftIO
      (mapM toJSVal error >>=
         \ error' -> js_error self (maybeToOptional error'))
 
foreign import javascript unsafe "$1[\"byobRequest\"]"
        js_getByobRequest ::
        ReadableByteStreamController -> IO ReadableStreamBYOBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController.byobRequest Mozilla ReadableByteStreamController.byobRequest documentation> 
getByobRequest ::
               (MonadIO m) =>
                 ReadableByteStreamController -> m ReadableStreamBYOBRequest
getByobRequest self = liftIO (js_getByobRequest self)
 
foreign import javascript unsafe "$1[\"desiredSize\"]"
        js_getDesiredSize :: ReadableByteStreamController -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableByteStreamController.desiredSize Mozilla ReadableByteStreamController.desiredSize documentation> 
getDesiredSize ::
               (MonadIO m) => ReadableByteStreamController -> m Double
getDesiredSize self = liftIO (js_getDesiredSize self)