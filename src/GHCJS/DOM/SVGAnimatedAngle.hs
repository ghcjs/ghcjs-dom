{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedAngle
       (ghcjs_dom_svg_animated_angle_get_base_val,
        svgAnimatedAngleGetBaseVal,
        ghcjs_dom_svg_animated_angle_get_anim_val,
        svgAnimatedAngleGetAnimVal, SVGAnimatedAngle, IsSVGAnimatedAngle,
        castToSVGAnimatedAngle, gTypeSVGAnimatedAngle, toSVGAnimatedAngle)
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
        ghcjs_dom_svg_animated_angle_get_base_val ::
        JSRef SVGAnimatedAngle -> IO (JSRef SVGAngle)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedAngle.baseVal Mozilla SVGAnimatedAngle.baseVal documentation> 
svgAnimatedAngleGetBaseVal ::
                           (IsSVGAnimatedAngle self) => self -> IO (Maybe SVGAngle)
svgAnimatedAngleGetBaseVal self
  = (ghcjs_dom_svg_animated_angle_get_base_val
       (unSVGAnimatedAngle (toSVGAnimatedAngle self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_angle_get_anim_val ::
        JSRef SVGAnimatedAngle -> IO (JSRef SVGAngle)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedAngle.animVal Mozilla SVGAnimatedAngle.animVal documentation> 
svgAnimatedAngleGetAnimVal ::
                           (IsSVGAnimatedAngle self) => self -> IO (Maybe SVGAngle)
svgAnimatedAngleGetAnimVal self
  = (ghcjs_dom_svg_animated_angle_get_anim_val
       (unSVGAnimatedAngle (toSVGAnimatedAngle self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGAnimatedAngle (
  ) where
#endif
