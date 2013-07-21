{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Events (Event, IsEvent) where
 
data Event = Event
 
class IsEvent a
 
instance IsEvent Event
#else
module GHCJS.DOM.Events (
  module Graphics.UI.Gtk.WebKit.DOM.Events
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Events
#endif
