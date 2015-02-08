{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.NotificationCenter
       (ghcjs_dom_notification_center_create_notification,
        notificationCenterCreateNotification,
        ghcjs_dom_notification_center_check_permission,
        notificationCenterCheckPermission,
        ghcjs_dom_notification_center_request_permission,
        notificationCenterRequestPermission, NotificationCenter,
        IsNotificationCenter, castToNotificationCenter,
        gTypeNotificationCenter, toNotificationCenter)
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

 
foreign import javascript unsafe
        "$1[\"createNotification\"]($2, $3,\n$4)"
        ghcjs_dom_notification_center_create_notification ::
        JSRef NotificationCenter ->
          JSString -> JSString -> JSString -> IO (JSRef Notification)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.createNotification Mozilla NotificationCenter.createNotification documentation> 
notificationCenterCreateNotification ::
                                     (MonadIO m, IsNotificationCenter self, ToJSString iconUrl,
                                      ToJSString title, ToJSString body) =>
                                       self -> iconUrl -> title -> body -> m (Maybe Notification)
notificationCenterCreateNotification self iconUrl title body
  = liftIO
      ((ghcjs_dom_notification_center_create_notification
          (unNotificationCenter (toNotificationCenter self))
          (toJSString iconUrl)
          (toJSString title)
          (toJSString body))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"checkPermission\"]()"
        ghcjs_dom_notification_center_check_permission ::
        JSRef NotificationCenter -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.checkPermission Mozilla NotificationCenter.checkPermission documentation> 
notificationCenterCheckPermission ::
                                  (MonadIO m, IsNotificationCenter self) => self -> m Int
notificationCenterCheckPermission self
  = liftIO
      (ghcjs_dom_notification_center_check_permission
         (unNotificationCenter (toNotificationCenter self)))
 
foreign import javascript unsafe "$1[\"requestPermission\"]($2)"
        ghcjs_dom_notification_center_request_permission ::
        JSRef NotificationCenter -> JSRef VoidCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.requestPermission Mozilla NotificationCenter.requestPermission documentation> 
notificationCenterRequestPermission ::
                                    (MonadIO m, IsNotificationCenter self,
                                     IsVoidCallback callback) =>
                                      self -> Maybe callback -> m ()
notificationCenterRequestPermission self callback
  = liftIO
      (ghcjs_dom_notification_center_request_permission
         (unNotificationCenter (toNotificationCenter self))
         (maybe jsNull (unVoidCallback . toVoidCallback) callback))
#else
module GHCJS.DOM.NotificationCenter (
  ) where
#endif
