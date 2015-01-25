{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGRect
       (ghcjs_dom_svg_rect_set_x, svgRectSetX, ghcjs_dom_svg_rect_get_x,
        svgRectGetX, ghcjs_dom_svg_rect_set_y, svgRectSetY,
        ghcjs_dom_svg_rect_get_y, svgRectGetY,
        ghcjs_dom_svg_rect_set_width, svgRectSetWidth,
        ghcjs_dom_svg_rect_get_width, svgRectGetWidth,
        ghcjs_dom_svg_rect_set_height, svgRectSetHeight,
        ghcjs_dom_svg_rect_get_height, svgRectGetHeight, SVGRect,
        IsSVGRect, castToSVGRect, gTypeSVGRect, toSVGRect)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_svg_rect_set_x :: JSRef SVGRect -> Float -> IO ()
 
svgRectSetX :: (IsSVGRect self) => self -> Float -> IO ()
svgRectSetX self val
  = ghcjs_dom_svg_rect_set_x (unSVGRect (toSVGRect self)) val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_rect_get_x :: JSRef SVGRect -> IO Float
 
svgRectGetX :: (IsSVGRect self) => self -> IO Float
svgRectGetX self
  = ghcjs_dom_svg_rect_get_x (unSVGRect (toSVGRect self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_rect_set_y :: JSRef SVGRect -> Float -> IO ()
 
svgRectSetY :: (IsSVGRect self) => self -> Float -> IO ()
svgRectSetY self val
  = ghcjs_dom_svg_rect_set_y (unSVGRect (toSVGRect self)) val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_rect_get_y :: JSRef SVGRect -> IO Float
 
svgRectGetY :: (IsSVGRect self) => self -> IO Float
svgRectGetY self
  = ghcjs_dom_svg_rect_get_y (unSVGRect (toSVGRect self))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_svg_rect_set_width :: JSRef SVGRect -> Float -> IO ()
 
svgRectSetWidth :: (IsSVGRect self) => self -> Float -> IO ()
svgRectSetWidth self val
  = ghcjs_dom_svg_rect_set_width (unSVGRect (toSVGRect self)) val
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_rect_get_width :: JSRef SVGRect -> IO Float
 
svgRectGetWidth :: (IsSVGRect self) => self -> IO Float
svgRectGetWidth self
  = ghcjs_dom_svg_rect_get_width (unSVGRect (toSVGRect self))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_svg_rect_set_height :: JSRef SVGRect -> Float -> IO ()
 
svgRectSetHeight :: (IsSVGRect self) => self -> Float -> IO ()
svgRectSetHeight self val
  = ghcjs_dom_svg_rect_set_height (unSVGRect (toSVGRect self)) val
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_rect_get_height :: JSRef SVGRect -> IO Float
 
svgRectGetHeight :: (IsSVGRect self) => self -> IO Float
svgRectGetHeight self
  = ghcjs_dom_svg_rect_get_height (unSVGRect (toSVGRect self))
#else
module GHCJS.DOM.SVGRect (
  module Graphics.UI.Gtk.WebKit.DOM.SVGRect
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGRect
#endif
