{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedNumberList
       (ghcjs_dom_svg_animated_number_list_get_base_val,
        svgAnimatedNumberListGetBaseVal,
        ghcjs_dom_svg_animated_number_list_get_anim_val,
        svgAnimatedNumberListGetAnimVal, SVGAnimatedNumberList,
        IsSVGAnimatedNumberList, castToSVGAnimatedNumberList,
        gTypeSVGAnimatedNumberList, toSVGAnimatedNumberList)
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
        ghcjs_dom_svg_animated_number_list_get_base_val ::
        JSRef SVGAnimatedNumberList -> IO (JSRef SVGNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList.baseVal Mozilla SVGAnimatedNumberList.baseVal documentation> 
svgAnimatedNumberListGetBaseVal ::
                                (IsSVGAnimatedNumberList self) => self -> IO (Maybe SVGNumberList)
svgAnimatedNumberListGetBaseVal self
  = (ghcjs_dom_svg_animated_number_list_get_base_val
       (unSVGAnimatedNumberList (toSVGAnimatedNumberList self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_number_list_get_anim_val ::
        JSRef SVGAnimatedNumberList -> IO (JSRef SVGNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList.animVal Mozilla SVGAnimatedNumberList.animVal documentation> 
svgAnimatedNumberListGetAnimVal ::
                                (IsSVGAnimatedNumberList self) => self -> IO (Maybe SVGNumberList)
svgAnimatedNumberListGetAnimVal self
  = (ghcjs_dom_svg_animated_number_list_get_anim_val
       (unSVGAnimatedNumberList (toSVGAnimatedNumberList self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGAnimatedNumberList (
  ) where
#endif
