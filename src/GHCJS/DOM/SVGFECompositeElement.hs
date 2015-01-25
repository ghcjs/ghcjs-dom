{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFECompositeElement
       (cSVG_FECOMPOSITE_OPERATOR_UNKNOWN, cSVG_FECOMPOSITE_OPERATOR_OVER,
        cSVG_FECOMPOSITE_OPERATOR_IN, cSVG_FECOMPOSITE_OPERATOR_OUT,
        cSVG_FECOMPOSITE_OPERATOR_ATOP, cSVG_FECOMPOSITE_OPERATOR_XOR,
        cSVG_FECOMPOSITE_OPERATOR_ARITHMETIC,
        ghcjs_dom_svgfe_composite_element_get_in1,
        svgfeCompositeElementGetIn1,
        ghcjs_dom_svgfe_composite_element_get_in2,
        svgfeCompositeElementGetIn2,
        ghcjs_dom_svgfe_composite_element_get_operator,
        svgfeCompositeElementGetOperator,
        ghcjs_dom_svgfe_composite_element_get_k1,
        svgfeCompositeElementGetK1,
        ghcjs_dom_svgfe_composite_element_get_k2,
        svgfeCompositeElementGetK2,
        ghcjs_dom_svgfe_composite_element_get_k3,
        svgfeCompositeElementGetK3,
        ghcjs_dom_svgfe_composite_element_get_k4,
        svgfeCompositeElementGetK4, SVGFECompositeElement,
        IsSVGFECompositeElement, castToSVGFECompositeElement,
        gTypeSVGFECompositeElement, toSVGFECompositeElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

cSVG_FECOMPOSITE_OPERATOR_UNKNOWN = 0
cSVG_FECOMPOSITE_OPERATOR_OVER = 1
cSVG_FECOMPOSITE_OPERATOR_IN = 2
cSVG_FECOMPOSITE_OPERATOR_OUT = 3
cSVG_FECOMPOSITE_OPERATOR_ATOP = 4
cSVG_FECOMPOSITE_OPERATOR_XOR = 5
cSVG_FECOMPOSITE_OPERATOR_ARITHMETIC = 6
 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_composite_element_get_in1 ::
        JSRef SVGFECompositeElement -> IO (JSRef SVGAnimatedString)
 
svgfeCompositeElementGetIn1 ::
                            (IsSVGFECompositeElement self) =>
                              self -> IO (Maybe SVGAnimatedString)
svgfeCompositeElementGetIn1 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_composite_element_get_in1
         (unSVGFECompositeElement (toSVGFECompositeElement self)))
 
foreign import javascript unsafe "$1[\"in2\"]"
        ghcjs_dom_svgfe_composite_element_get_in2 ::
        JSRef SVGFECompositeElement -> IO (JSRef SVGAnimatedString)
 
svgfeCompositeElementGetIn2 ::
                            (IsSVGFECompositeElement self) =>
                              self -> IO (Maybe SVGAnimatedString)
svgfeCompositeElementGetIn2 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_composite_element_get_in2
         (unSVGFECompositeElement (toSVGFECompositeElement self)))
 
foreign import javascript unsafe "$1[\"operator\"]"
        ghcjs_dom_svgfe_composite_element_get_operator ::
        JSRef SVGFECompositeElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgfeCompositeElementGetOperator ::
                                 (IsSVGFECompositeElement self) =>
                                   self -> IO (Maybe SVGAnimatedEnumeration)
svgfeCompositeElementGetOperator self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svgfe_composite_element_get_operator
         (unSVGFECompositeElement (toSVGFECompositeElement self)))
 
foreign import javascript unsafe "$1[\"k1\"]"
        ghcjs_dom_svgfe_composite_element_get_k1 ::
        JSRef SVGFECompositeElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeCompositeElementGetK1 ::
                           (IsSVGFECompositeElement self) =>
                             self -> IO (Maybe SVGAnimatedNumber)
svgfeCompositeElementGetK1 self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_composite_element_get_k1
         (unSVGFECompositeElement (toSVGFECompositeElement self)))
 
foreign import javascript unsafe "$1[\"k2\"]"
        ghcjs_dom_svgfe_composite_element_get_k2 ::
        JSRef SVGFECompositeElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeCompositeElementGetK2 ::
                           (IsSVGFECompositeElement self) =>
                             self -> IO (Maybe SVGAnimatedNumber)
svgfeCompositeElementGetK2 self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_composite_element_get_k2
         (unSVGFECompositeElement (toSVGFECompositeElement self)))
 
foreign import javascript unsafe "$1[\"k3\"]"
        ghcjs_dom_svgfe_composite_element_get_k3 ::
        JSRef SVGFECompositeElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeCompositeElementGetK3 ::
                           (IsSVGFECompositeElement self) =>
                             self -> IO (Maybe SVGAnimatedNumber)
svgfeCompositeElementGetK3 self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_composite_element_get_k3
         (unSVGFECompositeElement (toSVGFECompositeElement self)))
 
foreign import javascript unsafe "$1[\"k4\"]"
        ghcjs_dom_svgfe_composite_element_get_k4 ::
        JSRef SVGFECompositeElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeCompositeElementGetK4 ::
                           (IsSVGFECompositeElement self) =>
                             self -> IO (Maybe SVGAnimatedNumber)
svgfeCompositeElementGetK4 self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_composite_element_get_k4
         (unSVGFECompositeElement (toSVGFECompositeElement self)))
#else
module GHCJS.DOM.SVGFECompositeElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFECompositeElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFECompositeElement
#endif
