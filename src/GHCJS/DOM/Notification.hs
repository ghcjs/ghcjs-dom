{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Notification
       (ghcjs_dom_notification_show, notificationShow,
        notificationShowEvent, notificationError, notificationClose,
        notificationClick, Notification, IsNotification,
        castToNotification, gTypeNotification, toNotification)
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

 
foreign import javascript unsafe "$1[\"show\"]()"
        ghcjs_dom_notification_show :: JSRef Notification -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.show Mozilla Notification.show documentation> 
notificationShow ::
                 (MonadIO m, IsNotification self) => self -> m ()
notificationShow self
  = liftIO
      (ghcjs_dom_notification_show
         (unNotification (toNotification self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.showEvent Mozilla Notification.showEvent documentation> 
notificationShowEvent ::
                      (IsNotification self, IsEventTarget self) =>
                        EventName self MouseEvent
notificationShowEvent = unsafeEventName (toJSString "show")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.error Mozilla Notification.error documentation> 
notificationError ::
                  (IsNotification self, IsEventTarget self) => EventName self UIEvent
notificationError = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.close Mozilla Notification.close documentation> 
notificationClose ::
                  (IsNotification self, IsEventTarget self) => EventName self Event
notificationClose = unsafeEventName (toJSString "close")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.click Mozilla Notification.click documentation> 
notificationClick ::
                  (IsNotification self, IsEventTarget self) =>
                    EventName self MouseEvent
notificationClick = unsafeEventName (toJSString "click")
#else
module GHCJS.DOM.Notification (
  ) where
#endif
