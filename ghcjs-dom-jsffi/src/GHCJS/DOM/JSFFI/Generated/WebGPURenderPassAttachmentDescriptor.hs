{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPURenderPassAttachmentDescriptor
       (js_setTexture, setTexture, js_getTexture, getTexture,
        getTextureUnsafe, getTextureUnchecked, js_setLoadAction,
        setLoadAction, js_getLoadAction, getLoadAction, js_setStoreAction,
        setStoreAction, js_getStoreAction, getStoreAction,
        WebGPURenderPassAttachmentDescriptor(..),
        gTypeWebGPURenderPassAttachmentDescriptor,
        IsWebGPURenderPassAttachmentDescriptor,
        toWebGPURenderPassAttachmentDescriptor)
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
 
foreign import javascript unsafe "$1[\"texture\"] = $2;"
        js_setTexture ::
        WebGPURenderPassAttachmentDescriptor ->
          Optional WebGPUTexture -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.texture Mozilla WebGPURenderPassAttachmentDescriptor.texture documentation> 
setTexture ::
           (MonadIO m, IsWebGPURenderPassAttachmentDescriptor self) =>
             self -> Maybe WebGPUTexture -> m ()
setTexture self val
  = liftIO
      (js_setTexture (toWebGPURenderPassAttachmentDescriptor self)
         (maybeToOptional val))
 
foreign import javascript unsafe "$1[\"texture\"]" js_getTexture ::
        WebGPURenderPassAttachmentDescriptor -> IO (Nullable WebGPUTexture)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.texture Mozilla WebGPURenderPassAttachmentDescriptor.texture documentation> 
getTexture ::
           (MonadIO m, IsWebGPURenderPassAttachmentDescriptor self) =>
             self -> m (Maybe WebGPUTexture)
getTexture self
  = liftIO
      (nullableToMaybe <$>
         (js_getTexture (toWebGPURenderPassAttachmentDescriptor self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.texture Mozilla WebGPURenderPassAttachmentDescriptor.texture documentation> 
getTextureUnsafe ::
                 (MonadIO m, IsWebGPURenderPassAttachmentDescriptor self,
                  HasCallStack) =>
                   self -> m WebGPUTexture
getTextureUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getTexture (toWebGPURenderPassAttachmentDescriptor self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.texture Mozilla WebGPURenderPassAttachmentDescriptor.texture documentation> 
getTextureUnchecked ::
                    (MonadIO m, IsWebGPURenderPassAttachmentDescriptor self) =>
                      self -> m WebGPUTexture
getTextureUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getTexture (toWebGPURenderPassAttachmentDescriptor self)))
 
foreign import javascript unsafe "$1[\"loadAction\"] = $2;"
        js_setLoadAction ::
        WebGPURenderPassAttachmentDescriptor -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.loadAction Mozilla WebGPURenderPassAttachmentDescriptor.loadAction documentation> 
setLoadAction ::
              (MonadIO m, IsWebGPURenderPassAttachmentDescriptor self) =>
                self -> Word -> m ()
setLoadAction self val
  = liftIO
      (js_setLoadAction (toWebGPURenderPassAttachmentDescriptor self)
         val)
 
foreign import javascript unsafe "$1[\"loadAction\"]"
        js_getLoadAction :: WebGPURenderPassAttachmentDescriptor -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.loadAction Mozilla WebGPURenderPassAttachmentDescriptor.loadAction documentation> 
getLoadAction ::
              (MonadIO m, IsWebGPURenderPassAttachmentDescriptor self) =>
                self -> m Word
getLoadAction self
  = liftIO
      (js_getLoadAction (toWebGPURenderPassAttachmentDescriptor self))
 
foreign import javascript unsafe "$1[\"storeAction\"] = $2;"
        js_setStoreAction ::
        WebGPURenderPassAttachmentDescriptor -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.storeAction Mozilla WebGPURenderPassAttachmentDescriptor.storeAction documentation> 
setStoreAction ::
               (MonadIO m, IsWebGPURenderPassAttachmentDescriptor self) =>
                 self -> Word -> m ()
setStoreAction self val
  = liftIO
      (js_setStoreAction (toWebGPURenderPassAttachmentDescriptor self)
         val)
 
foreign import javascript unsafe "$1[\"storeAction\"]"
        js_getStoreAction ::
        WebGPURenderPassAttachmentDescriptor -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPassAttachmentDescriptor.storeAction Mozilla WebGPURenderPassAttachmentDescriptor.storeAction documentation> 
getStoreAction ::
               (MonadIO m, IsWebGPURenderPassAttachmentDescriptor self) =>
                 self -> m Word
getStoreAction self
  = liftIO
      (js_getStoreAction (toWebGPURenderPassAttachmentDescriptor self))