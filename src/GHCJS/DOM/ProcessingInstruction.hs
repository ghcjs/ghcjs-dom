{-# LANGUAGE CPP #-}
module GHCJS.DOM.ProcessingInstruction (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.ProcessingInstruction
#else
  module Graphics.UI.Gtk.WebKit.DOM.ProcessingInstruction
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.ProcessingInstruction
#else
import Graphics.UI.Gtk.WebKit.DOM.ProcessingInstruction
#endif
