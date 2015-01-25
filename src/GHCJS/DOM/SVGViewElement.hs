{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGViewElement
       (ghcjs_dom_svg_view_element_get_view_target,
        svgViewElementGetViewTarget, SVGViewElement, IsSVGViewElement,
        castToSVGViewElement, gTypeSVGViewElement, toSVGViewElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"viewTarget\"]"
        ghcjs_dom_svg_view_element_get_view_target ::
        JSRef SVGViewElement -> IO (JSRef SVGStringList)
 
svgViewElementGetViewTarget ::
                            (IsSVGViewElement self) => self -> IO (Maybe SVGStringList)
svgViewElementGetViewTarget self
  = fmap SVGStringList . maybeJSNull <$>
      (ghcjs_dom_svg_view_element_get_view_target
         (unSVGViewElement (toSVGViewElement self)))
#else
module GHCJS.DOM.SVGViewElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGViewElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGViewElement
#endif
