{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ReadableStreamDefaultController
       (js_newReadableStreamDefaultController,
        newReadableStreamDefaultController, js_enqueue, enqueue, js_close,
        close, js_error, error, js_getDesiredSize, getDesiredSize,
        ReadableStreamDefaultController(..),
        gTypeReadableStreamDefaultController)
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
        "new window[\"ReadableStreamDefaultController\"]($1,\n$2, $3, $4)"
        js_newReadableStreamDefaultController ::
        ReadableStream ->
          JSVal -> Word -> Word -> IO ReadableStreamDefaultController

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController Mozilla ReadableStreamDefaultController documentation> 
newReadableStreamDefaultController ::
                                   (MonadIO m, ToJSVal underlyingSource) =>
                                     ReadableStream ->
                                       underlyingSource ->
                                         Word -> Word -> m ReadableStreamDefaultController
newReadableStreamDefaultController stream underlyingSource size
  highWaterMark
  = liftIO
      (toJSVal underlyingSource >>=
         \ underlyingSource' ->
           js_newReadableStreamDefaultController stream underlyingSource'
         size
         highWaterMark)
 
foreign import javascript unsafe "$1[\"enqueue\"]($2)" js_enqueue
        :: ReadableStreamDefaultController -> Optional JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController.enqueue Mozilla ReadableStreamDefaultController.enqueue documentation> 
enqueue ::
        (MonadIO m, ToJSVal chunk) =>
          ReadableStreamDefaultController -> Maybe chunk -> m ()
enqueue self chunk
  = liftIO
      (mapM toJSVal chunk >>=
         \ chunk' -> js_enqueue self (maybeToOptional chunk'))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        ReadableStreamDefaultController -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController.close Mozilla ReadableStreamDefaultController.close documentation> 
close :: (MonadIO m) => ReadableStreamDefaultController -> m ()
close self = liftIO (js_close self)
 
foreign import javascript unsafe "$1[\"error\"]($2)" js_error ::
        ReadableStreamDefaultController -> Optional JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController.error Mozilla ReadableStreamDefaultController.error documentation> 
error ::
      (MonadIO m, ToJSVal error) =>
        ReadableStreamDefaultController -> Maybe error -> m ()
error self error
  = liftIO
      (mapM toJSVal error >>=
         \ error' -> js_error self (maybeToOptional error'))
 
foreign import javascript unsafe "$1[\"desiredSize\"]"
        js_getDesiredSize :: ReadableStreamDefaultController -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultController.desiredSize Mozilla ReadableStreamDefaultController.desiredSize documentation> 
getDesiredSize ::
               (MonadIO m) => ReadableStreamDefaultController -> m Double
getDesiredSize self = liftIO (js_getDesiredSize self)