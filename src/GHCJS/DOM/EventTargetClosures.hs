{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.EventTargetClosures
       (eventTargetAddEventListener) where

import GHCJS.Types
import GHCJS.Foreign
import GHCJS.DOM.Types
import Control.Applicative ((<$>))

#ifdef __GHCJS__
foreign import javascript unsafe
        "($1[\"addEventListener\"]($2, $3, $4) ? 1 : 0)"
        ghcjs_dom_event_target_add_event_listener ::
        JSRef GObject -> JSString -> JSRef a -> Bool -> IO Bool
#else
ghcjs_dom_event_target_add_event_listener ::
        JSRef GObject -> JSString -> JSRef a -> Bool -> IO Bool
ghcjs_dom_event_target_add_event_listener = undefined
#endif

eventTargetAddEventListener ::
                         (GObjectClass self, IsEvent event) =>
                           self -> String -> Bool -> (self -> event -> IO ()) -> IO Bool
eventTargetAddEventListener self eventName bubble user = do
    callback <- syncCallback1 False True $ \e -> user self (unsafeCastGObject $ GObject e)
    ghcjs_dom_event_target_add_event_listener
        (unGObject (toGObject self))
        (toJSString eventName)
        callback
        bubble


