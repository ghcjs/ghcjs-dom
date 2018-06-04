{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPURenderPipelineDescriptor
       (js_newWebGPURenderPipelineDescriptor,
        newWebGPURenderPipelineDescriptor, js_reset, reset,
        js_setVertexFunction, setVertexFunction, js_getVertexFunction,
        getVertexFunction, getVertexFunctionUnsafe,
        getVertexFunctionUnchecked, js_setFragmentFunction,
        setFragmentFunction, js_getFragmentFunction, getFragmentFunction,
        getFragmentFunctionUnsafe, getFragmentFunctionUnchecked,
        js_getColorAttachments, getColorAttachments,
        js_setDepthAttachmentPixelFormat, setDepthAttachmentPixelFormat,
        js_getDepthAttachmentPixelFormat, getDepthAttachmentPixelFormat,
        WebGPURenderPipelineDescriptor(..),
        gTypeWebGPURenderPipelineDescriptor)
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
        "new window[\"WebGPURenderPipelineDescriptor\"]()"
        js_newWebGPURenderPipelineDescriptor ::
        IO WebGPURenderPipelineDescriptor

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor Mozilla WebGPURenderPipelineDescriptor documentation> 
newWebGPURenderPipelineDescriptor ::
                                  (MonadIO m) => m WebGPURenderPipelineDescriptor
newWebGPURenderPipelineDescriptor
  = liftIO (js_newWebGPURenderPipelineDescriptor)
 
foreign import javascript unsafe "$1[\"reset\"]()" js_reset ::
        WebGPURenderPipelineDescriptor -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.reset Mozilla WebGPURenderPipelineDescriptor.reset documentation> 
reset :: (MonadIO m) => WebGPURenderPipelineDescriptor -> m ()
reset self = liftIO (js_reset self)
 
foreign import javascript unsafe "$1[\"vertexFunction\"] = $2;"
        js_setVertexFunction ::
        WebGPURenderPipelineDescriptor -> Optional WebGPUFunction -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.vertexFunction Mozilla WebGPURenderPipelineDescriptor.vertexFunction documentation> 
setVertexFunction ::
                  (MonadIO m) =>
                    WebGPURenderPipelineDescriptor -> Maybe WebGPUFunction -> m ()
setVertexFunction self val
  = liftIO (js_setVertexFunction self (maybeToOptional val))
 
foreign import javascript unsafe "$1[\"vertexFunction\"]"
        js_getVertexFunction ::
        WebGPURenderPipelineDescriptor -> IO (Nullable WebGPUFunction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.vertexFunction Mozilla WebGPURenderPipelineDescriptor.vertexFunction documentation> 
getVertexFunction ::
                  (MonadIO m) =>
                    WebGPURenderPipelineDescriptor -> m (Maybe WebGPUFunction)
getVertexFunction self
  = liftIO (nullableToMaybe <$> (js_getVertexFunction self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.vertexFunction Mozilla WebGPURenderPipelineDescriptor.vertexFunction documentation> 
getVertexFunctionUnsafe ::
                        (MonadIO m, HasCallStack) =>
                          WebGPURenderPipelineDescriptor -> m WebGPUFunction
getVertexFunctionUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getVertexFunction self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.vertexFunction Mozilla WebGPURenderPipelineDescriptor.vertexFunction documentation> 
getVertexFunctionUnchecked ::
                           (MonadIO m) => WebGPURenderPipelineDescriptor -> m WebGPUFunction
getVertexFunctionUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getVertexFunction self))
 
foreign import javascript unsafe "$1[\"fragmentFunction\"] = $2;"
        js_setFragmentFunction ::
        WebGPURenderPipelineDescriptor -> Optional WebGPUFunction -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.fragmentFunction Mozilla WebGPURenderPipelineDescriptor.fragmentFunction documentation> 
setFragmentFunction ::
                    (MonadIO m) =>
                      WebGPURenderPipelineDescriptor -> Maybe WebGPUFunction -> m ()
setFragmentFunction self val
  = liftIO (js_setFragmentFunction self (maybeToOptional val))
 
foreign import javascript unsafe "$1[\"fragmentFunction\"]"
        js_getFragmentFunction ::
        WebGPURenderPipelineDescriptor -> IO (Nullable WebGPUFunction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.fragmentFunction Mozilla WebGPURenderPipelineDescriptor.fragmentFunction documentation> 
getFragmentFunction ::
                    (MonadIO m) =>
                      WebGPURenderPipelineDescriptor -> m (Maybe WebGPUFunction)
getFragmentFunction self
  = liftIO (nullableToMaybe <$> (js_getFragmentFunction self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.fragmentFunction Mozilla WebGPURenderPipelineDescriptor.fragmentFunction documentation> 
getFragmentFunctionUnsafe ::
                          (MonadIO m, HasCallStack) =>
                            WebGPURenderPipelineDescriptor -> m WebGPUFunction
getFragmentFunctionUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFragmentFunction self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.fragmentFunction Mozilla WebGPURenderPipelineDescriptor.fragmentFunction documentation> 
getFragmentFunctionUnchecked ::
                             (MonadIO m) => WebGPURenderPipelineDescriptor -> m WebGPUFunction
getFragmentFunctionUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getFragmentFunction self))
 
foreign import javascript unsafe "$1[\"colorAttachments\"]"
        js_getColorAttachments ::
        WebGPURenderPipelineDescriptor -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.colorAttachments Mozilla WebGPURenderPipelineDescriptor.colorAttachments documentation> 
getColorAttachments ::
                    (MonadIO m) =>
                      WebGPURenderPipelineDescriptor ->
                        m [WebGPURenderPipelineColorAttachmentDescriptor]
getColorAttachments self
  = liftIO ((js_getColorAttachments self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe
        "$1[\"depthAttachmentPixelFormat\"] = $2;"
        js_setDepthAttachmentPixelFormat ::
        WebGPURenderPipelineDescriptor -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.depthAttachmentPixelFormat Mozilla WebGPURenderPipelineDescriptor.depthAttachmentPixelFormat documentation> 
setDepthAttachmentPixelFormat ::
                              (MonadIO m) => WebGPURenderPipelineDescriptor -> Word -> m ()
setDepthAttachmentPixelFormat self val
  = liftIO (js_setDepthAttachmentPixelFormat self val)
 
foreign import javascript unsafe
        "$1[\"depthAttachmentPixelFormat\"]"
        js_getDepthAttachmentPixelFormat ::
        WebGPURenderPipelineDescriptor -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineDescriptor.depthAttachmentPixelFormat Mozilla WebGPURenderPipelineDescriptor.depthAttachmentPixelFormat documentation> 
getDepthAttachmentPixelFormat ::
                              (MonadIO m) => WebGPURenderPipelineDescriptor -> m Word
getDepthAttachmentPixelFormat self
  = liftIO (js_getDepthAttachmentPixelFormat self)