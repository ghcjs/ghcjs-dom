{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEOffsetElement
       (ghcjs_dom_svgfe_offset_element_get_in1, svgfeOffsetElementGetIn1,
        ghcjs_dom_svgfe_offset_element_get_dx, svgfeOffsetElementGetDx,
        ghcjs_dom_svgfe_offset_element_get_dy, svgfeOffsetElementGetDy,
        SVGFEOffsetElement, IsSVGFEOffsetElement, castToSVGFEOffsetElement,
        gTypeSVGFEOffsetElement, toSVGFEOffsetElement)
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

 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_offset_element_get_in1 ::
        JSRef SVGFEOffsetElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement.in1 Mozilla SVGFEOffsetElement.in1 documentation> 
svgfeOffsetElementGetIn1 ::
                         (IsSVGFEOffsetElement self) => self -> IO (Maybe SVGAnimatedString)
svgfeOffsetElementGetIn1 self
  = (ghcjs_dom_svgfe_offset_element_get_in1
       (unSVGFEOffsetElement (toSVGFEOffsetElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"dx\"]"
        ghcjs_dom_svgfe_offset_element_get_dx ::
        JSRef SVGFEOffsetElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement.dx Mozilla SVGFEOffsetElement.dx documentation> 
svgfeOffsetElementGetDx ::
                        (IsSVGFEOffsetElement self) => self -> IO (Maybe SVGAnimatedNumber)
svgfeOffsetElementGetDx self
  = (ghcjs_dom_svgfe_offset_element_get_dx
       (unSVGFEOffsetElement (toSVGFEOffsetElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"dy\"]"
        ghcjs_dom_svgfe_offset_element_get_dy ::
        JSRef SVGFEOffsetElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement.dy Mozilla SVGFEOffsetElement.dy documentation> 
svgfeOffsetElementGetDy ::
                        (IsSVGFEOffsetElement self) => self -> IO (Maybe SVGAnimatedNumber)
svgfeOffsetElementGetDy self
  = (ghcjs_dom_svgfe_offset_element_get_dy
       (unSVGFEOffsetElement (toSVGFEOffsetElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGFEOffsetElement (
  ) where
#endif
