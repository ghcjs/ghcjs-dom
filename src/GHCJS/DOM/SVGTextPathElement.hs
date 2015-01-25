{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGTextPathElement
       (cTEXTPATH_METHODTYPE_UNKNOWN, cTEXTPATH_METHODTYPE_ALIGN,
        cTEXTPATH_METHODTYPE_STRETCH, cTEXTPATH_SPACINGTYPE_UNKNOWN,
        cTEXTPATH_SPACINGTYPE_AUTO, cTEXTPATH_SPACINGTYPE_EXACT,
        ghcjs_dom_svg_text_path_element_get_start_offset,
        svgTextPathElementGetStartOffset,
        ghcjs_dom_svg_text_path_element_get_method,
        svgTextPathElementGetMethod,
        ghcjs_dom_svg_text_path_element_get_spacing,
        svgTextPathElementGetSpacing, SVGTextPathElement,
        IsSVGTextPathElement, castToSVGTextPathElement,
        gTypeSVGTextPathElement, toSVGTextPathElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

cTEXTPATH_METHODTYPE_UNKNOWN = 0
cTEXTPATH_METHODTYPE_ALIGN = 1
cTEXTPATH_METHODTYPE_STRETCH = 2
cTEXTPATH_SPACINGTYPE_UNKNOWN = 0
cTEXTPATH_SPACINGTYPE_AUTO = 1
cTEXTPATH_SPACINGTYPE_EXACT = 2
 
foreign import javascript unsafe "$1[\"startOffset\"]"
        ghcjs_dom_svg_text_path_element_get_start_offset ::
        JSRef SVGTextPathElement -> IO (JSRef SVGAnimatedLength)
 
svgTextPathElementGetStartOffset ::
                                 (IsSVGTextPathElement self) => self -> IO (Maybe SVGAnimatedLength)
svgTextPathElementGetStartOffset self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_text_path_element_get_start_offset
         (unSVGTextPathElement (toSVGTextPathElement self)))
 
foreign import javascript unsafe "$1[\"method\"]"
        ghcjs_dom_svg_text_path_element_get_method ::
        JSRef SVGTextPathElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgTextPathElementGetMethod ::
                            (IsSVGTextPathElement self) =>
                              self -> IO (Maybe SVGAnimatedEnumeration)
svgTextPathElementGetMethod self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svg_text_path_element_get_method
         (unSVGTextPathElement (toSVGTextPathElement self)))
 
foreign import javascript unsafe "$1[\"spacing\"]"
        ghcjs_dom_svg_text_path_element_get_spacing ::
        JSRef SVGTextPathElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgTextPathElementGetSpacing ::
                             (IsSVGTextPathElement self) =>
                               self -> IO (Maybe SVGAnimatedEnumeration)
svgTextPathElementGetSpacing self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svg_text_path_element_get_spacing
         (unSVGTextPathElement (toSVGTextPathElement self)))
#else
module GHCJS.DOM.SVGTextPathElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGTextPathElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGTextPathElement
#endif
