{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.VoidCallback
       (newVoidCallback, newVoidCallbackSync, newVoidCallbackAsync,
        VoidCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VoidCallback Mozilla VoidCallback documentation> 
newVoidCallback :: (MonadIO m) => IO () -> m VoidCallback
newVoidCallback callback
  = liftIO (VoidCallback <$> syncCallback ThrowWouldBlock callback)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VoidCallback Mozilla VoidCallback documentation> 
newVoidCallbackSync :: (MonadIO m) => IO () -> m VoidCallback
newVoidCallbackSync callback
  = liftIO (VoidCallback <$> syncCallback ContinueAsync callback)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VoidCallback Mozilla VoidCallback documentation> 
newVoidCallbackAsync :: (MonadIO m) => IO () -> m VoidCallback
newVoidCallbackAsync callback
  = liftIO (VoidCallback <$> asyncCallback callback)