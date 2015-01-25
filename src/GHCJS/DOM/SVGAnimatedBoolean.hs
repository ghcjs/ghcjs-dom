{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedBoolean
       (ghcjs_dom_svg_animated_boolean_set_base_val,
        svgAnimatedBooleanSetBaseVal,
        ghcjs_dom_svg_animated_boolean_get_base_val,
        svgAnimatedBooleanGetBaseVal,
        ghcjs_dom_svg_animated_boolean_get_anim_val,
        svgAnimatedBooleanGetAnimVal, SVGAnimatedBoolean,
        IsSVGAnimatedBoolean, castToSVGAnimatedBoolean,
        gTypeSVGAnimatedBoolean, toSVGAnimatedBoolean)
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
        ghcjs_dom_svg_animated_boolean_set_base_val ::
        JSRef SVGAnimatedBoolean -> Bool -> IO ()
 
svgAnimatedBooleanSetBaseVal ::
                             (IsSVGAnimatedBoolean self) => self -> Bool -> IO ()
svgAnimatedBooleanSetBaseVal self val
  = ghcjs_dom_svg_animated_boolean_set_base_val
      (unSVGAnimatedBoolean (toSVGAnimatedBoolean self))
      val
 
foreign import javascript unsafe "($1[\"baseVal\"] ? 1 : 0)"
        ghcjs_dom_svg_animated_boolean_get_base_val ::
        JSRef SVGAnimatedBoolean -> IO Bool
 
svgAnimatedBooleanGetBaseVal ::
                             (IsSVGAnimatedBoolean self) => self -> IO Bool
svgAnimatedBooleanGetBaseVal self
  = ghcjs_dom_svg_animated_boolean_get_base_val
      (unSVGAnimatedBoolean (toSVGAnimatedBoolean self))
 
foreign import javascript unsafe "($1[\"animVal\"] ? 1 : 0)"
        ghcjs_dom_svg_animated_boolean_get_anim_val ::
        JSRef SVGAnimatedBoolean -> IO Bool
 
svgAnimatedBooleanGetAnimVal ::
                             (IsSVGAnimatedBoolean self) => self -> IO Bool
svgAnimatedBooleanGetAnimVal self
  = ghcjs_dom_svg_animated_boolean_get_anim_val
      (unSVGAnimatedBoolean (toSVGAnimatedBoolean self))
#else
module GHCJS.DOM.SVGAnimatedBoolean (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedBoolean
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedBoolean
#endif
