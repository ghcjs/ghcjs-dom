{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.EventTarget
       (ghcjs_dom_event_target_dispatch_event, eventTargetDispatchEvent)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_event_target_dispatch_event ::
        JSRef EventTarget -> JSRef Event -> IO Bool
#else 
ghcjs_dom_event_target_dispatch_event ::
                                        JSRef EventTarget -> JSRef Event -> IO Bool
ghcjs_dom_event_target_dispatch_event = undefined
#endif
 
eventTargetDispatchEvent ::
                         (IsEventTarget self, IsEvent event) =>
                           self -> Maybe event -> IO Bool
eventTargetDispatchEvent self event
  = ghcjs_dom_event_target_dispatch_event
      (unEventTarget (toEventTarget self))
      (maybe jsNull (unEvent . toEvent) event)
#else
module GHCJS.DOM.EventTarget (
  module Graphics.UI.Gtk.WebKit.DOM.EventTarget
  ) where
import Graphics.UI.Gtk.WebKit.DOM.EventTarget
#endif
