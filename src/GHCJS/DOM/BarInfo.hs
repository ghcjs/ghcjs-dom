{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.BarInfo
       (ghcjs_dom_bar_info_get_visible, barInfoGetVisible) where
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
foreign import javascript unsafe "($1[\"visible\"] ? 1 : 0)"
        ghcjs_dom_bar_info_get_visible :: JSRef BarInfo -> IO Bool
#else 
ghcjs_dom_bar_info_get_visible :: JSRef BarInfo -> IO Bool
ghcjs_dom_bar_info_get_visible = undefined
#endif
 
barInfoGetVisible :: (IsBarInfo self) => self -> IO Bool
barInfoGetVisible self
  = ghcjs_dom_bar_info_get_visible (unBarInfo (toBarInfo self))
#else
module GHCJS.DOM.BarInfo (
  module Graphics.UI.Gtk.WebKit.DOM.BarInfo
  ) where
import Graphics.UI.Gtk.WebKit.DOM.BarInfo
#endif
