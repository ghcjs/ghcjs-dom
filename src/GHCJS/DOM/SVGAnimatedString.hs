{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedString
       (ghcjs_dom_svg_animated_string_set_base_val,
        svgAnimatedStringSetBaseVal,
        ghcjs_dom_svg_animated_string_get_base_val,
        svgAnimatedStringGetBaseVal,
        ghcjs_dom_svg_animated_string_get_anim_val,
        svgAnimatedStringGetAnimVal, SVGAnimatedString,
        IsSVGAnimatedString, castToSVGAnimatedString,
        gTypeSVGAnimatedString, toSVGAnimatedString)
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
        ghcjs_dom_svg_animated_string_set_base_val ::
        JSRef SVGAnimatedString -> JSString -> IO ()
 
svgAnimatedStringSetBaseVal ::
                            (IsSVGAnimatedString self, ToJSString val) => self -> val -> IO ()
svgAnimatedStringSetBaseVal self val
  = ghcjs_dom_svg_animated_string_set_base_val
      (unSVGAnimatedString (toSVGAnimatedString self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"baseVal\"]"
        ghcjs_dom_svg_animated_string_get_base_val ::
        JSRef SVGAnimatedString -> IO JSString
 
svgAnimatedStringGetBaseVal ::
                            (IsSVGAnimatedString self, FromJSString result) =>
                              self -> IO result
svgAnimatedStringGetBaseVal self
  = fromJSString <$>
      (ghcjs_dom_svg_animated_string_get_base_val
         (unSVGAnimatedString (toSVGAnimatedString self)))
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_string_get_anim_val ::
        JSRef SVGAnimatedString -> IO JSString
 
svgAnimatedStringGetAnimVal ::
                            (IsSVGAnimatedString self, FromJSString result) =>
                              self -> IO result
svgAnimatedStringGetAnimVal self
  = fromJSString <$>
      (ghcjs_dom_svg_animated_string_get_anim_val
         (unSVGAnimatedString (toSVGAnimatedString self)))
#else
module GHCJS.DOM.SVGAnimatedString (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedString
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedString
#endif
