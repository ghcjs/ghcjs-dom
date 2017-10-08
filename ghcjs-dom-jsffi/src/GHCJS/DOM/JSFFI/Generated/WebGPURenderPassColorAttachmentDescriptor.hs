{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPURenderPassColorAttachmentDescriptor
       (js_setClearColor, setClearColor, js_getClearColor, getClearColor,
        WebGPURenderPassColorAttachmentDescriptor(..),
        gTypeWebGPURenderPassColorAttachmentDescriptor)
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
 
foreign import javascript unsafe "$1[\"clearColor\"] = $2;"
        js_setClearColor ::
        WebGPURenderPassColorAttachmentDescriptor -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassColorAttachmentDescriptor.clearColor Mozilla WebGPURenderPassColorAttachmentDescriptor.clearColor documentation> 
setClearColor ::
              (MonadIO m) =>
                WebGPURenderPassColorAttachmentDescriptor -> [Float] -> m ()
setClearColor self val
  = liftIO (toJSVal val >>= \ val' -> js_setClearColor self val')
 
foreign import javascript unsafe "$1[\"clearColor\"]"
        js_getClearColor ::
        WebGPURenderPassColorAttachmentDescriptor -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassColorAttachmentDescriptor.clearColor Mozilla WebGPURenderPassColorAttachmentDescriptor.clearColor documentation> 
getClearColor ::
              (MonadIO m) =>
                WebGPURenderPassColorAttachmentDescriptor -> m [Float]
getClearColor self
  = liftIO ((js_getClearColor self) >>= fromJSValUnchecked)