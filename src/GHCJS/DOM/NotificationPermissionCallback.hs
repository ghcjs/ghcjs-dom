{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.NotificationPermissionCallback
       (notificationPermissionCallbackNewSync,
        notificationPermissionCallbackNewAsync,
        NotificationPermissionCallback, IsNotificationPermissionCallback,
        castToNotificationPermissionCallback,
        gTypeNotificationPermissionCallback,
        toNotificationPermissionCallback)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationPermissionCallback Mozilla NotificationPermissionCallback documentation> 
notificationPermissionCallbackNewSync ::
                                      (MonadIO m, FromJSString permission) =>
                                        (permission -> IO Bool) -> m NotificationPermissionCallback
notificationPermissionCallbackNewSync callback
  = liftIO
      (NotificationPermissionCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ permission ->
              fromJSRefUnchecked permission >>=
                \ permission' -> callback permission'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationPermissionCallback Mozilla NotificationPermissionCallback documentation> 
notificationPermissionCallbackNewSync' ::
                                       (MonadIO m, FromJSString permission) =>
                                         ForeignRetention ->
                                           Bool ->
                                             (permission -> IO Bool) ->
                                               m NotificationPermissionCallback
notificationPermissionCallbackNewSync' retention continueAsync
  callback
  = liftIO
      (NotificationPermissionCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ permission ->
              fromJSRefUnchecked permission >>=
                \ permission' -> callback permission'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationPermissionCallback Mozilla NotificationPermissionCallback documentation> 
notificationPermissionCallbackNewAsync ::
                                       (MonadIO m, FromJSString permission) =>
                                         (permission -> IO Bool) -> m NotificationPermissionCallback
notificationPermissionCallbackNewAsync callback
  = liftIO
      (NotificationPermissionCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ permission ->
              fromJSRefUnchecked permission >>=
                \ permission' -> callback permission'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationPermissionCallback Mozilla NotificationPermissionCallback documentation> 
notificationPermissionCallbackNewAsync' ::
                                        (MonadIO m, FromJSString permission) =>
                                          ForeignRetention ->
                                            (permission -> IO Bool) ->
                                              m NotificationPermissionCallback
notificationPermissionCallbackNewAsync' retention callback
  = liftIO
      (NotificationPermissionCallback . castRef <$>
         asyncCallback1 retention
           (\ permission ->
              fromJSRefUnchecked permission >>=
                \ permission' -> callback permission'))
#else
module GHCJS.DOM.NotificationPermissionCallback (
  ) where
#endif
