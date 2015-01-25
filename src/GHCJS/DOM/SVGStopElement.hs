{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGStopElement
       (ghcjs_dom_svg_stop_element_get_offset, svgStopElementGetOffset,
        SVGStopElement, IsSVGStopElement, castToSVGStopElement,
        gTypeSVGStopElement, toSVGStopElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"offset\"]"
        ghcjs_dom_svg_stop_element_get_offset ::
        JSRef SVGStopElement -> IO (JSRef SVGAnimatedNumber)
 
svgStopElementGetOffset ::
                        (IsSVGStopElement self) => self -> IO (Maybe SVGAnimatedNumber)
svgStopElementGetOffset self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svg_stop_element_get_offset
         (unSVGStopElement (toSVGStopElement self)))
#else
module GHCJS.DOM.SVGStopElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGStopElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGStopElement
#endif
