{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPURenderPassDepthAttachmentDescriptor
       (js_setClearDepth, setClearDepth, js_getClearDepth, getClearDepth,
        WebGPURenderPassDepthAttachmentDescriptor(..),
        gTypeWebGPURenderPassDepthAttachmentDescriptor)
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
 
foreign import javascript unsafe "$1[\"clearDepth\"] = $2;"
        js_setClearDepth ::
        WebGPURenderPassDepthAttachmentDescriptor -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassDepthAttachmentDescriptor.clearDepth Mozilla WebGPURenderPassDepthAttachmentDescriptor.clearDepth documentation> 
setClearDepth ::
              (MonadIO m) =>
                WebGPURenderPassDepthAttachmentDescriptor -> Double -> m ()
setClearDepth self val = liftIO (js_setClearDepth self val)
 
foreign import javascript unsafe "$1[\"clearDepth\"]"
        js_getClearDepth ::
        WebGPURenderPassDepthAttachmentDescriptor -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassDepthAttachmentDescriptor.clearDepth Mozilla WebGPURenderPassDepthAttachmentDescriptor.clearDepth documentation> 
getClearDepth ::
              (MonadIO m) =>
                WebGPURenderPassDepthAttachmentDescriptor -> m Double
getClearDepth self = liftIO (js_getClearDepth self)