{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.VoidCallback
       (newVoidCallbackSync, newVoidCallbackSync', newVoidCallbackAsync,
        newVoidCallbackAsync', VoidCallback, castToVoidCallback,
        gTypeVoidCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/VoidCallback Mozilla VoidCallback documentation> 
newVoidCallbackSync :: (MonadIO m) => IO Bool -> m VoidCallback
newVoidCallbackSync callback
  = liftIO
      (VoidCallback . castRef <$>
         syncCallback AlwaysRetain True callback)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VoidCallback Mozilla VoidCallback documentation> 
newVoidCallbackSync' ::
                     (MonadIO m) =>
                       ForeignRetention -> Bool -> IO Bool -> m VoidCallback
newVoidCallbackSync' retention continueAsync callback
  = liftIO
      (VoidCallback . castRef <$>
         syncCallback retention continueAsync callback)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VoidCallback Mozilla VoidCallback documentation> 
newVoidCallbackAsync :: (MonadIO m) => IO Bool -> m VoidCallback
newVoidCallbackAsync callback
  = liftIO
      (VoidCallback . castRef <$> asyncCallback AlwaysRetain callback)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VoidCallback Mozilla VoidCallback documentation> 
newVoidCallbackAsync' ::
                      (MonadIO m) => ForeignRetention -> IO Bool -> m VoidCallback
newVoidCallbackAsync' retention callback
  = liftIO
      (VoidCallback . castRef <$> asyncCallback retention callback)
#else
module GHCJS.DOM.VoidCallback (
  ) where
#endif
