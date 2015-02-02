{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEComponentTransferElement
       (ghcjs_dom_svgfe_component_transfer_element_get_in1,
        svgfeComponentTransferElementGetIn1, SVGFEComponentTransferElement,
        IsSVGFEComponentTransferElement,
        castToSVGFEComponentTransferElement,
        gTypeSVGFEComponentTransferElement,
        toSVGFEComponentTransferElement)
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
        ghcjs_dom_svgfe_component_transfer_element_get_in1 ::
        JSRef SVGFEComponentTransferElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEComponentTransferElement.in1 Mozilla SVGFEComponentTransferElement.in1 documentation> 
svgfeComponentTransferElementGetIn1 ::
                                    (IsSVGFEComponentTransferElement self) =>
                                      self -> IO (Maybe SVGAnimatedString)
svgfeComponentTransferElementGetIn1 self
  = (ghcjs_dom_svgfe_component_transfer_element_get_in1
       (unSVGFEComponentTransferElement
          (toSVGFEComponentTransferElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGFEComponentTransferElement (
  ) where
#endif
