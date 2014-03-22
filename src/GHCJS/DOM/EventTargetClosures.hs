{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE JavaScriptFFI, ForeignFunctionInterface #-}
module GHCJS.DOM.EventTargetClosures
       (eventTargetAddEventListener) where

import GHCJS.Types
import GHCJS.Foreign
import GHCJS.DOM.Types
import Control.Applicative ((<$>))

#ifdef ghcjs_HOST_OS
foreign import javascript unsafe
        "($1[\"addEventListener\"]($2, $3, $4) ? 1 : 0)"
        ghcjs_dom_event_target_add_event_listener ::
        JSRef GObject -> JSString -> JSRef a -> Bool -> IO Bool

foreign import javascript unsafe
        "($1[\"removeEventListener\"]($2, $3, $4) ? 1 : 0)"
        ghcjs_dom_event_target_remove_event_listener ::
        JSRef GObject -> JSString -> JSRef a -> Bool -> IO Bool
#else
ghcjs_dom_event_target_add_event_listener ::
        JSRef GObject -> JSString -> JSRef a -> Bool -> IO Bool
ghcjs_dom_event_target_add_event_listener = undefined

ghcjs_dom_event_target_remove_event_listener ::
        JSRef GObject -> JSString -> JSRef a -> Bool -> IO Bool
ghcjs_dom_event_target_remove_event_listener = undefined
#endif

eventTargetAddEventListener ::
                         (GObjectClass self, IsEvent event) =>
                           self -> String -> Bool -> (self -> event -> IO ()) -> IO (IO ())
eventTargetAddEventListener self eventName bubble user = do
    callback <- syncCallback1 AlwaysRetain True $ \e -> user self (unsafeCastGObject $ GObject e)
    ghcjs_dom_event_target_add_event_listener
        (unGObject (toGObject self))
        (toJSString eventName)
        callback
        bubble
    return $ do
        ghcjs_dom_event_target_remove_event_listener
            (unGObject (toGObject self))
            (toJSString eventName)
            callback
            bubble
        release callback
#else
module GHCJS.DOM.EventTargetClosures (
  module Graphics.UI.Gtk.WebKit.DOM.EventTargetClosures
  ) where
import Graphics.UI.Gtk.WebKit.DOM.EventTargetClosures
#endif
