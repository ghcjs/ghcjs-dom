{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Stylesheets (MediaList, IsMediaList) where
 
data MediaList = MediaList
 
class IsMediaList a
 
instance IsMediaList MediaList
#else
module GHCJS.DOM.Stylesheets (
  module Graphics.UI.Gtk.WebKit.DOM.Stylesheets
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Stylesheets
#endif
