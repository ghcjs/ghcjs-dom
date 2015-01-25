{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGCursorElement
       (ghcjs_dom_svg_cursor_element_get_x, svgCursorElementGetX,
        ghcjs_dom_svg_cursor_element_get_y, svgCursorElementGetY,
        SVGCursorElement, IsSVGCursorElement, castToSVGCursorElement,
        gTypeSVGCursorElement, toSVGCursorElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_cursor_element_get_x ::
        JSRef SVGCursorElement -> IO (JSRef SVGAnimatedLength)
 
svgCursorElementGetX ::
                     (IsSVGCursorElement self) => self -> IO (Maybe SVGAnimatedLength)
svgCursorElementGetX self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_cursor_element_get_x
         (unSVGCursorElement (toSVGCursorElement self)))
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_cursor_element_get_y ::
        JSRef SVGCursorElement -> IO (JSRef SVGAnimatedLength)
 
svgCursorElementGetY ::
                     (IsSVGCursorElement self) => self -> IO (Maybe SVGAnimatedLength)
svgCursorElementGetY self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_cursor_element_get_y
         (unSVGCursorElement (toSVGCursorElement self)))
#else
module GHCJS.DOM.SVGCursorElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGCursorElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGCursorElement
#endif
