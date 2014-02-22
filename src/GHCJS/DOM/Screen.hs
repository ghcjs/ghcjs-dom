{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
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
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_screen_get_height :: JSRef DOMScreen -> IO Word
#else
ghcjs_dom_screen_get_height :: JSRef DOMScreen -> IO Word
ghcjs_dom_screen_get_height = undefined
#endif

screenGetHeight :: (IsDOMScreen self) => self -> IO Word
screenGetHeight self
  = ghcjs_dom_screen_get_height (unDOMScreen (toDOMScreen self))


#ifdef __GHCJS__
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_screen_get_width :: JSRef DOMScreen -> IO Word
#else
ghcjs_dom_screen_get_width :: JSRef DOMScreen -> IO Word
ghcjs_dom_screen_get_width = undefined
#endif

screenGetWidth :: (IsDOMScreen self) => self -> IO Word
screenGetWidth self
  = ghcjs_dom_screen_get_width (unDOMScreen (toDOMScreen self))


#ifdef __GHCJS__
foreign import javascript unsafe "$1[\"colorDepth\"]"
        ghcjs_dom_screen_get_color_depth :: JSRef DOMScreen -> IO Word
#else
ghcjs_dom_screen_get_color_depth :: JSRef DOMScreen -> IO Word
ghcjs_dom_screen_get_color_depth = undefined
#endif

screenGetColorDepth :: (IsDOMScreen self) => self -> IO Word
screenGetColorDepth self
  = ghcjs_dom_screen_get_color_depth (unDOMScreen (toDOMScreen self))


#ifdef __GHCJS__
foreign import javascript unsafe "$1[\"pixelDepth\"]"
        ghcjs_dom_screen_get_pixel_depth :: JSRef DOMScreen -> IO Word
#else
ghcjs_dom_screen_get_pixel_depth :: JSRef DOMScreen -> IO Word
ghcjs_dom_screen_get_pixel_depth = undefined
#endif

screenGetPixelDepth :: (IsDOMScreen self) => self -> IO Word
screenGetPixelDepth self
  = ghcjs_dom_screen_get_pixel_depth (unDOMScreen (toDOMScreen self))


#ifdef __GHCJS__
foreign import javascript unsafe "$1[\"availLeft\"]"
        ghcjs_dom_screen_get_avail_left :: JSRef DOMScreen -> IO Int
#else
ghcjs_dom_screen_get_avail_left :: JSRef DOMScreen -> IO Int
ghcjs_dom_screen_get_avail_left = undefined
#endif

screenGetAvailLeft :: (IsDOMScreen self) => self -> IO Int
screenGetAvailLeft self
  = ghcjs_dom_screen_get_avail_left (unDOMScreen (toDOMScreen self))


#ifdef __GHCJS__
foreign import javascript unsafe "$1[\"availTop\"]"
        ghcjs_dom_screen_get_avail_top :: JSRef DOMScreen -> IO Int
#else
ghcjs_dom_screen_get_avail_top :: JSRef DOMScreen -> IO Int
ghcjs_dom_screen_get_avail_top = undefined
#endif

screenGetAvailTop :: (IsDOMScreen self) => self -> IO Int
screenGetAvailTop self
  = ghcjs_dom_screen_get_avail_top (unDOMScreen (toDOMScreen self))


#ifdef __GHCJS__
foreign import javascript unsafe "$1[\"availHeight\"]"
        ghcjs_dom_screen_get_avail_height :: JSRef DOMScreen -> IO Word
#else
ghcjs_dom_screen_get_avail_height :: JSRef DOMScreen -> IO Word
ghcjs_dom_screen_get_avail_height = undefined
#endif

screenGetAvailHeight :: (IsDOMScreen self) => self -> IO Word
screenGetAvailHeight self
  = ghcjs_dom_screen_get_avail_height
      (unDOMScreen (toDOMScreen self))


#ifdef __GHCJS__
foreign import javascript unsafe "$1[\"availWidth\"]"
        ghcjs_dom_screen_get_avail_width :: JSRef DOMScreen -> IO Word
#else
ghcjs_dom_screen_get_avail_width :: JSRef DOMScreen -> IO Word
ghcjs_dom_screen_get_avail_width = undefined
#endif

screenGetAvailWidth :: (IsDOMScreen self) => self -> IO Word
screenGetAvailWidth self
  = ghcjs_dom_screen_get_avail_width (unDOMScreen (toDOMScreen self))
#else
module GHCJS.DOM.Screen (
  module Graphics.UI.Gtk.WebKit.DOM.Screen
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Screen
#endif
