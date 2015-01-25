{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedRect
       (ghcjs_dom_svg_animated_rect_get_base_val,
        svgAnimatedRectGetBaseVal,
        ghcjs_dom_svg_animated_rect_get_anim_val,
        svgAnimatedRectGetAnimVal, SVGAnimatedRect, IsSVGAnimatedRect,
        castToSVGAnimatedRect, gTypeSVGAnimatedRect, toSVGAnimatedRect)
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
        ghcjs_dom_svg_animated_rect_get_base_val ::
        JSRef SVGAnimatedRect -> IO (JSRef SVGRect)
 
svgAnimatedRectGetBaseVal ::
                          (IsSVGAnimatedRect self) => self -> IO (Maybe SVGRect)
svgAnimatedRectGetBaseVal self
  = fmap SVGRect . maybeJSNull <$>
      (ghcjs_dom_svg_animated_rect_get_base_val
         (unSVGAnimatedRect (toSVGAnimatedRect self)))
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_rect_get_anim_val ::
        JSRef SVGAnimatedRect -> IO (JSRef SVGRect)
 
svgAnimatedRectGetAnimVal ::
                          (IsSVGAnimatedRect self) => self -> IO (Maybe SVGRect)
svgAnimatedRectGetAnimVal self
  = fmap SVGRect . maybeJSNull <$>
      (ghcjs_dom_svg_animated_rect_get_anim_val
         (unSVGAnimatedRect (toSVGAnimatedRect self)))
#else
module GHCJS.DOM.SVGAnimatedRect (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedRect
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedRect
#endif
