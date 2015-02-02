{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedLengthList
       (ghcjs_dom_svg_animated_length_list_get_base_val,
        svgAnimatedLengthListGetBaseVal,
        ghcjs_dom_svg_animated_length_list_get_anim_val,
        svgAnimatedLengthListGetAnimVal, SVGAnimatedLengthList,
        IsSVGAnimatedLengthList, castToSVGAnimatedLengthList,
        gTypeSVGAnimatedLengthList, toSVGAnimatedLengthList)
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
        ghcjs_dom_svg_animated_length_list_get_base_val ::
        JSRef SVGAnimatedLengthList -> IO (JSRef SVGLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList.baseVal Mozilla SVGAnimatedLengthList.baseVal documentation> 
svgAnimatedLengthListGetBaseVal ::
                                (IsSVGAnimatedLengthList self) => self -> IO (Maybe SVGLengthList)
svgAnimatedLengthListGetBaseVal self
  = (ghcjs_dom_svg_animated_length_list_get_base_val
       (unSVGAnimatedLengthList (toSVGAnimatedLengthList self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_length_list_get_anim_val ::
        JSRef SVGAnimatedLengthList -> IO (JSRef SVGLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList.animVal Mozilla SVGAnimatedLengthList.animVal documentation> 
svgAnimatedLengthListGetAnimVal ::
                                (IsSVGAnimatedLengthList self) => self -> IO (Maybe SVGLengthList)
svgAnimatedLengthListGetAnimVal self
  = (ghcjs_dom_svg_animated_length_list_get_anim_val
       (unSVGAnimatedLengthList (toSVGAnimatedLengthList self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGAnimatedLengthList (
  ) where
#endif
