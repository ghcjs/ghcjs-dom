{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedAngle
       (ghcjs_dom_svg_animated_angle_get_base_val,
        svgAnimatedAngleGetBaseVal,
        ghcjs_dom_svg_animated_angle_get_anim_val,
        svgAnimatedAngleGetAnimVal, SVGAnimatedAngle, IsSVGAnimatedAngle,
        castToSVGAnimatedAngle, gTypeSVGAnimatedAngle, toSVGAnimatedAngle)
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
        ghcjs_dom_svg_animated_angle_get_base_val ::
        JSRef SVGAnimatedAngle -> IO (JSRef SVGAngle)
 
svgAnimatedAngleGetBaseVal ::
                           (IsSVGAnimatedAngle self) => self -> IO (Maybe SVGAngle)
svgAnimatedAngleGetBaseVal self
  = fmap SVGAngle . maybeJSNull <$>
      (ghcjs_dom_svg_animated_angle_get_base_val
         (unSVGAnimatedAngle (toSVGAnimatedAngle self)))
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_angle_get_anim_val ::
        JSRef SVGAnimatedAngle -> IO (JSRef SVGAngle)
 
svgAnimatedAngleGetAnimVal ::
                           (IsSVGAnimatedAngle self) => self -> IO (Maybe SVGAngle)
svgAnimatedAngleGetAnimVal self
  = fmap SVGAngle . maybeJSNull <$>
      (ghcjs_dom_svg_animated_angle_get_anim_val
         (unSVGAnimatedAngle (toSVGAnimatedAngle self)))
#else
module GHCJS.DOM.SVGAnimatedAngle (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedAngle
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedAngle
#endif
