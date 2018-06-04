{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPUCommandBuffer
       (js_createRenderCommandEncoderWithDescriptor,
        createRenderCommandEncoderWithDescriptor,
        createRenderCommandEncoderWithDescriptor_,
        js_createComputeCommandEncoder, createComputeCommandEncoder,
        createComputeCommandEncoder_, js_commit, commit,
        js_presentDrawable, presentDrawable, js_getCompleted, getCompleted,
        WebGPUCommandBuffer(..), gTypeWebGPUCommandBuffer)
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
        "$1[\"createRenderCommandEncoderWithDescriptor\"]($2)"
        js_createRenderCommandEncoderWithDescriptor ::
        WebGPUCommandBuffer ->
          WebGPURenderPassDescriptor -> IO WebGPURenderCommandEncoder

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandBuffer.createRenderCommandEncoderWithDescriptor Mozilla WebGPUCommandBuffer.createRenderCommandEncoderWithDescriptor documentation> 
createRenderCommandEncoderWithDescriptor ::
                                         (MonadIO m) =>
                                           WebGPUCommandBuffer ->
                                             WebGPURenderPassDescriptor ->
                                               m WebGPURenderCommandEncoder
createRenderCommandEncoderWithDescriptor self descriptor
  = liftIO
      (js_createRenderCommandEncoderWithDescriptor self descriptor)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandBuffer.createRenderCommandEncoderWithDescriptor Mozilla WebGPUCommandBuffer.createRenderCommandEncoderWithDescriptor documentation> 
createRenderCommandEncoderWithDescriptor_ ::
                                          (MonadIO m) =>
                                            WebGPUCommandBuffer ->
                                              WebGPURenderPassDescriptor -> m ()
createRenderCommandEncoderWithDescriptor_ self descriptor
  = liftIO
      (void
         (js_createRenderCommandEncoderWithDescriptor self descriptor))
 
foreign import javascript unsafe
        "$1[\"createComputeCommandEncoder\"]()"
        js_createComputeCommandEncoder ::
        WebGPUCommandBuffer -> IO WebGPUComputeCommandEncoder

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandBuffer.createComputeCommandEncoder Mozilla WebGPUCommandBuffer.createComputeCommandEncoder documentation> 
createComputeCommandEncoder ::
                            (MonadIO m) => WebGPUCommandBuffer -> m WebGPUComputeCommandEncoder
createComputeCommandEncoder self
  = liftIO (js_createComputeCommandEncoder self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandBuffer.createComputeCommandEncoder Mozilla WebGPUCommandBuffer.createComputeCommandEncoder documentation> 
createComputeCommandEncoder_ ::
                             (MonadIO m) => WebGPUCommandBuffer -> m ()
createComputeCommandEncoder_ self
  = liftIO (void (js_createComputeCommandEncoder self))
 
foreign import javascript unsafe "$1[\"commit\"]()" js_commit ::
        WebGPUCommandBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandBuffer.commit Mozilla WebGPUCommandBuffer.commit documentation> 
commit :: (MonadIO m) => WebGPUCommandBuffer -> m ()
commit self = liftIO (js_commit self)
 
foreign import javascript unsafe "$1[\"presentDrawable\"]($2)"
        js_presentDrawable ::
        WebGPUCommandBuffer -> WebGPUDrawable -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandBuffer.presentDrawable Mozilla WebGPUCommandBuffer.presentDrawable documentation> 
presentDrawable ::
                (MonadIO m) => WebGPUCommandBuffer -> WebGPUDrawable -> m ()
presentDrawable self drawable
  = liftIO (js_presentDrawable self drawable)
 
foreign import javascript interruptible
        "$1[\"completed\"].then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_getCompleted :: WebGPUCommandBuffer -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUCommandBuffer.completed Mozilla WebGPUCommandBuffer.completed documentation> 
getCompleted :: (MonadIO m) => WebGPUCommandBuffer -> m ()
getCompleted self
  = liftIO ((js_getCompleted self) >>= maybeThrowPromiseRejected)