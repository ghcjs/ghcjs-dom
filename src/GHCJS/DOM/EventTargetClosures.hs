{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE JavaScriptFFI, ForeignFunctionInterface #-}
module GHCJS.DOM.EventTargetClosures
       (EventName(..), SaferEventListener(..), unsafeEventName, eventListenerNew) where

import Control.Applicative ((<$>))
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.DOM.Types

newtype EventName t e = EventName DOMString
newtype SaferEventListener t e = SaferEventListener EventListener

unsafeEventName :: DOMString -> EventName t e
unsafeEventName = EventName

eventListenerNew :: IsEvent event => (event -> IO ()) -> IO EventListener
eventListenerNew callback = EventListener . castRef <$> syncCallback1 AlwaysRetain True (callback . unsafeCastGObject . GObject)

--eventTargetAddTypedEventListener ::
--                         (IsEventTarget self, ToJSString eventName, IsEvent event) =>
--                           self -> eventName -> Bool -> (self -> event -> IO ()) -> IO (IO ())
--eventTargetAddTypedEventListener self eventName bubble user = do
--    callback <- syncCallback1 AlwaysRetain True $ \e -> user self (unsafeCastGObject $ GObject e)
--
--    ghcjs_dom_event_target_add_event_listener
--        (unGObject (toGObject self))
--        (toJSString eventName)
--        callback
--        bubble
--    return $ do
--        ghcjs_dom_event_target_remove_event_listener
--            (unGObject (toGObject self))
--            (toJSString eventName)
--            callback
--            bubble
--        release callback
#else
module GHCJS.DOM.EventTargetClosures (
  module Graphics.UI.Gtk.WebKit.DOM.EventTargetClosures
  ) where
import Graphics.UI.Gtk.WebKit.DOM.EventTargetClosures
#endif
