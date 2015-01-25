{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedTransformList
       (ghcjs_dom_svg_animated_transform_list_get_base_val,
        svgAnimatedTransformListGetBaseVal,
        ghcjs_dom_svg_animated_transform_list_get_anim_val,
        svgAnimatedTransformListGetAnimVal, SVGAnimatedTransformList,
        IsSVGAnimatedTransformList, castToSVGAnimatedTransformList,
        gTypeSVGAnimatedTransformList, toSVGAnimatedTransformList)
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
        ghcjs_dom_svg_animated_transform_list_get_base_val ::
        JSRef SVGAnimatedTransformList -> IO (JSRef SVGTransformList)
 
svgAnimatedTransformListGetBaseVal ::
                                   (IsSVGAnimatedTransformList self) =>
                                     self -> IO (Maybe SVGTransformList)
svgAnimatedTransformListGetBaseVal self
  = fmap SVGTransformList . maybeJSNull <$>
      (ghcjs_dom_svg_animated_transform_list_get_base_val
         (unSVGAnimatedTransformList (toSVGAnimatedTransformList self)))
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_transform_list_get_anim_val ::
        JSRef SVGAnimatedTransformList -> IO (JSRef SVGTransformList)
 
svgAnimatedTransformListGetAnimVal ::
                                   (IsSVGAnimatedTransformList self) =>
                                     self -> IO (Maybe SVGTransformList)
svgAnimatedTransformListGetAnimVal self
  = fmap SVGTransformList . maybeJSNull <$>
      (ghcjs_dom_svg_animated_transform_list_get_anim_val
         (unSVGAnimatedTransformList (toSVGAnimatedTransformList self)))
#else
module GHCJS.DOM.SVGAnimatedTransformList (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedTransformList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAnimatedTransformList
#endif
