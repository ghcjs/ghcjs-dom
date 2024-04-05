{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPUTextureDescriptor
       (js_newWebGPUTextureDescriptor, newWebGPUTextureDescriptor,
        js_setTextureType, setTextureType, js_getTextureType,
        getTextureType, js_setWidth, setWidth, js_getWidth, getWidth,
        js_setHeight, setHeight, js_getHeight, getHeight,
        js_setSampleCount, setSampleCount, js_getSampleCount,
        getSampleCount, js_setStorageMode, setStorageMode,
        js_getStorageMode, getStorageMode, js_setUsage, setUsage,
        js_getUsage, getUsage, WebGPUTextureDescriptor(..),
        gTypeWebGPUTextureDescriptor)
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
        "new window[\"WebGPUTextureDescriptor\"]($1,\n$2, $3, $4)"
        js_newWebGPUTextureDescriptor ::
        Word -> Word -> Word -> Bool -> IO WebGPUTextureDescriptor

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor Mozilla WebGPUTextureDescriptor documentation> 
newWebGPUTextureDescriptor ::
                           (MonadIO m) =>
                             Word -> Word -> Word -> Bool -> m WebGPUTextureDescriptor
newWebGPUTextureDescriptor pixelFormat width height mipmapped
  = liftIO
      (js_newWebGPUTextureDescriptor pixelFormat width height mipmapped)
 
foreign import javascript unsafe "$1[\"textureType\"] = $2;"
        js_setTextureType :: WebGPUTextureDescriptor -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.textureType Mozilla WebGPUTextureDescriptor.textureType documentation> 
setTextureType ::
               (MonadIO m) => WebGPUTextureDescriptor -> Word -> m ()
setTextureType self val = liftIO (js_setTextureType self val)
 
foreign import javascript unsafe "$1[\"textureType\"]"
        js_getTextureType :: WebGPUTextureDescriptor -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.textureType Mozilla WebGPUTextureDescriptor.textureType documentation> 
getTextureType :: (MonadIO m) => WebGPUTextureDescriptor -> m Word
getTextureType self = liftIO (js_getTextureType self)
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: WebGPUTextureDescriptor -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.width Mozilla WebGPUTextureDescriptor.width documentation> 
setWidth :: (MonadIO m) => WebGPUTextureDescriptor -> Word -> m ()
setWidth self val = liftIO (js_setWidth self val)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        WebGPUTextureDescriptor -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.width Mozilla WebGPUTextureDescriptor.width documentation> 
getWidth :: (MonadIO m) => WebGPUTextureDescriptor -> m Word
getWidth self = liftIO (js_getWidth self)
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: WebGPUTextureDescriptor -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.height Mozilla WebGPUTextureDescriptor.height documentation> 
setHeight :: (MonadIO m) => WebGPUTextureDescriptor -> Word -> m ()
setHeight self val = liftIO (js_setHeight self val)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        WebGPUTextureDescriptor -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.height Mozilla WebGPUTextureDescriptor.height documentation> 
getHeight :: (MonadIO m) => WebGPUTextureDescriptor -> m Word
getHeight self = liftIO (js_getHeight self)
 
foreign import javascript unsafe "$1[\"sampleCount\"] = $2;"
        js_setSampleCount :: WebGPUTextureDescriptor -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.sampleCount Mozilla WebGPUTextureDescriptor.sampleCount documentation> 
setSampleCount ::
               (MonadIO m) => WebGPUTextureDescriptor -> Word -> m ()
setSampleCount self val = liftIO (js_setSampleCount self val)
 
foreign import javascript unsafe "$1[\"sampleCount\"]"
        js_getSampleCount :: WebGPUTextureDescriptor -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.sampleCount Mozilla WebGPUTextureDescriptor.sampleCount documentation> 
getSampleCount :: (MonadIO m) => WebGPUTextureDescriptor -> m Word
getSampleCount self = liftIO (js_getSampleCount self)
 
foreign import javascript unsafe "$1[\"storageMode\"] = $2;"
        js_setStorageMode :: WebGPUTextureDescriptor -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.storageMode Mozilla WebGPUTextureDescriptor.storageMode documentation> 
setStorageMode ::
               (MonadIO m) => WebGPUTextureDescriptor -> Word -> m ()
setStorageMode self val = liftIO (js_setStorageMode self val)
 
foreign import javascript unsafe "$1[\"storageMode\"]"
        js_getStorageMode :: WebGPUTextureDescriptor -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.storageMode Mozilla WebGPUTextureDescriptor.storageMode documentation> 
getStorageMode :: (MonadIO m) => WebGPUTextureDescriptor -> m Word
getStorageMode self = liftIO (js_getStorageMode self)
 
foreign import javascript unsafe "$1[\"usage\"] = $2;" js_setUsage
        :: WebGPUTextureDescriptor -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.usage Mozilla WebGPUTextureDescriptor.usage documentation> 
setUsage :: (MonadIO m) => WebGPUTextureDescriptor -> Word -> m ()
setUsage self val = liftIO (js_setUsage self val)
 
foreign import javascript unsafe "$1[\"usage\"]" js_getUsage ::
        WebGPUTextureDescriptor -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTextureDescriptor.usage Mozilla WebGPUTextureDescriptor.usage documentation> 
getUsage :: (MonadIO m) => WebGPUTextureDescriptor -> m Word
getUsage self = liftIO (js_getUsage self)