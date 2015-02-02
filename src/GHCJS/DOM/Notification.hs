{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Notification
       (ghcjs_dom_notification_show, notificationShow,
        ghcjs_dom_notification_dispatch_event, notificationDispatchEvent,
        notificationOnshow, notificationOnerror, notificationOnclose,
        notificationOnclick, Notification, IsNotification,
        castToNotification, gTypeNotification, toNotification)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"show\"]()"
        ghcjs_dom_notification_show :: JSRef Notification -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.show Mozilla Notification.show documentation> 
notificationShow :: (IsNotification self) => self -> IO ()
notificationShow self
  = ghcjs_dom_notification_show
      (unNotification (toNotification self))
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_notification_dispatch_event ::
        JSRef Notification -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.dispatchEvent Mozilla Notification.dispatchEvent documentation> 
notificationDispatchEvent ::
                          (IsNotification self, IsEvent evt) => self -> Maybe evt -> IO Bool
notificationDispatchEvent self evt
  = ghcjs_dom_notification_dispatch_event
      (unNotification (toNotification self))
      (maybe jsNull (unEvent . toEvent) evt)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.onshow Mozilla Notification.onshow documentation> 
notificationOnshow ::
                   (IsNotification self) => Signal self (EventM UIEvent self ())
notificationOnshow = (connect "show")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.onerror Mozilla Notification.onerror documentation> 
notificationOnerror ::
                    (IsNotification self) => Signal self (EventM UIEvent self ())
notificationOnerror = (connect "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.onclose Mozilla Notification.onclose documentation> 
notificationOnclose ::
                    (IsNotification self) => Signal self (EventM UIEvent self ())
notificationOnclose = (connect "close")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notification.onclick Mozilla Notification.onclick documentation> 
notificationOnclick ::
                    (IsNotification self) => Signal self (EventM MouseEvent self ())
notificationOnclick = (connect "click")
#else
module GHCJS.DOM.Notification (
  ) where
#endif
