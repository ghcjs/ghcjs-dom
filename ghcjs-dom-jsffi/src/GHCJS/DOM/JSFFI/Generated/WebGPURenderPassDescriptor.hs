{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPURenderPassDescriptor
       (js_newWebGPURenderPassDescriptor, newWebGPURenderPassDescriptor,
        js_getColorAttachments, getColorAttachments, js_getDepthAttachment,
        getDepthAttachment, WebGPURenderPassDescriptor(..),
        gTypeWebGPURenderPassDescriptor)
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
        "new window[\"WebGPURenderPassDescriptor\"]()"
        js_newWebGPURenderPassDescriptor :: IO WebGPURenderPassDescriptor

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassDescriptor Mozilla WebGPURenderPassDescriptor documentation> 
newWebGPURenderPassDescriptor ::
                              (MonadIO m) => m WebGPURenderPassDescriptor
newWebGPURenderPassDescriptor
  = liftIO (js_newWebGPURenderPassDescriptor)
 
foreign import javascript unsafe "$1[\"colorAttachments\"]"
        js_getColorAttachments :: WebGPURenderPassDescriptor -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassDescriptor.colorAttachments Mozilla WebGPURenderPassDescriptor.colorAttachments documentation> 
getColorAttachments ::
                    (MonadIO m) =>
                      WebGPURenderPassDescriptor ->
                        m [WebGPURenderPassColorAttachmentDescriptor]
getColorAttachments self
  = liftIO ((js_getColorAttachments self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"depthAttachment\"]"
        js_getDepthAttachment ::
        WebGPURenderPassDescriptor ->
          IO WebGPURenderPassDepthAttachmentDescriptor

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassDescriptor.depthAttachment Mozilla WebGPURenderPassDescriptor.depthAttachment documentation> 
getDepthAttachment ::
                   (MonadIO m) =>
                     WebGPURenderPassDescriptor ->
                       m WebGPURenderPassDepthAttachmentDescriptor
getDepthAttachment self = liftIO (js_getDepthAttachment self)