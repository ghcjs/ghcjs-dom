{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPURenderingContext
       (js_createLibrary, createLibrary, createLibrary_,
        js_createRenderPipelineState, createRenderPipelineState,
        createRenderPipelineState_, createRenderPipelineStateUnsafe,
        createRenderPipelineStateUnchecked, js_createDepthStencilState,
        createDepthStencilState, createDepthStencilState_,
        createDepthStencilStateUnsafe, createDepthStencilStateUnchecked,
        js_createComputePipelineState, createComputePipelineState,
        createComputePipelineState_, createComputePipelineStateUnsafe,
        createComputePipelineStateUnchecked, js_createCommandQueue,
        createCommandQueue, createCommandQueue_, createCommandQueueUnsafe,
        createCommandQueueUnchecked, js_nextDrawable, nextDrawable,
        nextDrawable_, nextDrawableUnsafe, nextDrawableUnchecked,
        js_createBuffer, createBuffer, createBuffer_, createBufferUnsafe,
        createBufferUnchecked, js_createTexture, createTexture,
        createTexture_, createTextureUnsafe, createTextureUnchecked,
        pattern PixelFormatBGRA8Unorm, pattern PixelFormatDepth32Float,
        pattern PixelFormatStencil8, pattern PixelFormatInvalid,
        pattern LoadActionDontCare, pattern LoadActionLoad,
        pattern LoadActionClear, pattern StoreActionDontCare,
        pattern StoreActionStore, pattern StoreActionMultisampleResolve,
        pattern PrimitiveTypePoint, pattern PrimitiveTypeLine,
        pattern PrimitiveTypeLineStrip, pattern PrimitiveTypeTriangle,
        pattern PrimitiveTypeTriangleStrip, pattern CompareFunctionNever,
        pattern CompareFunctionLess, pattern CompareFunctionEqual,
        pattern CompareFunctionLessEqual, pattern CompareFunctionGreater,
        pattern CompareFunctionNotEqual,
        pattern CompareFunctionGreaterEqual, pattern CompareFunctionAlways,
        pattern TextureType1D, pattern TextureType1DArray,
        pattern TextureType2D, pattern TextureType2DArray,
        pattern TextureType2DMultisample, pattern TextureTypeCube,
        pattern TextureTypeCubeArray, pattern TextureType3D,
        pattern StorageModeShared, pattern StorageModeManaged,
        pattern StorageModePrivate, pattern TextureUsageUnknown,
        pattern TextureUsageShaderRead, pattern TextureUsageShaderWrite,
        pattern TextureUsageRenderTarget,
        pattern TextureUsagePixelFormatView, WebGPURenderingContext(..),
        gTypeWebGPURenderingContext)
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
 
foreign import javascript unsafe "$1[\"createLibrary\"]($2)"
        js_createLibrary ::
        WebGPURenderingContext -> JSString -> IO WebGPULibrary

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createLibrary Mozilla WebGPURenderingContext.createLibrary documentation> 
createLibrary ::
              (MonadIO m, ToJSString sourceCode) =>
                WebGPURenderingContext -> sourceCode -> m WebGPULibrary
createLibrary self sourceCode
  = liftIO (js_createLibrary self (toJSString sourceCode))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createLibrary Mozilla WebGPURenderingContext.createLibrary documentation> 
createLibrary_ ::
               (MonadIO m, ToJSString sourceCode) =>
                 WebGPURenderingContext -> sourceCode -> m ()
createLibrary_ self sourceCode
  = liftIO (void (js_createLibrary self (toJSString sourceCode)))
 
foreign import javascript unsafe
        "$1[\"createRenderPipelineState\"]($2)"
        js_createRenderPipelineState ::
        WebGPURenderingContext ->
          WebGPURenderPipelineDescriptor ->
            IO (Nullable WebGPURenderPipelineState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createRenderPipelineState Mozilla WebGPURenderingContext.createRenderPipelineState documentation> 
createRenderPipelineState ::
                          (MonadIO m) =>
                            WebGPURenderingContext ->
                              WebGPURenderPipelineDescriptor ->
                                m (Maybe WebGPURenderPipelineState)
createRenderPipelineState self descriptor
  = liftIO
      (nullableToMaybe <$>
         (js_createRenderPipelineState self descriptor))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createRenderPipelineState Mozilla WebGPURenderingContext.createRenderPipelineState documentation> 
createRenderPipelineState_ ::
                           (MonadIO m) =>
                             WebGPURenderingContext -> WebGPURenderPipelineDescriptor -> m ()
createRenderPipelineState_ self descriptor
  = liftIO (void (js_createRenderPipelineState self descriptor))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createRenderPipelineState Mozilla WebGPURenderingContext.createRenderPipelineState documentation> 
createRenderPipelineStateUnsafe ::
                                (MonadIO m, HasCallStack) =>
                                  WebGPURenderingContext ->
                                    WebGPURenderPipelineDescriptor -> m WebGPURenderPipelineState
createRenderPipelineStateUnsafe self descriptor
  = liftIO
      ((nullableToMaybe <$>
          (js_createRenderPipelineState self descriptor))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createRenderPipelineState Mozilla WebGPURenderingContext.createRenderPipelineState documentation> 
createRenderPipelineStateUnchecked ::
                                   (MonadIO m) =>
                                     WebGPURenderingContext ->
                                       WebGPURenderPipelineDescriptor -> m WebGPURenderPipelineState
createRenderPipelineStateUnchecked self descriptor
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createRenderPipelineState self descriptor))
 
foreign import javascript unsafe
        "$1[\"createDepthStencilState\"]($2)" js_createDepthStencilState ::
        WebGPURenderingContext ->
          WebGPUDepthStencilDescriptor ->
            IO (Nullable WebGPUDepthStencilState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createDepthStencilState Mozilla WebGPURenderingContext.createDepthStencilState documentation> 
createDepthStencilState ::
                        (MonadIO m) =>
                          WebGPURenderingContext ->
                            WebGPUDepthStencilDescriptor -> m (Maybe WebGPUDepthStencilState)
createDepthStencilState self descriptor
  = liftIO
      (nullableToMaybe <$> (js_createDepthStencilState self descriptor))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createDepthStencilState Mozilla WebGPURenderingContext.createDepthStencilState documentation> 
createDepthStencilState_ ::
                         (MonadIO m) =>
                           WebGPURenderingContext -> WebGPUDepthStencilDescriptor -> m ()
createDepthStencilState_ self descriptor
  = liftIO (void (js_createDepthStencilState self descriptor))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createDepthStencilState Mozilla WebGPURenderingContext.createDepthStencilState documentation> 
createDepthStencilStateUnsafe ::
                              (MonadIO m, HasCallStack) =>
                                WebGPURenderingContext ->
                                  WebGPUDepthStencilDescriptor -> m WebGPUDepthStencilState
createDepthStencilStateUnsafe self descriptor
  = liftIO
      ((nullableToMaybe <$> (js_createDepthStencilState self descriptor))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createDepthStencilState Mozilla WebGPURenderingContext.createDepthStencilState documentation> 
createDepthStencilStateUnchecked ::
                                 (MonadIO m) =>
                                   WebGPURenderingContext ->
                                     WebGPUDepthStencilDescriptor -> m WebGPUDepthStencilState
createDepthStencilStateUnchecked self descriptor
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createDepthStencilState self descriptor))
 
foreign import javascript unsafe
        "$1[\"createComputePipelineState\"]($2)"
        js_createComputePipelineState ::
        WebGPURenderingContext ->
          WebGPUFunction -> IO (Nullable WebGPUComputePipelineState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createComputePipelineState Mozilla WebGPURenderingContext.createComputePipelineState documentation> 
createComputePipelineState ::
                           (MonadIO m) =>
                             WebGPURenderingContext ->
                               WebGPUFunction -> m (Maybe WebGPUComputePipelineState)
createComputePipelineState self function
  = liftIO
      (nullableToMaybe <$> (js_createComputePipelineState self function))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createComputePipelineState Mozilla WebGPURenderingContext.createComputePipelineState documentation> 
createComputePipelineState_ ::
                            (MonadIO m) => WebGPURenderingContext -> WebGPUFunction -> m ()
createComputePipelineState_ self function
  = liftIO (void (js_createComputePipelineState self function))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createComputePipelineState Mozilla WebGPURenderingContext.createComputePipelineState documentation> 
createComputePipelineStateUnsafe ::
                                 (MonadIO m, HasCallStack) =>
                                   WebGPURenderingContext ->
                                     WebGPUFunction -> m WebGPUComputePipelineState
createComputePipelineStateUnsafe self function
  = liftIO
      ((nullableToMaybe <$>
          (js_createComputePipelineState self function))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createComputePipelineState Mozilla WebGPURenderingContext.createComputePipelineState documentation> 
createComputePipelineStateUnchecked ::
                                    (MonadIO m) =>
                                      WebGPURenderingContext ->
                                        WebGPUFunction -> m WebGPUComputePipelineState
createComputePipelineStateUnchecked self function
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createComputePipelineState self function))
 
foreign import javascript unsafe "$1[\"createCommandQueue\"]()"
        js_createCommandQueue ::
        WebGPURenderingContext -> IO (Nullable WebGPUCommandQueue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createCommandQueue Mozilla WebGPURenderingContext.createCommandQueue documentation> 
createCommandQueue ::
                   (MonadIO m) =>
                     WebGPURenderingContext -> m (Maybe WebGPUCommandQueue)
createCommandQueue self
  = liftIO (nullableToMaybe <$> (js_createCommandQueue self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createCommandQueue Mozilla WebGPURenderingContext.createCommandQueue documentation> 
createCommandQueue_ ::
                    (MonadIO m) => WebGPURenderingContext -> m ()
createCommandQueue_ self
  = liftIO (void (js_createCommandQueue self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createCommandQueue Mozilla WebGPURenderingContext.createCommandQueue documentation> 
createCommandQueueUnsafe ::
                         (MonadIO m, HasCallStack) =>
                           WebGPURenderingContext -> m WebGPUCommandQueue
createCommandQueueUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createCommandQueue self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createCommandQueue Mozilla WebGPURenderingContext.createCommandQueue documentation> 
createCommandQueueUnchecked ::
                            (MonadIO m) => WebGPURenderingContext -> m WebGPUCommandQueue
createCommandQueueUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_createCommandQueue self))
 
foreign import javascript unsafe "$1[\"nextDrawable\"]()"
        js_nextDrawable ::
        WebGPURenderingContext -> IO (Nullable WebGPUDrawable)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.nextDrawable Mozilla WebGPURenderingContext.nextDrawable documentation> 
nextDrawable ::
             (MonadIO m) => WebGPURenderingContext -> m (Maybe WebGPUDrawable)
nextDrawable self
  = liftIO (nullableToMaybe <$> (js_nextDrawable self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.nextDrawable Mozilla WebGPURenderingContext.nextDrawable documentation> 
nextDrawable_ :: (MonadIO m) => WebGPURenderingContext -> m ()
nextDrawable_ self = liftIO (void (js_nextDrawable self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.nextDrawable Mozilla WebGPURenderingContext.nextDrawable documentation> 
nextDrawableUnsafe ::
                   (MonadIO m, HasCallStack) =>
                     WebGPURenderingContext -> m WebGPUDrawable
nextDrawableUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_nextDrawable self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.nextDrawable Mozilla WebGPURenderingContext.nextDrawable documentation> 
nextDrawableUnchecked ::
                      (MonadIO m) => WebGPURenderingContext -> m WebGPUDrawable
nextDrawableUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_nextDrawable self))
 
foreign import javascript unsafe "$1[\"createBuffer\"]($2)"
        js_createBuffer ::
        WebGPURenderingContext ->
          ArrayBufferView -> IO (Nullable WebGPUBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createBuffer Mozilla WebGPURenderingContext.createBuffer documentation> 
createBuffer ::
             (MonadIO m, IsArrayBufferView data') =>
               WebGPURenderingContext -> data' -> m (Maybe WebGPUBuffer)
createBuffer self data'
  = liftIO
      (nullableToMaybe <$>
         (js_createBuffer self (toArrayBufferView data')))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createBuffer Mozilla WebGPURenderingContext.createBuffer documentation> 
createBuffer_ ::
              (MonadIO m, IsArrayBufferView data') =>
                WebGPURenderingContext -> data' -> m ()
createBuffer_ self data'
  = liftIO (void (js_createBuffer self (toArrayBufferView data')))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createBuffer Mozilla WebGPURenderingContext.createBuffer documentation> 
createBufferUnsafe ::
                   (MonadIO m, IsArrayBufferView data', HasCallStack) =>
                     WebGPURenderingContext -> data' -> m WebGPUBuffer
createBufferUnsafe self data'
  = liftIO
      ((nullableToMaybe <$>
          (js_createBuffer self (toArrayBufferView data')))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createBuffer Mozilla WebGPURenderingContext.createBuffer documentation> 
createBufferUnchecked ::
                      (MonadIO m, IsArrayBufferView data') =>
                        WebGPURenderingContext -> data' -> m WebGPUBuffer
createBufferUnchecked self data'
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createBuffer self (toArrayBufferView data')))
 
foreign import javascript unsafe "$1[\"createTexture\"]($2)"
        js_createTexture ::
        WebGPURenderingContext ->
          WebGPUTextureDescriptor -> IO (Nullable WebGPUTexture)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createTexture Mozilla WebGPURenderingContext.createTexture documentation> 
createTexture ::
              (MonadIO m) =>
                WebGPURenderingContext ->
                  WebGPUTextureDescriptor -> m (Maybe WebGPUTexture)
createTexture self descriptor
  = liftIO (nullableToMaybe <$> (js_createTexture self descriptor))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createTexture Mozilla WebGPURenderingContext.createTexture documentation> 
createTexture_ ::
               (MonadIO m) =>
                 WebGPURenderingContext -> WebGPUTextureDescriptor -> m ()
createTexture_ self descriptor
  = liftIO (void (js_createTexture self descriptor))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createTexture Mozilla WebGPURenderingContext.createTexture documentation> 
createTextureUnsafe ::
                    (MonadIO m, HasCallStack) =>
                      WebGPURenderingContext ->
                        WebGPUTextureDescriptor -> m WebGPUTexture
createTextureUnsafe self descriptor
  = liftIO
      ((nullableToMaybe <$> (js_createTexture self descriptor)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderingContext.createTexture Mozilla WebGPURenderingContext.createTexture documentation> 
createTextureUnchecked ::
                       (MonadIO m) =>
                         WebGPURenderingContext ->
                           WebGPUTextureDescriptor -> m WebGPUTexture
createTextureUnchecked self descriptor
  = liftIO
      (fromJust . nullableToMaybe <$> (js_createTexture self descriptor))
pattern PixelFormatBGRA8Unorm = 80
pattern PixelFormatDepth32Float = 252
pattern PixelFormatStencil8 = 253
pattern PixelFormatInvalid = 0
pattern LoadActionDontCare = 0
pattern LoadActionLoad = 1
pattern LoadActionClear = 2
pattern StoreActionDontCare = 0
pattern StoreActionStore = 1
pattern StoreActionMultisampleResolve = 2
pattern PrimitiveTypePoint = 0
pattern PrimitiveTypeLine = 1
pattern PrimitiveTypeLineStrip = 2
pattern PrimitiveTypeTriangle = 3
pattern PrimitiveTypeTriangleStrip = 4
pattern CompareFunctionNever = 0
pattern CompareFunctionLess = 1
pattern CompareFunctionEqual = 2
pattern CompareFunctionLessEqual = 3
pattern CompareFunctionGreater = 4
pattern CompareFunctionNotEqual = 5
pattern CompareFunctionGreaterEqual = 6
pattern CompareFunctionAlways = 7
pattern TextureType1D = 0
pattern TextureType1DArray = 1
pattern TextureType2D = 2
pattern TextureType2DArray = 3
pattern TextureType2DMultisample = 4
pattern TextureTypeCube = 5
pattern TextureTypeCubeArray = 6
pattern TextureType3D = 7
pattern StorageModeShared = 0
pattern StorageModeManaged = 1
pattern StorageModePrivate = 2
pattern TextureUsageUnknown = 0
pattern TextureUsageShaderRead = 1
pattern TextureUsageShaderWrite = 2
pattern TextureUsageRenderTarget = 4
pattern TextureUsagePixelFormatView = 16