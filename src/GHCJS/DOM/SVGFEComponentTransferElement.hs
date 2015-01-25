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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_component_transfer_element_get_in1 ::
        JSRef SVGFEComponentTransferElement -> IO (JSRef SVGAnimatedString)
 
svgfeComponentTransferElementGetIn1 ::
                                    (IsSVGFEComponentTransferElement self) =>
                                      self -> IO (Maybe SVGAnimatedString)
svgfeComponentTransferElementGetIn1 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_component_transfer_element_get_in1
         (unSVGFEComponentTransferElement
            (toSVGFEComponentTransferElement self)))
#else
module GHCJS.DOM.SVGFEComponentTransferElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFEComponentTransferElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFEComponentTransferElement
#endif
