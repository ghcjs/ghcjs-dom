{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPatternElement
       (ghcjs_dom_svg_pattern_element_get_pattern_units,
        svgPatternElementGetPatternUnits,
        ghcjs_dom_svg_pattern_element_get_pattern_content_units,
        svgPatternElementGetPatternContentUnits,
        ghcjs_dom_svg_pattern_element_get_pattern_transform,
        svgPatternElementGetPatternTransform,
        ghcjs_dom_svg_pattern_element_get_x, svgPatternElementGetX,
        ghcjs_dom_svg_pattern_element_get_y, svgPatternElementGetY,
        ghcjs_dom_svg_pattern_element_get_width, svgPatternElementGetWidth,
        ghcjs_dom_svg_pattern_element_get_height,
        svgPatternElementGetHeight, SVGPatternElement, IsSVGPatternElement,
        castToSVGPatternElement, gTypeSVGPatternElement,
        toSVGPatternElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"patternUnits\"]"
        ghcjs_dom_svg_pattern_element_get_pattern_units ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgPatternElementGetPatternUnits ::
                                 (IsSVGPatternElement self) =>
                                   self -> IO (Maybe SVGAnimatedEnumeration)
svgPatternElementGetPatternUnits self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svg_pattern_element_get_pattern_units
         (unSVGPatternElement (toSVGPatternElement self)))
 
foreign import javascript unsafe "$1[\"patternContentUnits\"]"
        ghcjs_dom_svg_pattern_element_get_pattern_content_units ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgPatternElementGetPatternContentUnits ::
                                        (IsSVGPatternElement self) =>
                                          self -> IO (Maybe SVGAnimatedEnumeration)
svgPatternElementGetPatternContentUnits self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svg_pattern_element_get_pattern_content_units
         (unSVGPatternElement (toSVGPatternElement self)))
 
foreign import javascript unsafe "$1[\"patternTransform\"]"
        ghcjs_dom_svg_pattern_element_get_pattern_transform ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedTransformList)
 
svgPatternElementGetPatternTransform ::
                                     (IsSVGPatternElement self) =>
                                       self -> IO (Maybe SVGAnimatedTransformList)
svgPatternElementGetPatternTransform self
  = fmap SVGAnimatedTransformList . maybeJSNull <$>
      (ghcjs_dom_svg_pattern_element_get_pattern_transform
         (unSVGPatternElement (toSVGPatternElement self)))
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_pattern_element_get_x ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedLength)
 
svgPatternElementGetX ::
                      (IsSVGPatternElement self) => self -> IO (Maybe SVGAnimatedLength)
svgPatternElementGetX self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_pattern_element_get_x
         (unSVGPatternElement (toSVGPatternElement self)))
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_pattern_element_get_y ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedLength)
 
svgPatternElementGetY ::
                      (IsSVGPatternElement self) => self -> IO (Maybe SVGAnimatedLength)
svgPatternElementGetY self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_pattern_element_get_y
         (unSVGPatternElement (toSVGPatternElement self)))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_pattern_element_get_width ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedLength)
 
svgPatternElementGetWidth ::
                          (IsSVGPatternElement self) => self -> IO (Maybe SVGAnimatedLength)
svgPatternElementGetWidth self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_pattern_element_get_width
         (unSVGPatternElement (toSVGPatternElement self)))
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_pattern_element_get_height ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedLength)
 
svgPatternElementGetHeight ::
                           (IsSVGPatternElement self) => self -> IO (Maybe SVGAnimatedLength)
svgPatternElementGetHeight self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_pattern_element_get_height
         (unSVGPatternElement (toSVGPatternElement self)))
#else
module GHCJS.DOM.SVGPatternElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPatternElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPatternElement
#endif
