{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedInteger
       (ghcjs_dom_svg_animated_integer_set_base_val,
        svgAnimatedIntegerSetBaseVal,
        ghcjs_dom_svg_animated_integer_get_base_val,
        svgAnimatedIntegerGetBaseVal,
        ghcjs_dom_svg_animated_integer_get_anim_val,
        svgAnimatedIntegerGetAnimVal, SVGAnimatedInteger,
        IsSVGAnimatedInteger, castToSVGAnimatedInteger,
        gTypeSVGAnimatedInteger, toSVGAnimatedInteger)
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
        ghcjs_dom_svg_animated_integer_set_base_val ::
        JSRef SVGAnimatedInteger -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger.baseVal Mozilla SVGAnimatedInteger.baseVal documentation> 
svgAnimatedIntegerSetBaseVal ::
                             (IsSVGAnimatedInteger self) => self -> Int -> IO ()
svgAnimatedIntegerSetBaseVal self val
  = ghcjs_dom_svg_animated_integer_set_base_val
      (unSVGAnimatedInteger (toSVGAnimatedInteger self))
      val
 
foreign import javascript unsafe "$1[\"baseVal\"]"
        ghcjs_dom_svg_animated_integer_get_base_val ::
        JSRef SVGAnimatedInteger -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger.baseVal Mozilla SVGAnimatedInteger.baseVal documentation> 
svgAnimatedIntegerGetBaseVal ::
                             (IsSVGAnimatedInteger self) => self -> IO Int
svgAnimatedIntegerGetBaseVal self
  = ghcjs_dom_svg_animated_integer_get_base_val
      (unSVGAnimatedInteger (toSVGAnimatedInteger self))
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_integer_get_anim_val ::
        JSRef SVGAnimatedInteger -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger.animVal Mozilla SVGAnimatedInteger.animVal documentation> 
svgAnimatedIntegerGetAnimVal ::
                             (IsSVGAnimatedInteger self) => self -> IO Int
svgAnimatedIntegerGetAnimVal self
  = ghcjs_dom_svg_animated_integer_get_anim_val
      (unSVGAnimatedInteger (toSVGAnimatedInteger self))
#else
module GHCJS.DOM.SVGAnimatedInteger (
  ) where
#endif
