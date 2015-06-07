{-# LANGUAGE CPP #-}
module GHCJS.DOM.CharacterData (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.CharacterData
#else
  module Graphics.UI.Gtk.WebKit.DOM.CharacterData
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.CharacterData
#else
import Graphics.UI.Gtk.WebKit.DOM.CharacterData
#endif
