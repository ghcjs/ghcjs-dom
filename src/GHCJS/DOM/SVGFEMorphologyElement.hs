{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEMorphologyElement
       (ghcjs_dom_svgfe_morphology_element_set_radius,
        svgfeMorphologyElementSetRadius, cSVG_MORPHOLOGY_OPERATOR_UNKNOWN,
        cSVG_MORPHOLOGY_OPERATOR_ERODE, cSVG_MORPHOLOGY_OPERATOR_DILATE,
        ghcjs_dom_svgfe_morphology_element_get_in1,
        svgfeMorphologyElementGetIn1,
        ghcjs_dom_svgfe_morphology_element_get_operator,
        svgfeMorphologyElementGetOperator,
        ghcjs_dom_svgfe_morphology_element_get_radius_x,
        svgfeMorphologyElementGetRadiusX,
        ghcjs_dom_svgfe_morphology_element_get_radius_y,
        svgfeMorphologyElementGetRadiusY, SVGFEMorphologyElement,
        IsSVGFEMorphologyElement, castToSVGFEMorphologyElement,
        gTypeSVGFEMorphologyElement, toSVGFEMorphologyElement)
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

 
foreign import javascript unsafe "$1[\"setRadius\"]($2, $3)"
        ghcjs_dom_svgfe_morphology_element_set_radius ::
        JSRef SVGFEMorphologyElement -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.radius Mozilla SVGFEMorphologyElement.radius documentation> 
svgfeMorphologyElementSetRadius ::
                                (IsSVGFEMorphologyElement self) => self -> Float -> Float -> IO ()
svgfeMorphologyElementSetRadius self radiusX radiusY
  = ghcjs_dom_svgfe_morphology_element_set_radius
      (unSVGFEMorphologyElement (toSVGFEMorphologyElement self))
      radiusX
      radiusY
cSVG_MORPHOLOGY_OPERATOR_UNKNOWN = 0
cSVG_MORPHOLOGY_OPERATOR_ERODE = 1
cSVG_MORPHOLOGY_OPERATOR_DILATE = 2
 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_morphology_element_get_in1 ::
        JSRef SVGFEMorphologyElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.in1 Mozilla SVGFEMorphologyElement.in1 documentation> 
svgfeMorphologyElementGetIn1 ::
                             (IsSVGFEMorphologyElement self) =>
                               self -> IO (Maybe SVGAnimatedString)
svgfeMorphologyElementGetIn1 self
  = (ghcjs_dom_svgfe_morphology_element_get_in1
       (unSVGFEMorphologyElement (toSVGFEMorphologyElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"operator\"]"
        ghcjs_dom_svgfe_morphology_element_get_operator ::
        JSRef SVGFEMorphologyElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.operator Mozilla SVGFEMorphologyElement.operator documentation> 
svgfeMorphologyElementGetOperator ::
                                  (IsSVGFEMorphologyElement self) =>
                                    self -> IO (Maybe SVGAnimatedEnumeration)
svgfeMorphologyElementGetOperator self
  = (ghcjs_dom_svgfe_morphology_element_get_operator
       (unSVGFEMorphologyElement (toSVGFEMorphologyElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"radiusX\"]"
        ghcjs_dom_svgfe_morphology_element_get_radius_x ::
        JSRef SVGFEMorphologyElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.radiusX Mozilla SVGFEMorphologyElement.radiusX documentation> 
svgfeMorphologyElementGetRadiusX ::
                                 (IsSVGFEMorphologyElement self) =>
                                   self -> IO (Maybe SVGAnimatedNumber)
svgfeMorphologyElementGetRadiusX self
  = (ghcjs_dom_svgfe_morphology_element_get_radius_x
       (unSVGFEMorphologyElement (toSVGFEMorphologyElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"radiusY\"]"
        ghcjs_dom_svgfe_morphology_element_get_radius_y ::
        JSRef SVGFEMorphologyElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.radiusY Mozilla SVGFEMorphologyElement.radiusY documentation> 
svgfeMorphologyElementGetRadiusY ::
                                 (IsSVGFEMorphologyElement self) =>
                                   self -> IO (Maybe SVGAnimatedNumber)
svgfeMorphologyElementGetRadiusY self
  = (ghcjs_dom_svgfe_morphology_element_get_radius_y
       (unSVGFEMorphologyElement (toSVGFEMorphologyElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGFEMorphologyElement (
  ) where
#endif
