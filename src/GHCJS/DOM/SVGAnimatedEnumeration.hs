{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedEnumeration
       (ghcjs_dom_svg_animated_enumeration_set_base_val,
        svgAnimatedEnumerationSetBaseVal,
        ghcjs_dom_svg_animated_enumeration_get_base_val,
        svgAnimatedEnumerationGetBaseVal,
        ghcjs_dom_svg_animated_enumeration_get_anim_val,
        svgAnimatedEnumerationGetAnimVal, SVGAnimatedEnumeration,
        IsSVGAnimatedEnumeration, castToSVGAnimatedEnumeration,
        gTypeSVGAnimatedEnumeration, toSVGAnimatedEnumeration)
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
        ghcjs_dom_svg_animated_enumeration_set_base_val ::
        JSRef SVGAnimatedEnumeration -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration.baseVal Mozilla SVGAnimatedEnumeration.baseVal documentation> 
svgAnimatedEnumerationSetBaseVal ::
                                 (IsSVGAnimatedEnumeration self) => self -> Word -> IO ()
svgAnimatedEnumerationSetBaseVal self val
  = ghcjs_dom_svg_animated_enumeration_set_base_val
      (unSVGAnimatedEnumeration (toSVGAnimatedEnumeration self))
      val
 
foreign import javascript unsafe "$1[\"baseVal\"]"
        ghcjs_dom_svg_animated_enumeration_get_base_val ::
        JSRef SVGAnimatedEnumeration -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration.baseVal Mozilla SVGAnimatedEnumeration.baseVal documentation> 
svgAnimatedEnumerationGetBaseVal ::
                                 (IsSVGAnimatedEnumeration self) => self -> IO Word
svgAnimatedEnumerationGetBaseVal self
  = ghcjs_dom_svg_animated_enumeration_get_base_val
      (unSVGAnimatedEnumeration (toSVGAnimatedEnumeration self))
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_enumeration_get_anim_val ::
        JSRef SVGAnimatedEnumeration -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration.animVal Mozilla SVGAnimatedEnumeration.animVal documentation> 
svgAnimatedEnumerationGetAnimVal ::
                                 (IsSVGAnimatedEnumeration self) => self -> IO Word
svgAnimatedEnumerationGetAnimVal self
  = ghcjs_dom_svg_animated_enumeration_get_anim_val
      (unSVGAnimatedEnumeration (toSVGAnimatedEnumeration self))
#else
module GHCJS.DOM.SVGAnimatedEnumeration (
  ) where
#endif
