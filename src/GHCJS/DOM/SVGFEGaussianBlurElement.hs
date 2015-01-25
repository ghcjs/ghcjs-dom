{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEGaussianBlurElement
       (ghcjs_dom_svgfe_gaussian_blur_element_set_std_deviation,
        svgfeGaussianBlurElementSetStdDeviation, cSVG_EDGEMODE_UNKNOWN,
        cSVG_EDGEMODE_DUPLICATE, cSVG_EDGEMODE_WRAP, cSVG_EDGEMODE_NONE,
        ghcjs_dom_svgfe_gaussian_blur_element_get_in1,
        svgfeGaussianBlurElementGetIn1,
        ghcjs_dom_svgfe_gaussian_blur_element_get_std_deviation_x,
        svgfeGaussianBlurElementGetStdDeviationX,
        ghcjs_dom_svgfe_gaussian_blur_element_get_std_deviation_y,
        svgfeGaussianBlurElementGetStdDeviationY,
        ghcjs_dom_svgfe_gaussian_blur_element_get_edge_mode,
        svgfeGaussianBlurElementGetEdgeMode, SVGFEGaussianBlurElement,
        IsSVGFEGaussianBlurElement, castToSVGFEGaussianBlurElement,
        gTypeSVGFEGaussianBlurElement, toSVGFEGaussianBlurElement)
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
        ghcjs_dom_svgfe_gaussian_blur_element_set_std_deviation ::
        JSRef SVGFEGaussianBlurElement -> Float -> Float -> IO ()
 
svgfeGaussianBlurElementSetStdDeviation ::
                                        (IsSVGFEGaussianBlurElement self) =>
                                          self -> Float -> Float -> IO ()
svgfeGaussianBlurElementSetStdDeviation self stdDeviationX
  stdDeviationY
  = ghcjs_dom_svgfe_gaussian_blur_element_set_std_deviation
      (unSVGFEGaussianBlurElement (toSVGFEGaussianBlurElement self))
      stdDeviationX
      stdDeviationY
cSVG_EDGEMODE_UNKNOWN = 0
cSVG_EDGEMODE_DUPLICATE = 1
cSVG_EDGEMODE_WRAP = 2
cSVG_EDGEMODE_NONE = 3
 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_gaussian_blur_element_get_in1 ::
        JSRef SVGFEGaussianBlurElement -> IO (JSRef SVGAnimatedString)
 
svgfeGaussianBlurElementGetIn1 ::
                               (IsSVGFEGaussianBlurElement self) =>
                                 self -> IO (Maybe SVGAnimatedString)
svgfeGaussianBlurElementGetIn1 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_gaussian_blur_element_get_in1
         (unSVGFEGaussianBlurElement (toSVGFEGaussianBlurElement self)))
 
foreign import javascript unsafe "$1[\"stdDeviationX\"]"
        ghcjs_dom_svgfe_gaussian_blur_element_get_std_deviation_x ::
        JSRef SVGFEGaussianBlurElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeGaussianBlurElementGetStdDeviationX ::
                                         (IsSVGFEGaussianBlurElement self) =>
                                           self -> IO (Maybe SVGAnimatedNumber)
svgfeGaussianBlurElementGetStdDeviationX self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_gaussian_blur_element_get_std_deviation_x
         (unSVGFEGaussianBlurElement (toSVGFEGaussianBlurElement self)))
 
foreign import javascript unsafe "$1[\"stdDeviationY\"]"
        ghcjs_dom_svgfe_gaussian_blur_element_get_std_deviation_y ::
        JSRef SVGFEGaussianBlurElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeGaussianBlurElementGetStdDeviationY ::
                                         (IsSVGFEGaussianBlurElement self) =>
                                           self -> IO (Maybe SVGAnimatedNumber)
svgfeGaussianBlurElementGetStdDeviationY self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_gaussian_blur_element_get_std_deviation_y
         (unSVGFEGaussianBlurElement (toSVGFEGaussianBlurElement self)))
 
foreign import javascript unsafe "$1[\"edgeMode\"]"
        ghcjs_dom_svgfe_gaussian_blur_element_get_edge_mode ::
        JSRef SVGFEGaussianBlurElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgfeGaussianBlurElementGetEdgeMode ::
                                    (IsSVGFEGaussianBlurElement self) =>
                                      self -> IO (Maybe SVGAnimatedEnumeration)
svgfeGaussianBlurElementGetEdgeMode self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svgfe_gaussian_blur_element_get_edge_mode
         (unSVGFEGaussianBlurElement (toSVGFEGaussianBlurElement self)))
#else
module GHCJS.DOM.SVGFEGaussianBlurElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFEGaussianBlurElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFEGaussianBlurElement
#endif
