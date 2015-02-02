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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"setStdDeviation\"]($2, $3)"
        ghcjs_dom_svgfe_gaussian_blur_element_set_std_deviation ::
        JSRef SVGFEGaussianBlurElement -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.stdDeviation Mozilla SVGFEGaussianBlurElement.stdDeviation documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.in1 Mozilla SVGFEGaussianBlurElement.in1 documentation> 
svgfeGaussianBlurElementGetIn1 ::
                               (IsSVGFEGaussianBlurElement self) =>
                                 self -> IO (Maybe SVGAnimatedString)
svgfeGaussianBlurElementGetIn1 self
  = (ghcjs_dom_svgfe_gaussian_blur_element_get_in1
       (unSVGFEGaussianBlurElement (toSVGFEGaussianBlurElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"stdDeviationX\"]"
        ghcjs_dom_svgfe_gaussian_blur_element_get_std_deviation_x ::
        JSRef SVGFEGaussianBlurElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.stdDeviationX Mozilla SVGFEGaussianBlurElement.stdDeviationX documentation> 
svgfeGaussianBlurElementGetStdDeviationX ::
                                         (IsSVGFEGaussianBlurElement self) =>
                                           self -> IO (Maybe SVGAnimatedNumber)
svgfeGaussianBlurElementGetStdDeviationX self
  = (ghcjs_dom_svgfe_gaussian_blur_element_get_std_deviation_x
       (unSVGFEGaussianBlurElement (toSVGFEGaussianBlurElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"stdDeviationY\"]"
        ghcjs_dom_svgfe_gaussian_blur_element_get_std_deviation_y ::
        JSRef SVGFEGaussianBlurElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.stdDeviationY Mozilla SVGFEGaussianBlurElement.stdDeviationY documentation> 
svgfeGaussianBlurElementGetStdDeviationY ::
                                         (IsSVGFEGaussianBlurElement self) =>
                                           self -> IO (Maybe SVGAnimatedNumber)
svgfeGaussianBlurElementGetStdDeviationY self
  = (ghcjs_dom_svgfe_gaussian_blur_element_get_std_deviation_y
       (unSVGFEGaussianBlurElement (toSVGFEGaussianBlurElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"edgeMode\"]"
        ghcjs_dom_svgfe_gaussian_blur_element_get_edge_mode ::
        JSRef SVGFEGaussianBlurElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.edgeMode Mozilla SVGFEGaussianBlurElement.edgeMode documentation> 
svgfeGaussianBlurElementGetEdgeMode ::
                                    (IsSVGFEGaussianBlurElement self) =>
                                      self -> IO (Maybe SVGAnimatedEnumeration)
svgfeGaussianBlurElementGetEdgeMode self
  = (ghcjs_dom_svgfe_gaussian_blur_element_get_edge_mode
       (unSVGFEGaussianBlurElement (toSVGFEGaussianBlurElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGFEGaussianBlurElement (
  ) where
#endif
