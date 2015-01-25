{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedEnumeration
       (ghcjs_dom_svg_animated_enumeration_set_base_val,
        svgAnimatedEnumerationSetBaseVal,
        ghcjs_dom_svg_animated_enumeration_get_base_val,
        svgAnimatedEnumerationGetBaseVal,
        ghcjs_dom_svg_animated_enumeration_get_anim_val,
        svgAnimatedEnumerationGetAnimVal, SVGAnimatedEnumeration,
        IsSVGAnimatedEnumeration, castToSVGAnimatedEnumeration,
        gTypeSVGAnimatedEnumeration, toSVGAnimatedEnumeration)
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
        ghcjs_dom_svg_animated_enumeration_set_base_val ::
        JSRef SVGAnimatedEnumeration -> Word -> IO ()
 
svgAnimatedEnumerationSetBaseVal ::
                                 (IsSVGAnimatedEnumeration self) => self -> Word -> IO ()
svgAnimatedEnumerationSetBaseVal self val
  = ghcjs_dom_svg_animated_enumeration_set_base_val
      (unSVGAnimatedEnumeration (toSVGAnimatedEnumeration self))
      val
 
foreign import javascript unsafe "$1[\"baseVal\"]"
        ghcjs_dom_svg_animated_enumeration_get_base_val ::
        JSRef SVGAnimatedEnumeration -> IO Word
 
svgAnimatedEnumerationGetBaseVal ::
                                 (IsSVGAnimatedEnumeration self) => self -> IO Word
svgAnimatedEnumerationGetBaseVal self
  = ghcjs_dom_svg_animated_enumeration_get_base_val
      (unSVGAnimatedEnumeration (toSVGAnimatedEnumeration self))
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_enumeration_get_anim_val ::
        JSRef SVGAnimatedEnumeration -> IO Word
 
svgAnimatedEnumerationGetAnimVal ::
                                 (IsSVGAnimatedEnumeration self) => self -> IO Word
svgAnimatedEnumerationGetAnimVal self
  = ghcjs_dom_svg_animated_enumeration_get_anim_val
      (unSVGAnimatedEnumeration (toSVGAnimatedEnumeration self))
#else
module GHCJS.DOM.SVGAnimatedEnumeration (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedEnumeration
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedEnumeration
#endif
