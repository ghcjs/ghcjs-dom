{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Screen
       (webkit_dom_screen_get_height, screenGetHeight,
        webkit_dom_screen_get_width, screenGetWidth,
        webkit_dom_screen_get_color_depth, screenGetColorDepth,
        webkit_dom_screen_get_pixel_depth, screenGetPixelDepth,
        webkit_dom_screen_get_avail_left, screenGetAvailLeft,
        webkit_dom_screen_get_avail_top, screenGetAvailTop,
        webkit_dom_screen_get_avail_height, screenGetAvailHeight,
        webkit_dom_screen_get_avail_width, screenGetAvailWidth)
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
        webkit_dom_screen_get_height :: JSRef DOMScreen -> IO Word
#else 
webkit_dom_screen_get_height :: JSRef DOMScreen -> IO Word
webkit_dom_screen_get_height = undefined
#endif
 
screenGetHeight :: (DOMScreenClass self) => self -> IO Word
screenGetHeight self
  = webkit_dom_screen_get_height (unDOMScreen (toDOMScreen self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_screen_get_width :: JSRef DOMScreen -> IO Word
#else 
webkit_dom_screen_get_width :: JSRef DOMScreen -> IO Word
webkit_dom_screen_get_width = undefined
#endif
 
screenGetWidth :: (DOMScreenClass self) => self -> IO Word
screenGetWidth self
  = webkit_dom_screen_get_width (unDOMScreen (toDOMScreen self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"colorDepth\"]"
        webkit_dom_screen_get_color_depth :: JSRef DOMScreen -> IO Word
#else 
webkit_dom_screen_get_color_depth :: JSRef DOMScreen -> IO Word
webkit_dom_screen_get_color_depth = undefined
#endif
 
screenGetColorDepth :: (DOMScreenClass self) => self -> IO Word
screenGetColorDepth self
  = webkit_dom_screen_get_color_depth
      (unDOMScreen (toDOMScreen self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pixelDepth\"]"
        webkit_dom_screen_get_pixel_depth :: JSRef DOMScreen -> IO Word
#else 
webkit_dom_screen_get_pixel_depth :: JSRef DOMScreen -> IO Word
webkit_dom_screen_get_pixel_depth = undefined
#endif
 
screenGetPixelDepth :: (DOMScreenClass self) => self -> IO Word
screenGetPixelDepth self
  = webkit_dom_screen_get_pixel_depth
      (unDOMScreen (toDOMScreen self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"availLeft\"]"
        webkit_dom_screen_get_avail_left :: JSRef DOMScreen -> IO Int
#else 
webkit_dom_screen_get_avail_left :: JSRef DOMScreen -> IO Int
webkit_dom_screen_get_avail_left = undefined
#endif
 
screenGetAvailLeft :: (DOMScreenClass self) => self -> IO Int
screenGetAvailLeft self
  = webkit_dom_screen_get_avail_left (unDOMScreen (toDOMScreen self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"availTop\"]"
        webkit_dom_screen_get_avail_top :: JSRef DOMScreen -> IO Int
#else 
webkit_dom_screen_get_avail_top :: JSRef DOMScreen -> IO Int
webkit_dom_screen_get_avail_top = undefined
#endif
 
screenGetAvailTop :: (DOMScreenClass self) => self -> IO Int
screenGetAvailTop self
  = webkit_dom_screen_get_avail_top (unDOMScreen (toDOMScreen self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"availHeight\"]"
        webkit_dom_screen_get_avail_height :: JSRef DOMScreen -> IO Word
#else 
webkit_dom_screen_get_avail_height :: JSRef DOMScreen -> IO Word
webkit_dom_screen_get_avail_height = undefined
#endif
 
screenGetAvailHeight :: (DOMScreenClass self) => self -> IO Word
screenGetAvailHeight self
  = webkit_dom_screen_get_avail_height
      (unDOMScreen (toDOMScreen self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"availWidth\"]"
        webkit_dom_screen_get_avail_width :: JSRef DOMScreen -> IO Word
#else 
webkit_dom_screen_get_avail_width :: JSRef DOMScreen -> IO Word
webkit_dom_screen_get_avail_width = undefined
#endif
 
screenGetAvailWidth :: (DOMScreenClass self) => self -> IO Word
screenGetAvailWidth self
  = webkit_dom_screen_get_avail_width
      (unDOMScreen (toDOMScreen self))