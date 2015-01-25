{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedInteger
       (ghcjs_dom_svg_animated_integer_set_base_val,
        svgAnimatedIntegerSetBaseVal,
        ghcjs_dom_svg_animated_integer_get_base_val,
        svgAnimatedIntegerGetBaseVal,
        ghcjs_dom_svg_animated_integer_get_anim_val,
        svgAnimatedIntegerGetAnimVal, SVGAnimatedInteger,
        IsSVGAnimatedInteger, castToSVGAnimatedInteger,
        gTypeSVGAnimatedInteger, toSVGAnimatedInteger)
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
        ghcjs_dom_svg_animated_integer_set_base_val ::
        JSRef SVGAnimatedInteger -> Int -> IO ()
 
svgAnimatedIntegerSetBaseVal ::
                             (IsSVGAnimatedInteger self) => self -> Int -> IO ()
svgAnimatedIntegerSetBaseVal self val
  = ghcjs_dom_svg_animated_integer_set_base_val
      (unSVGAnimatedInteger (toSVGAnimatedInteger self))
      val
 
foreign import javascript unsafe "$1[\"baseVal\"]"
        ghcjs_dom_svg_animated_integer_get_base_val ::
        JSRef SVGAnimatedInteger -> IO Int
 
svgAnimatedIntegerGetBaseVal ::
                             (IsSVGAnimatedInteger self) => self -> IO Int
svgAnimatedIntegerGetBaseVal self
  = ghcjs_dom_svg_animated_integer_get_base_val
      (unSVGAnimatedInteger (toSVGAnimatedInteger self))
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_integer_get_anim_val ::
        JSRef SVGAnimatedInteger -> IO Int
 
svgAnimatedIntegerGetAnimVal ::
                             (IsSVGAnimatedInteger self) => self -> IO Int
svgAnimatedIntegerGetAnimVal self
  = ghcjs_dom_svg_animated_integer_get_anim_val
      (unSVGAnimatedInteger (toSVGAnimatedInteger self))
#else
module GHCJS.DOM.SVGAnimatedInteger (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedInteger
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedInteger
#endif
