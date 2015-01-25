{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedLengthList
       (ghcjs_dom_svg_animated_length_list_get_base_val,
        svgAnimatedLengthListGetBaseVal,
        ghcjs_dom_svg_animated_length_list_get_anim_val,
        svgAnimatedLengthListGetAnimVal, SVGAnimatedLengthList,
        IsSVGAnimatedLengthList, castToSVGAnimatedLengthList,
        gTypeSVGAnimatedLengthList, toSVGAnimatedLengthList)
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
        ghcjs_dom_svg_animated_length_list_get_base_val ::
        JSRef SVGAnimatedLengthList -> IO (JSRef SVGLengthList)
 
svgAnimatedLengthListGetBaseVal ::
                                (IsSVGAnimatedLengthList self) => self -> IO (Maybe SVGLengthList)
svgAnimatedLengthListGetBaseVal self
  = fmap SVGLengthList . maybeJSNull <$>
      (ghcjs_dom_svg_animated_length_list_get_base_val
         (unSVGAnimatedLengthList (toSVGAnimatedLengthList self)))
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_length_list_get_anim_val ::
        JSRef SVGAnimatedLengthList -> IO (JSRef SVGLengthList)
 
svgAnimatedLengthListGetAnimVal ::
                                (IsSVGAnimatedLengthList self) => self -> IO (Maybe SVGLengthList)
svgAnimatedLengthListGetAnimVal self
  = fmap SVGLengthList . maybeJSNull <$>
      (ghcjs_dom_svg_animated_length_list_get_anim_val
         (unSVGAnimatedLengthList (toSVGAnimatedLengthList self)))
#else
module GHCJS.DOM.SVGAnimatedLengthList (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedLengthList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedLengthList
#endif
