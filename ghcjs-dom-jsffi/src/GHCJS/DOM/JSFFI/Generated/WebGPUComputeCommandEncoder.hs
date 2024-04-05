{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPUComputeCommandEncoder
       (js_setComputePipelineState, setComputePipelineState, js_setBuffer,
        setBuffer, js_dispatch, dispatch, js_endEncoding, endEncoding,
        WebGPUComputeCommandEncoder(..), gTypeWebGPUComputeCommandEncoder)
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
        "$1[\"setComputePipelineState\"]($2)" js_setComputePipelineState ::
        WebGPUComputeCommandEncoder -> WebGPUComputePipelineState -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUComputeCommandEncoder.setComputePipelineState Mozilla WebGPUComputeCommandEncoder.setComputePipelineState documentation> 
setComputePipelineState ::
                        (MonadIO m) =>
                          WebGPUComputeCommandEncoder -> WebGPUComputePipelineState -> m ()
setComputePipelineState self pipelineState
  = liftIO (js_setComputePipelineState self pipelineState)
 
foreign import javascript unsafe "$1[\"setBuffer\"]($2, $3, $4)"
        js_setBuffer ::
        WebGPUComputeCommandEncoder ->
          WebGPUBuffer -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUComputeCommandEncoder.setBuffer Mozilla WebGPUComputeCommandEncoder.setBuffer documentation> 
setBuffer ::
          (MonadIO m) =>
            WebGPUComputeCommandEncoder -> WebGPUBuffer -> Word -> Word -> m ()
setBuffer self buffer offset index
  = liftIO (js_setBuffer self buffer offset index)
 
foreign import javascript unsafe "$1[\"dispatch\"]($2, $3)"
        js_dispatch ::
        WebGPUComputeCommandEncoder -> WebGPUSize -> WebGPUSize -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUComputeCommandEncoder.dispatch Mozilla WebGPUComputeCommandEncoder.dispatch documentation> 
dispatch ::
         (MonadIO m) =>
           WebGPUComputeCommandEncoder -> WebGPUSize -> WebGPUSize -> m ()
dispatch self threadgroupsPerGrid threadsPerThreadgroup
  = liftIO
      (js_dispatch self threadgroupsPerGrid threadsPerThreadgroup)
 
foreign import javascript unsafe "$1[\"endEncoding\"]()"
        js_endEncoding :: WebGPUComputeCommandEncoder -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUComputeCommandEncoder.endEncoding Mozilla WebGPUComputeCommandEncoder.endEncoding documentation> 
endEncoding :: (MonadIO m) => WebGPUComputeCommandEncoder -> m ()
endEncoding self = liftIO (js_endEncoding self)