{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEBlendElement
       (cSVG_FEBLEND_MODE_UNKNOWN, cSVG_FEBLEND_MODE_NORMAL,
        cSVG_FEBLEND_MODE_MULTIPLY, cSVG_FEBLEND_MODE_SCREEN,
        cSVG_FEBLEND_MODE_DARKEN, cSVG_FEBLEND_MODE_LIGHTEN,
        ghcjs_dom_svgfe_blend_element_get_in1, svgfeBlendElementGetIn1,
        ghcjs_dom_svgfe_blend_element_get_in2, svgfeBlendElementGetIn2,
        ghcjs_dom_svgfe_blend_element_get_mode, svgfeBlendElementGetMode,
        SVGFEBlendElement, IsSVGFEBlendElement, castToSVGFEBlendElement,
        gTypeSVGFEBlendElement, toSVGFEBlendElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

cSVG_FEBLEND_MODE_UNKNOWN = 0
cSVG_FEBLEND_MODE_NORMAL = 1
cSVG_FEBLEND_MODE_MULTIPLY = 2
cSVG_FEBLEND_MODE_SCREEN = 3
cSVG_FEBLEND_MODE_DARKEN = 4
cSVG_FEBLEND_MODE_LIGHTEN = 5
 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_blend_element_get_in1 ::
        JSRef SVGFEBlendElement -> IO (JSRef SVGAnimatedString)
 
svgfeBlendElementGetIn1 ::
                        (IsSVGFEBlendElement self) => self -> IO (Maybe SVGAnimatedString)
svgfeBlendElementGetIn1 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_blend_element_get_in1
         (unSVGFEBlendElement (toSVGFEBlendElement self)))
 
foreign import javascript unsafe "$1[\"in2\"]"
        ghcjs_dom_svgfe_blend_element_get_in2 ::
        JSRef SVGFEBlendElement -> IO (JSRef SVGAnimatedString)
 
svgfeBlendElementGetIn2 ::
                        (IsSVGFEBlendElement self) => self -> IO (Maybe SVGAnimatedString)
svgfeBlendElementGetIn2 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_blend_element_get_in2
         (unSVGFEBlendElement (toSVGFEBlendElement self)))
 
foreign import javascript unsafe "$1[\"mode\"]"
        ghcjs_dom_svgfe_blend_element_get_mode ::
        JSRef SVGFEBlendElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgfeBlendElementGetMode ::
                         (IsSVGFEBlendElement self) =>
                           self -> IO (Maybe SVGAnimatedEnumeration)
svgfeBlendElementGetMode self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svgfe_blend_element_get_mode
         (unSVGFEBlendElement (toSVGFEBlendElement self)))
#else
module GHCJS.DOM.SVGFEBlendElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFEBlendElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFEBlendElement
#endif
