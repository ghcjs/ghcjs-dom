{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ReadableStreamBYOBRequest
       (js_newReadableStreamBYOBRequest, newReadableStreamBYOBRequest,
        js_respond, respond, js_respondWithNewView, respondWithNewView,
        js_getView, getView, ReadableStreamBYOBRequest(..),
        gTypeReadableStreamBYOBRequest)
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
        "new window[\"ReadableStreamBYOBRequest\"]($1,\n$2)"
        js_newReadableStreamBYOBRequest ::
        ReadableByteStreamController ->
          RawTypedArray -> IO ReadableStreamBYOBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest Mozilla ReadableStreamBYOBRequest documentation> 
newReadableStreamBYOBRequest ::
                             (MonadIO m, IsRawTypedArray view) =>
                               ReadableByteStreamController -> view -> m ReadableStreamBYOBRequest
newReadableStreamBYOBRequest controller view
  = liftIO
      (js_newReadableStreamBYOBRequest controller (toRawTypedArray view))
 
foreign import javascript unsafe "$1[\"respond\"]($2)" js_respond
        :: ReadableStreamBYOBRequest -> Optional JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest.respond Mozilla ReadableStreamBYOBRequest.respond documentation> 
respond ::
        (MonadIO m, ToJSVal bytesWritten) =>
          ReadableStreamBYOBRequest -> Maybe bytesWritten -> m ()
respond self bytesWritten
  = liftIO
      (mapM toJSVal bytesWritten >>=
         \ bytesWritten' -> js_respond self (maybeToOptional bytesWritten'))
 
foreign import javascript unsafe "$1[\"respondWithNewView\"]($2)"
        js_respondWithNewView ::
        ReadableStreamBYOBRequest -> Optional JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest.respondWithNewView Mozilla ReadableStreamBYOBRequest.respondWithNewView documentation> 
respondWithNewView ::
                   (MonadIO m, ToJSVal view) =>
                     ReadableStreamBYOBRequest -> Maybe view -> m ()
respondWithNewView self view
  = liftIO
      (mapM toJSVal view >>=
         \ view' -> js_respondWithNewView self (maybeToOptional view'))
 
foreign import javascript unsafe "$1[\"view\"]" js_getView ::
        ReadableStreamBYOBRequest -> IO RawTypedArray

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest.view Mozilla ReadableStreamBYOBRequest.view documentation> 
getView ::
        (MonadIO m) => ReadableStreamBYOBRequest -> m RawTypedArray
getView self = liftIO (js_getView self)