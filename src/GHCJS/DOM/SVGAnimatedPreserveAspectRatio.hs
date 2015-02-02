{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedPreserveAspectRatio
       (ghcjs_dom_svg_animated_preserve_aspect_ratio_get_base_val,
        svgAnimatedPreserveAspectRatioGetBaseVal,
        ghcjs_dom_svg_animated_preserve_aspect_ratio_get_anim_val,
        svgAnimatedPreserveAspectRatioGetAnimVal,
        SVGAnimatedPreserveAspectRatio, IsSVGAnimatedPreserveAspectRatio,
        castToSVGAnimatedPreserveAspectRatio,
        gTypeSVGAnimatedPreserveAspectRatio,
        toSVGAnimatedPreserveAspectRatio)
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

 
foreign import javascript unsafe "$1[\"baseVal\"]"
        ghcjs_dom_svg_animated_preserve_aspect_ratio_get_base_val ::
        JSRef SVGAnimatedPreserveAspectRatio ->
          IO (JSRef SVGPreserveAspectRatio)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio.baseVal Mozilla SVGAnimatedPreserveAspectRatio.baseVal documentation> 
svgAnimatedPreserveAspectRatioGetBaseVal ::
                                         (IsSVGAnimatedPreserveAspectRatio self) =>
                                           self -> IO (Maybe SVGPreserveAspectRatio)
svgAnimatedPreserveAspectRatioGetBaseVal self
  = (ghcjs_dom_svg_animated_preserve_aspect_ratio_get_base_val
       (unSVGAnimatedPreserveAspectRatio
          (toSVGAnimatedPreserveAspectRatio self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_preserve_aspect_ratio_get_anim_val ::
        JSRef SVGAnimatedPreserveAspectRatio ->
          IO (JSRef SVGPreserveAspectRatio)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio.animVal Mozilla SVGAnimatedPreserveAspectRatio.animVal documentation> 
svgAnimatedPreserveAspectRatioGetAnimVal ::
                                         (IsSVGAnimatedPreserveAspectRatio self) =>
                                           self -> IO (Maybe SVGPreserveAspectRatio)
svgAnimatedPreserveAspectRatioGetAnimVal self
  = (ghcjs_dom_svg_animated_preserve_aspect_ratio_get_anim_val
       (unSVGAnimatedPreserveAspectRatio
          (toSVGAnimatedPreserveAspectRatio self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGAnimatedPreserveAspectRatio (
  ) where
#endif
