{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFitToViewBox
       (ghcjs_dom_svg_fit_to_view_box_get_view_box,
        svgFitToViewBoxGetViewBox,
        ghcjs_dom_svg_fit_to_view_box_get_preserve_aspect_ratio,
        svgFitToViewBoxGetPreserveAspectRatio, SVGFitToViewBox,
        IsSVGFitToViewBox, castToSVGFitToViewBox, gTypeSVGFitToViewBox,
        toSVGFitToViewBox)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"viewBox\"]"
        ghcjs_dom_svg_fit_to_view_box_get_view_box ::
        JSRef SVGFitToViewBox -> IO (JSRef SVGAnimatedRect)
 
svgFitToViewBoxGetViewBox ::
                          (IsSVGFitToViewBox self) => self -> IO (Maybe SVGAnimatedRect)
svgFitToViewBoxGetViewBox self
  = fmap SVGAnimatedRect . maybeJSNull <$>
      (ghcjs_dom_svg_fit_to_view_box_get_view_box
         (unSVGFitToViewBox (toSVGFitToViewBox self)))
 
foreign import javascript unsafe "$1[\"preserveAspectRatio\"]"
        ghcjs_dom_svg_fit_to_view_box_get_preserve_aspect_ratio ::
        JSRef SVGFitToViewBox -> IO (JSRef SVGAnimatedPreserveAspectRatio)
 
svgFitToViewBoxGetPreserveAspectRatio ::
                                      (IsSVGFitToViewBox self) =>
                                        self -> IO (Maybe SVGAnimatedPreserveAspectRatio)
svgFitToViewBoxGetPreserveAspectRatio self
  = fmap SVGAnimatedPreserveAspectRatio . maybeJSNull <$>
      (ghcjs_dom_svg_fit_to_view_box_get_preserve_aspect_ratio
         (unSVGFitToViewBox (toSVGFitToViewBox self)))
#else
module GHCJS.DOM.SVGFitToViewBox (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFitToViewBox
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFitToViewBox
#endif
