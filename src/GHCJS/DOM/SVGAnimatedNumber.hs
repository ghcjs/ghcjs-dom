{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedNumber
       (ghcjs_dom_svg_animated_number_set_base_val,
        svgAnimatedNumberSetBaseVal,
        ghcjs_dom_svg_animated_number_get_base_val,
        svgAnimatedNumberGetBaseVal,
        ghcjs_dom_svg_animated_number_get_anim_val,
        svgAnimatedNumberGetAnimVal, SVGAnimatedNumber,
        IsSVGAnimatedNumber, castToSVGAnimatedNumber,
        gTypeSVGAnimatedNumber, toSVGAnimatedNumber)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"baseVal\"] = $2;"
        ghcjs_dom_svg_animated_number_set_base_val ::
        JSRef SVGAnimatedNumber -> Float -> IO ()
 
svgAnimatedNumberSetBaseVal ::
                            (IsSVGAnimatedNumber self) => self -> Float -> IO ()
svgAnimatedNumberSetBaseVal self val
  = ghcjs_dom_svg_animated_number_set_base_val
      (unSVGAnimatedNumber (toSVGAnimatedNumber self))
      val
 
foreign import javascript unsafe "$1[\"baseVal\"]"
        ghcjs_dom_svg_animated_number_get_base_val ::
        JSRef SVGAnimatedNumber -> IO Float
 
svgAnimatedNumberGetBaseVal ::
                            (IsSVGAnimatedNumber self) => self -> IO Float
svgAnimatedNumberGetBaseVal self
  = ghcjs_dom_svg_animated_number_get_base_val
      (unSVGAnimatedNumber (toSVGAnimatedNumber self))
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_number_get_anim_val ::
        JSRef SVGAnimatedNumber -> IO Float
 
svgAnimatedNumberGetAnimVal ::
                            (IsSVGAnimatedNumber self) => self -> IO Float
svgAnimatedNumberGetAnimVal self
  = ghcjs_dom_svg_animated_number_get_anim_val
      (unSVGAnimatedNumber (toSVGAnimatedNumber self))
#else
module GHCJS.DOM.SVGAnimatedNumber (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedNumber
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedNumber
#endif
