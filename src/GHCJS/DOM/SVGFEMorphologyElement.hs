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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"setRadius\"]($2, $3)"
        ghcjs_dom_svgfe_morphology_element_set_radius ::
        JSRef SVGFEMorphologyElement -> Float -> Float -> IO ()
 
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
 
svgfeMorphologyElementGetIn1 ::
                             (IsSVGFEMorphologyElement self) =>
                               self -> IO (Maybe SVGAnimatedString)
svgfeMorphologyElementGetIn1 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_morphology_element_get_in1
         (unSVGFEMorphologyElement (toSVGFEMorphologyElement self)))
 
foreign import javascript unsafe "$1[\"operator\"]"
        ghcjs_dom_svgfe_morphology_element_get_operator ::
        JSRef SVGFEMorphologyElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgfeMorphologyElementGetOperator ::
                                  (IsSVGFEMorphologyElement self) =>
                                    self -> IO (Maybe SVGAnimatedEnumeration)
svgfeMorphologyElementGetOperator self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svgfe_morphology_element_get_operator
         (unSVGFEMorphologyElement (toSVGFEMorphologyElement self)))
 
foreign import javascript unsafe "$1[\"radiusX\"]"
        ghcjs_dom_svgfe_morphology_element_get_radius_x ::
        JSRef SVGFEMorphologyElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeMorphologyElementGetRadiusX ::
                                 (IsSVGFEMorphologyElement self) =>
                                   self -> IO (Maybe SVGAnimatedNumber)
svgfeMorphologyElementGetRadiusX self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_morphology_element_get_radius_x
         (unSVGFEMorphologyElement (toSVGFEMorphologyElement self)))
 
foreign import javascript unsafe "$1[\"radiusY\"]"
        ghcjs_dom_svgfe_morphology_element_get_radius_y ::
        JSRef SVGFEMorphologyElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeMorphologyElementGetRadiusY ::
                                 (IsSVGFEMorphologyElement self) =>
                                   self -> IO (Maybe SVGAnimatedNumber)
svgfeMorphologyElementGetRadiusY self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_morphology_element_get_radius_y
         (unSVGFEMorphologyElement (toSVGFEMorphologyElement self)))
#else
module GHCJS.DOM.SVGFEMorphologyElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFEMorphologyElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFEMorphologyElement
#endif
