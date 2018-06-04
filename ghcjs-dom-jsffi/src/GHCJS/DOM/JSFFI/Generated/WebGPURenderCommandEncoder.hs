{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPURenderCommandEncoder
       (js_setRenderPipelineState, setRenderPipelineState,
        js_setDepthStencilState, setDepthStencilState, js_setVertexBuffer,
        setVertexBuffer, js_setFragmentBuffer, setFragmentBuffer,
        js_drawPrimitives, drawPrimitives, js_endEncoding, endEncoding,
        WebGPURenderCommandEncoder(..), gTypeWebGPURenderCommandEncoder)
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
        "$1[\"setRenderPipelineState\"]($2)" js_setRenderPipelineState ::
        WebGPURenderCommandEncoder -> WebGPURenderPipelineState -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderCommandEncoder.setRenderPipelineState Mozilla WebGPURenderCommandEncoder.setRenderPipelineState documentation> 
setRenderPipelineState ::
                       (MonadIO m) =>
                         WebGPURenderCommandEncoder -> WebGPURenderPipelineState -> m ()
setRenderPipelineState self pipelineState
  = liftIO (js_setRenderPipelineState self pipelineState)
 
foreign import javascript unsafe "$1[\"setDepthStencilState\"]($2)"
        js_setDepthStencilState ::
        WebGPURenderCommandEncoder -> WebGPUDepthStencilState -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderCommandEncoder.setDepthStencilState Mozilla WebGPURenderCommandEncoder.setDepthStencilState documentation> 
setDepthStencilState ::
                     (MonadIO m) =>
                       WebGPURenderCommandEncoder -> WebGPUDepthStencilState -> m ()
setDepthStencilState self depthStencilState
  = liftIO (js_setDepthStencilState self depthStencilState)
 
foreign import javascript unsafe
        "$1[\"setVertexBuffer\"]($2, $3,\n$4)" js_setVertexBuffer ::
        WebGPURenderCommandEncoder -> WebGPUBuffer -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderCommandEncoder.setVertexBuffer Mozilla WebGPURenderCommandEncoder.setVertexBuffer documentation> 
setVertexBuffer ::
                (MonadIO m) =>
                  WebGPURenderCommandEncoder -> WebGPUBuffer -> Word -> Word -> m ()
setVertexBuffer self buffer offset index
  = liftIO (js_setVertexBuffer self buffer offset index)
 
foreign import javascript unsafe
        "$1[\"setFragmentBuffer\"]($2, $3,\n$4)" js_setFragmentBuffer ::
        WebGPURenderCommandEncoder -> WebGPUBuffer -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderCommandEncoder.setFragmentBuffer Mozilla WebGPURenderCommandEncoder.setFragmentBuffer documentation> 
setFragmentBuffer ::
                  (MonadIO m) =>
                    WebGPURenderCommandEncoder -> WebGPUBuffer -> Word -> Word -> m ()
setFragmentBuffer self buffer offset index
  = liftIO (js_setFragmentBuffer self buffer offset index)
 
foreign import javascript unsafe
        "$1[\"drawPrimitives\"]($2, $3, $4)" js_drawPrimitives ::
        WebGPURenderCommandEncoder -> Word -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderCommandEncoder.drawPrimitives Mozilla WebGPURenderCommandEncoder.drawPrimitives documentation> 
drawPrimitives ::
               (MonadIO m) =>
                 WebGPURenderCommandEncoder -> Word -> Word -> Word -> m ()
drawPrimitives self type' start count
  = liftIO (js_drawPrimitives self type' start count)
 
foreign import javascript unsafe "$1[\"endEncoding\"]()"
        js_endEncoding :: WebGPURenderCommandEncoder -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderCommandEncoder.endEncoding Mozilla WebGPURenderCommandEncoder.endEncoding documentation> 
endEncoding :: (MonadIO m) => WebGPURenderCommandEncoder -> m ()
endEncoding self = liftIO (js_endEncoding self)