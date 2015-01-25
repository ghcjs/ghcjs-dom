{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedNumberList
       (ghcjs_dom_svg_animated_number_list_get_base_val,
        svgAnimatedNumberListGetBaseVal,
        ghcjs_dom_svg_animated_number_list_get_anim_val,
        svgAnimatedNumberListGetAnimVal, SVGAnimatedNumberList,
        IsSVGAnimatedNumberList, castToSVGAnimatedNumberList,
        gTypeSVGAnimatedNumberList, toSVGAnimatedNumberList)
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
        ghcjs_dom_svg_animated_number_list_get_base_val ::
        JSRef SVGAnimatedNumberList -> IO (JSRef SVGNumberList)
 
svgAnimatedNumberListGetBaseVal ::
                                (IsSVGAnimatedNumberList self) => self -> IO (Maybe SVGNumberList)
svgAnimatedNumberListGetBaseVal self
  = fmap SVGNumberList . maybeJSNull <$>
      (ghcjs_dom_svg_animated_number_list_get_base_val
         (unSVGAnimatedNumberList (toSVGAnimatedNumberList self)))
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_number_list_get_anim_val ::
        JSRef SVGAnimatedNumberList -> IO (JSRef SVGNumberList)
 
svgAnimatedNumberListGetAnimVal ::
                                (IsSVGAnimatedNumberList self) => self -> IO (Maybe SVGNumberList)
svgAnimatedNumberListGetAnimVal self
  = fmap SVGNumberList . maybeJSNull <$>
      (ghcjs_dom_svg_animated_number_list_get_anim_val
         (unSVGAnimatedNumberList (toSVGAnimatedNumberList self)))
#else
module GHCJS.DOM.SVGAnimatedNumberList (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedNumberList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedNumberList
#endif
