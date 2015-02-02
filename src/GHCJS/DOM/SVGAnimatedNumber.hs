{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedNumber
       (ghcjs_dom_svg_animated_number_set_base_val,
        svgAnimatedNumberSetBaseVal,
        ghcjs_dom_svg_animated_number_get_base_val,
        svgAnimatedNumberGetBaseVal,
        ghcjs_dom_svg_animated_number_get_anim_val,
        svgAnimatedNumberGetAnimVal, SVGAnimatedNumber,
        IsSVGAnimatedNumber, castToSVGAnimatedNumber,
        gTypeSVGAnimatedNumber, toSVGAnimatedNumber)
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

 
foreign import javascript unsafe "$1[\"baseVal\"] = $2;"
        ghcjs_dom_svg_animated_number_set_base_val ::
        JSRef SVGAnimatedNumber -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber.baseVal Mozilla SVGAnimatedNumber.baseVal documentation> 
svgAnimatedNumberSetBaseVal ::
                            (IsSVGAnimatedNumber self) => self -> Float -> IO ()
svgAnimatedNumberSetBaseVal self val
  = ghcjs_dom_svg_animated_number_set_base_val
      (unSVGAnimatedNumber (toSVGAnimatedNumber self))
      val
 
foreign import javascript unsafe "$1[\"baseVal\"]"
        ghcjs_dom_svg_animated_number_get_base_val ::
        JSRef SVGAnimatedNumber -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber.baseVal Mozilla SVGAnimatedNumber.baseVal documentation> 
svgAnimatedNumberGetBaseVal ::
                            (IsSVGAnimatedNumber self) => self -> IO Float
svgAnimatedNumberGetBaseVal self
  = ghcjs_dom_svg_animated_number_get_base_val
      (unSVGAnimatedNumber (toSVGAnimatedNumber self))
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_number_get_anim_val ::
        JSRef SVGAnimatedNumber -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber.animVal Mozilla SVGAnimatedNumber.animVal documentation> 
svgAnimatedNumberGetAnimVal ::
                            (IsSVGAnimatedNumber self) => self -> IO Float
svgAnimatedNumberGetAnimVal self
  = ghcjs_dom_svg_animated_number_get_anim_val
      (unSVGAnimatedNumber (toSVGAnimatedNumber self))
#else
module GHCJS.DOM.SVGAnimatedNumber (
  ) where
#endif
