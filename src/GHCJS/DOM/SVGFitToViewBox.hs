{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFitToViewBox
       (ghcjs_dom_svg_fit_to_view_box_get_view_box,
        svgFitToViewBoxGetViewBox,
        ghcjs_dom_svg_fit_to_view_box_get_preserve_aspect_ratio,
        svgFitToViewBoxGetPreserveAspectRatio, SVGFitToViewBox,
        IsSVGFitToViewBox, castToSVGFitToViewBox, gTypeSVGFitToViewBox,
        toSVGFitToViewBox)
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

 
foreign import javascript unsafe "$1[\"viewBox\"]"
        ghcjs_dom_svg_fit_to_view_box_get_view_box ::
        JSRef SVGFitToViewBox -> IO (JSRef SVGAnimatedRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.viewBox Mozilla SVGFitToViewBox.viewBox documentation> 
svgFitToViewBoxGetViewBox ::
                          (IsSVGFitToViewBox self) => self -> IO (Maybe SVGAnimatedRect)
svgFitToViewBoxGetViewBox self
  = (ghcjs_dom_svg_fit_to_view_box_get_view_box
       (unSVGFitToViewBox (toSVGFitToViewBox self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"preserveAspectRatio\"]"
        ghcjs_dom_svg_fit_to_view_box_get_preserve_aspect_ratio ::
        JSRef SVGFitToViewBox -> IO (JSRef SVGAnimatedPreserveAspectRatio)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.preserveAspectRatio Mozilla SVGFitToViewBox.preserveAspectRatio documentation> 
svgFitToViewBoxGetPreserveAspectRatio ::
                                      (IsSVGFitToViewBox self) =>
                                        self -> IO (Maybe SVGAnimatedPreserveAspectRatio)
svgFitToViewBoxGetPreserveAspectRatio self
  = (ghcjs_dom_svg_fit_to_view_box_get_preserve_aspect_ratio
       (unSVGFitToViewBox (toSVGFitToViewBox self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGFitToViewBox (
  ) where
#endif
