{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedPreserveAspectRatio
       (ghcjs_dom_svg_animated_preserve_aspect_ratio_get_base_val,
        svgAnimatedPreserveAspectRatioGetBaseVal,
        ghcjs_dom_svg_animated_preserve_aspect_ratio_get_anim_val,
        svgAnimatedPreserveAspectRatioGetAnimVal,
        SVGAnimatedPreserveAspectRatio, IsSVGAnimatedPreserveAspectRatio,
        castToSVGAnimatedPreserveAspectRatio,
        gTypeSVGAnimatedPreserveAspectRatio,
        toSVGAnimatedPreserveAspectRatio)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"baseVal\"]"
        ghcjs_dom_svg_animated_preserve_aspect_ratio_get_base_val ::
        JSRef SVGAnimatedPreserveAspectRatio ->
          IO (JSRef SVGPreserveAspectRatio)
 
svgAnimatedPreserveAspectRatioGetBaseVal ::
                                         (IsSVGAnimatedPreserveAspectRatio self) =>
                                           self -> IO (Maybe SVGPreserveAspectRatio)
svgAnimatedPreserveAspectRatioGetBaseVal self
  = fmap SVGPreserveAspectRatio . maybeJSNull <$>
      (ghcjs_dom_svg_animated_preserve_aspect_ratio_get_base_val
         (unSVGAnimatedPreserveAspectRatio
            (toSVGAnimatedPreserveAspectRatio self)))
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_preserve_aspect_ratio_get_anim_val ::
        JSRef SVGAnimatedPreserveAspectRatio ->
          IO (JSRef SVGPreserveAspectRatio)
 
svgAnimatedPreserveAspectRatioGetAnimVal ::
                                         (IsSVGAnimatedPreserveAspectRatio self) =>
                                           self -> IO (Maybe SVGPreserveAspectRatio)
svgAnimatedPreserveAspectRatioGetAnimVal self
  = fmap SVGPreserveAspectRatio . maybeJSNull <$>
      (ghcjs_dom_svg_animated_preserve_aspect_ratio_get_anim_val
         (unSVGAnimatedPreserveAspectRatio
            (toSVGAnimatedPreserveAspectRatio self)))
#else
module GHCJS.DOM.SVGAnimatedPreserveAspectRatio (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedPreserveAspectRatio
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedPreserveAspectRatio
#endif
