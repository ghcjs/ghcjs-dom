{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedLength
       (ghcjs_dom_svg_animated_length_get_base_val,
        svgAnimatedLengthGetBaseVal,
        ghcjs_dom_svg_animated_length_get_anim_val,
        svgAnimatedLengthGetAnimVal, SVGAnimatedLength,
        IsSVGAnimatedLength, castToSVGAnimatedLength,
        gTypeSVGAnimatedLength, toSVGAnimatedLength)
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
        ghcjs_dom_svg_animated_length_get_base_val ::
        JSRef SVGAnimatedLength -> IO (JSRef SVGLength)
 
svgAnimatedLengthGetBaseVal ::
                            (IsSVGAnimatedLength self) => self -> IO (Maybe SVGLength)
svgAnimatedLengthGetBaseVal self
  = fmap SVGLength . maybeJSNull <$>
      (ghcjs_dom_svg_animated_length_get_base_val
         (unSVGAnimatedLength (toSVGAnimatedLength self)))
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_length_get_anim_val ::
        JSRef SVGAnimatedLength -> IO (JSRef SVGLength)
 
svgAnimatedLengthGetAnimVal ::
                            (IsSVGAnimatedLength self) => self -> IO (Maybe SVGLength)
svgAnimatedLengthGetAnimVal self
  = fmap SVGLength . maybeJSNull <$>
      (ghcjs_dom_svg_animated_length_get_anim_val
         (unSVGAnimatedLength (toSVGAnimatedLength self)))
#else
module GHCJS.DOM.SVGAnimatedLength (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedLength
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedLength
#endif
