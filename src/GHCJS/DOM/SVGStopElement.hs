{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGStopElement
       (ghcjs_dom_svg_stop_element_get_offset, svgStopElementGetOffset,
        SVGStopElement, IsSVGStopElement, castToSVGStopElement,
        gTypeSVGStopElement, toSVGStopElement)
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

 
foreign import javascript unsafe "$1[\"offset\"]"
        ghcjs_dom_svg_stop_element_get_offset ::
        JSRef SVGStopElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStopElement.offset Mozilla SVGStopElement.offset documentation> 
svgStopElementGetOffset ::
                        (IsSVGStopElement self) => self -> IO (Maybe SVGAnimatedNumber)
svgStopElementGetOffset self
  = (ghcjs_dom_svg_stop_element_get_offset
       (unSVGStopElement (toSVGStopElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGStopElement (
  ) where
#endif
