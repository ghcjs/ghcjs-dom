{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEImageElement
       (ghcjs_dom_svgfe_image_element_get_preserve_aspect_ratio,
        svgfeImageElementGetPreserveAspectRatio, SVGFEImageElement,
        IsSVGFEImageElement, castToSVGFEImageElement,
        gTypeSVGFEImageElement, toSVGFEImageElement)
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

 
foreign import javascript unsafe "$1[\"preserveAspectRatio\"]"
        ghcjs_dom_svgfe_image_element_get_preserve_aspect_ratio ::
        JSRef SVGFEImageElement ->
          IO (JSRef SVGAnimatedPreserveAspectRatio)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEImageElement.preserveAspectRatio Mozilla SVGFEImageElement.preserveAspectRatio documentation> 
svgfeImageElementGetPreserveAspectRatio ::
                                        (IsSVGFEImageElement self) =>
                                          self -> IO (Maybe SVGAnimatedPreserveAspectRatio)
svgfeImageElementGetPreserveAspectRatio self
  = (ghcjs_dom_svgfe_image_element_get_preserve_aspect_ratio
       (unSVGFEImageElement (toSVGFEImageElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGFEImageElement (
  ) where
#endif
