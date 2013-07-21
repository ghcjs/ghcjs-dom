{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StorageInfo (cTEMPORARY, cPERSISTENT) where
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

cTEMPORARY = 0
cPERSISTENT = 1
#else
module GHCJS.DOM.StorageInfo (
  module Graphics.UI.Gtk.WebKit.DOM.StorageInfo
  ) where
import Graphics.UI.Gtk.WebKit.DOM.StorageInfo
#endif
