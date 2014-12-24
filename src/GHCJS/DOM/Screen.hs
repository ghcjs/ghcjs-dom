{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Screen
       (ghcjs_dom_screen_get_height, screenGetHeight,
        ghcjs_dom_screen_get_width, screenGetWidth,
        ghcjs_dom_screen_get_color_depth, screenGetColorDepth,
        ghcjs_dom_screen_get_pixel_depth, screenGetPixelDepth,
        ghcjs_dom_screen_get_avail_left, screenGetAvailLeft,
        ghcjs_dom_screen_get_avail_top, screenGetAvailTop,
        ghcjs_dom_screen_get_avail_height, screenGetAvailHeight,
        ghcjs_dom_screen_get_avail_width, screenGetAvailWidth, DOMScreen,
        IsDOMScreen, castToDOMScreen, gTypeDOMScreen, toDOMScreen)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_screen_get_height :: JSRef DOMScreen -> IO Word
 
screenGetHeight :: (IsDOMScreen self) => self -> IO Word
screenGetHeight self
  = ghcjs_dom_screen_get_height (unDOMScreen (toDOMScreen self))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_screen_get_width :: JSRef DOMScreen -> IO Word
 
screenGetWidth :: (IsDOMScreen self) => self -> IO Word
screenGetWidth self
  = ghcjs_dom_screen_get_width (unDOMScreen (toDOMScreen self))
 
foreign import javascript unsafe "$1[\"colorDepth\"]"
        ghcjs_dom_screen_get_color_depth :: JSRef DOMScreen -> IO Word
 
screenGetColorDepth :: (IsDOMScreen self) => self -> IO Word
screenGetColorDepth self
  = ghcjs_dom_screen_get_color_depth (unDOMScreen (toDOMScreen self))
 
foreign import javascript unsafe "$1[\"pixelDepth\"]"
        ghcjs_dom_screen_get_pixel_depth :: JSRef DOMScreen -> IO Word
 
screenGetPixelDepth :: (IsDOMScreen self) => self -> IO Word
screenGetPixelDepth self
  = ghcjs_dom_screen_get_pixel_depth (unDOMScreen (toDOMScreen self))
 
foreign import javascript unsafe "$1[\"availLeft\"]"
        ghcjs_dom_screen_get_avail_left :: JSRef DOMScreen -> IO Int
 
screenGetAvailLeft :: (IsDOMScreen self) => self -> IO Int
screenGetAvailLeft self
  = ghcjs_dom_screen_get_avail_left (unDOMScreen (toDOMScreen self))
 
foreign import javascript unsafe "$1[\"availTop\"]"
        ghcjs_dom_screen_get_avail_top :: JSRef DOMScreen -> IO Int
 
screenGetAvailTop :: (IsDOMScreen self) => self -> IO Int
screenGetAvailTop self
  = ghcjs_dom_screen_get_avail_top (unDOMScreen (toDOMScreen self))
 
foreign import javascript unsafe "$1[\"availHeight\"]"
        ghcjs_dom_screen_get_avail_height :: JSRef DOMScreen -> IO Word
 
screenGetAvailHeight :: (IsDOMScreen self) => self -> IO Word
screenGetAvailHeight self
  = ghcjs_dom_screen_get_avail_height
      (unDOMScreen (toDOMScreen self))
 
foreign import javascript unsafe "$1[\"availWidth\"]"
        ghcjs_dom_screen_get_avail_width :: JSRef DOMScreen -> IO Word
 
screenGetAvailWidth :: (IsDOMScreen self) => self -> IO Word
screenGetAvailWidth self
  = ghcjs_dom_screen_get_avail_width (unDOMScreen (toDOMScreen self))
#else
module GHCJS.DOM.Screen (
  module Graphics.UI.Gtk.WebKit.DOM.Screen
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Screen
#endif
