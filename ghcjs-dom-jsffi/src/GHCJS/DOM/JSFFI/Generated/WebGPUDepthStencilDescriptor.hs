{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPUDepthStencilDescriptor
       (js_newWebGPUDepthStencilDescriptor,
        newWebGPUDepthStencilDescriptor, js_setDepthCompareFunction,
        setDepthCompareFunction, js_getDepthCompareFunction,
        getDepthCompareFunction, js_setDepthWriteEnabled,
        setDepthWriteEnabled, js_getDepthWriteEnabled,
        getDepthWriteEnabled, WebGPUDepthStencilDescriptor(..),
        gTypeWebGPUDepthStencilDescriptor)
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
        "new window[\"WebGPUDepthStencilDescriptor\"]()"
        js_newWebGPUDepthStencilDescriptor ::
        IO WebGPUDepthStencilDescriptor

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUDepthStencilDescriptor Mozilla WebGPUDepthStencilDescriptor documentation> 
newWebGPUDepthStencilDescriptor ::
                                (MonadIO m) => m WebGPUDepthStencilDescriptor
newWebGPUDepthStencilDescriptor
  = liftIO (js_newWebGPUDepthStencilDescriptor)
 
foreign import javascript unsafe
        "$1[\"depthCompareFunction\"] = $2;" js_setDepthCompareFunction ::
        WebGPUDepthStencilDescriptor -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUDepthStencilDescriptor.depthCompareFunction Mozilla WebGPUDepthStencilDescriptor.depthCompareFunction documentation> 
setDepthCompareFunction ::
                        (MonadIO m) =>
                          WebGPUDepthStencilDescriptor -> WebGPUCompareFunction -> m ()
setDepthCompareFunction self val
  = liftIO (js_setDepthCompareFunction self (pToJSVal val))
 
foreign import javascript unsafe "$1[\"depthCompareFunction\"]"
        js_getDepthCompareFunction ::
        WebGPUDepthStencilDescriptor -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUDepthStencilDescriptor.depthCompareFunction Mozilla WebGPUDepthStencilDescriptor.depthCompareFunction documentation> 
getDepthCompareFunction ::
                        (MonadIO m) =>
                          WebGPUDepthStencilDescriptor -> m WebGPUCompareFunction
getDepthCompareFunction self
  = liftIO ((js_getDepthCompareFunction self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"depthWriteEnabled\"] = $2;"
        js_setDepthWriteEnabled ::
        WebGPUDepthStencilDescriptor -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUDepthStencilDescriptor.depthWriteEnabled Mozilla WebGPUDepthStencilDescriptor.depthWriteEnabled documentation> 
setDepthWriteEnabled ::
                     (MonadIO m) => WebGPUDepthStencilDescriptor -> Bool -> m ()
setDepthWriteEnabled self val
  = liftIO (js_setDepthWriteEnabled self val)
 
foreign import javascript unsafe
        "($1[\"depthWriteEnabled\"] ? 1 : 0)" js_getDepthWriteEnabled ::
        WebGPUDepthStencilDescriptor -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUDepthStencilDescriptor.depthWriteEnabled Mozilla WebGPUDepthStencilDescriptor.depthWriteEnabled documentation> 
getDepthWriteEnabled ::
                     (MonadIO m) => WebGPUDepthStencilDescriptor -> m Bool
getDepthWriteEnabled self = liftIO (js_getDepthWriteEnabled self)