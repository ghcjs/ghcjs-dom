{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEDropShadowElement
       (ghcjs_dom_svgfe_drop_shadow_element_set_std_deviation,
        svgfeDropShadowElementSetStdDeviation,
        ghcjs_dom_svgfe_drop_shadow_element_get_in1,
        svgfeDropShadowElementGetIn1,
        ghcjs_dom_svgfe_drop_shadow_element_get_dx,
        svgfeDropShadowElementGetDx,
        ghcjs_dom_svgfe_drop_shadow_element_get_dy,
        svgfeDropShadowElementGetDy,
        ghcjs_dom_svgfe_drop_shadow_element_get_std_deviation_x,
        svgfeDropShadowElementGetStdDeviationX,
        ghcjs_dom_svgfe_drop_shadow_element_get_std_deviation_y,
        svgfeDropShadowElementGetStdDeviationY, SVGFEDropShadowElement,
        IsSVGFEDropShadowElement, castToSVGFEDropShadowElement,
        gTypeSVGFEDropShadowElement, toSVGFEDropShadowElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"setStdDeviation\"]($2, $3)"
        ghcjs_dom_svgfe_drop_shadow_element_set_std_deviation ::
        JSRef SVGFEDropShadowElement -> Float -> Float -> IO ()
 
svgfeDropShadowElementSetStdDeviation ::
                                      (IsSVGFEDropShadowElement self) =>
                                        self -> Float -> Float -> IO ()
svgfeDropShadowElementSetStdDeviation self stdDeviationX
  stdDeviationY
  = ghcjs_dom_svgfe_drop_shadow_element_set_std_deviation
      (unSVGFEDropShadowElement (toSVGFEDropShadowElement self))
      stdDeviationX
      stdDeviationY
 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_drop_shadow_element_get_in1 ::
        JSRef SVGFEDropShadowElement -> IO (JSRef SVGAnimatedString)
 
svgfeDropShadowElementGetIn1 ::
                             (IsSVGFEDropShadowElement self) =>
                               self -> IO (Maybe SVGAnimatedString)
svgfeDropShadowElementGetIn1 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_drop_shadow_element_get_in1
         (unSVGFEDropShadowElement (toSVGFEDropShadowElement self)))
 
foreign import javascript unsafe "$1[\"dx\"]"
        ghcjs_dom_svgfe_drop_shadow_element_get_dx ::
        JSRef SVGFEDropShadowElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeDropShadowElementGetDx ::
                            (IsSVGFEDropShadowElement self) =>
                              self -> IO (Maybe SVGAnimatedNumber)
svgfeDropShadowElementGetDx self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_drop_shadow_element_get_dx
         (unSVGFEDropShadowElement (toSVGFEDropShadowElement self)))
 
foreign import javascript unsafe "$1[\"dy\"]"
        ghcjs_dom_svgfe_drop_shadow_element_get_dy ::
        JSRef SVGFEDropShadowElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeDropShadowElementGetDy ::
                            (IsSVGFEDropShadowElement self) =>
                              self -> IO (Maybe SVGAnimatedNumber)
svgfeDropShadowElementGetDy self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_drop_shadow_element_get_dy
         (unSVGFEDropShadowElement (toSVGFEDropShadowElement self)))
 
foreign import javascript unsafe "$1[\"stdDeviationX\"]"
        ghcjs_dom_svgfe_drop_shadow_element_get_std_deviation_x ::
        JSRef SVGFEDropShadowElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeDropShadowElementGetStdDeviationX ::
                                       (IsSVGFEDropShadowElement self) =>
                                         self -> IO (Maybe SVGAnimatedNumber)
svgfeDropShadowElementGetStdDeviationX self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_drop_shadow_element_get_std_deviation_x
         (unSVGFEDropShadowElement (toSVGFEDropShadowElement self)))
 
foreign import javascript unsafe "$1[\"stdDeviationY\"]"
        ghcjs_dom_svgfe_drop_shadow_element_get_std_deviation_y ::
        JSRef SVGFEDropShadowElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeDropShadowElementGetStdDeviationY ::
                                       (IsSVGFEDropShadowElement self) =>
                                         self -> IO (Maybe SVGAnimatedNumber)
svgfeDropShadowElementGetStdDeviationY self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_drop_shadow_element_get_std_deviation_y
         (unSVGFEDropShadowElement (toSVGFEDropShadowElement self)))
#else
module GHCJS.DOM.SVGFEDropShadowElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFEDropShadowElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFEDropShadowElement
#endif
