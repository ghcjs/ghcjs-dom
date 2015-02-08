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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

cTEXTPATH_METHODTYPE_UNKNOWN = 0
cTEXTPATH_METHODTYPE_ALIGN = 1
cTEXTPATH_METHODTYPE_STRETCH = 2
cTEXTPATH_SPACINGTYPE_UNKNOWN = 0
cTEXTPATH_SPACINGTYPE_AUTO = 1
cTEXTPATH_SPACINGTYPE_EXACT = 2
 
foreign import javascript unsafe "$1[\"startOffset\"]"
        ghcjs_dom_svg_text_path_element_get_start_offset ::
        JSRef SVGTextPathElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.startOffset Mozilla SVGTextPathElement.startOffset documentation> 
svgTextPathElementGetStartOffset ::
                                 (MonadIO m, IsSVGTextPathElement self) =>
                                   self -> m (Maybe SVGAnimatedLength)
svgTextPathElementGetStartOffset self
  = liftIO
      ((ghcjs_dom_svg_text_path_element_get_start_offset
          (unSVGTextPathElement (toSVGTextPathElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"method\"]"
        ghcjs_dom_svg_text_path_element_get_method ::
        JSRef SVGTextPathElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.method Mozilla SVGTextPathElement.method documentation> 
svgTextPathElementGetMethod ::
                            (MonadIO m, IsSVGTextPathElement self) =>
                              self -> m (Maybe SVGAnimatedEnumeration)
svgTextPathElementGetMethod self
  = liftIO
      ((ghcjs_dom_svg_text_path_element_get_method
          (unSVGTextPathElement (toSVGTextPathElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"spacing\"]"
        ghcjs_dom_svg_text_path_element_get_spacing ::
        JSRef SVGTextPathElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.spacing Mozilla SVGTextPathElement.spacing documentation> 
svgTextPathElementGetSpacing ::
                             (MonadIO m, IsSVGTextPathElement self) =>
                               self -> m (Maybe SVGAnimatedEnumeration)
svgTextPathElementGetSpacing self
  = liftIO
      ((ghcjs_dom_svg_text_path_element_get_spacing
          (unSVGTextPathElement (toSVGTextPathElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGTextPathElement (
  ) where
#endif
