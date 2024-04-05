{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPUCommandQueue
       (js_createCommandBuffer, createCommandBuffer, createCommandBuffer_,
        createCommandBufferUnsafe, createCommandBufferUnchecked,
        js_setLabel, setLabel, js_getLabel, getLabel,
        WebGPUCommandQueue(..), gTypeWebGPUCommandQueue)
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
 
foreign import javascript unsafe "$1[\"createCommandBuffer\"]()"
        js_createCommandBuffer ::
        WebGPUCommandQueue -> IO (Nullable WebGPUCommandBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandQueue.createCommandBuffer Mozilla WebGPUCommandQueue.createCommandBuffer documentation> 
createCommandBuffer ::
                    (MonadIO m) => WebGPUCommandQueue -> m (Maybe WebGPUCommandBuffer)
createCommandBuffer self
  = liftIO (nullableToMaybe <$> (js_createCommandBuffer self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandQueue.createCommandBuffer Mozilla WebGPUCommandQueue.createCommandBuffer documentation> 
createCommandBuffer_ :: (MonadIO m) => WebGPUCommandQueue -> m ()
createCommandBuffer_ self
  = liftIO (void (js_createCommandBuffer self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandQueue.createCommandBuffer Mozilla WebGPUCommandQueue.createCommandBuffer documentation> 
createCommandBufferUnsafe ::
                          (MonadIO m, HasCallStack) =>
                            WebGPUCommandQueue -> m WebGPUCommandBuffer
createCommandBufferUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createCommandBuffer self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandQueue.createCommandBuffer Mozilla WebGPUCommandQueue.createCommandBuffer documentation> 
createCommandBufferUnchecked ::
                             (MonadIO m) => WebGPUCommandQueue -> m WebGPUCommandBuffer
createCommandBufferUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_createCommandBuffer self))
 
foreign import javascript unsafe "$1[\"label\"] = $2;" js_setLabel
        :: WebGPUCommandQueue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandQueue.label Mozilla WebGPUCommandQueue.label documentation> 
setLabel ::
         (MonadIO m, ToJSString val) => WebGPUCommandQueue -> val -> m ()
setLabel self val = liftIO (js_setLabel self (toJSString val))
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        WebGPUCommandQueue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandQueue.label Mozilla WebGPUCommandQueue.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => WebGPUCommandQueue -> m result
getLabel self = liftIO (fromJSString <$> (js_getLabel self))