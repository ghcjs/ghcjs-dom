{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGViewElement
       (ghcjs_dom_svg_view_element_get_view_target,
        svgViewElementGetViewTarget, SVGViewElement, IsSVGViewElement,
        castToSVGViewElement, gTypeSVGViewElement, toSVGViewElement)
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

 
foreign import javascript unsafe "$1[\"viewTarget\"]"
        ghcjs_dom_svg_view_element_get_view_target ::
        JSRef SVGViewElement -> IO (JSRef SVGStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewElement.viewTarget Mozilla SVGViewElement.viewTarget documentation> 
svgViewElementGetViewTarget ::
                            (IsSVGViewElement self) => self -> IO (Maybe SVGStringList)
svgViewElementGetViewTarget self
  = (ghcjs_dom_svg_view_element_get_view_target
       (unSVGViewElement (toSVGViewElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGViewElement (
  ) where
#endif
