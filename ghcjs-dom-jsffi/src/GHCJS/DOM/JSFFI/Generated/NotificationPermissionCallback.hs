{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.NotificationPermissionCallback
       (newNotificationPermissionCallback,
        newNotificationPermissionCallbackSync,
        newNotificationPermissionCallbackAsync,
        NotificationPermissionCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationPermissionCallback Mozilla NotificationPermissionCallback documentation> 
newNotificationPermissionCallback ::
                                  (MonadIO m, FromJSString permission) =>
                                    (permission -> IO ()) ->
                                      m (NotificationPermissionCallback permission)
newNotificationPermissionCallback callback
  = liftIO
      (NotificationPermissionCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ permission ->
              fromJSValUnchecked permission >>=
                \ permission' -> callback permission'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationPermissionCallback Mozilla NotificationPermissionCallback documentation> 
newNotificationPermissionCallbackSync ::
                                      (MonadIO m, FromJSString permission) =>
                                        (permission -> IO ()) ->
                                          m (NotificationPermissionCallback permission)
newNotificationPermissionCallbackSync callback
  = liftIO
      (NotificationPermissionCallback <$>
         syncCallback1 ContinueAsync
           (\ permission ->
              fromJSValUnchecked permission >>=
                \ permission' -> callback permission'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationPermissionCallback Mozilla NotificationPermissionCallback documentation> 
newNotificationPermissionCallbackAsync ::
                                       (MonadIO m, FromJSString permission) =>
                                         (permission -> IO ()) ->
                                           m (NotificationPermissionCallback permission)
newNotificationPermissionCallbackAsync callback
  = liftIO
      (NotificationPermissionCallback <$>
         asyncCallback1
           (\ permission ->
              fromJSValUnchecked permission >>=
                \ permission' -> callback permission'))