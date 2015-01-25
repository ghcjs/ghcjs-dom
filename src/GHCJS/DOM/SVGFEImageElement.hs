{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEImageElement
       (ghcjs_dom_svgfe_image_element_get_preserve_aspect_ratio,
        svgfeImageElementGetPreserveAspectRatio, SVGFEImageElement,
        IsSVGFEImageElement, castToSVGFEImageElement,
        gTypeSVGFEImageElement, toSVGFEImageElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"preserveAspectRatio\"]"
        ghcjs_dom_svgfe_image_element_get_preserve_aspect_ratio ::
        JSRef SVGFEImageElement ->
          IO (JSRef SVGAnimatedPreserveAspectRatio)
 
svgfeImageElementGetPreserveAspectRatio ::
                                        (IsSVGFEImageElement self) =>
                                          self -> IO (Maybe SVGAnimatedPreserveAspectRatio)
svgfeImageElementGetPreserveAspectRatio self
  = fmap SVGAnimatedPreserveAspectRatio . maybeJSNull <$>
      (ghcjs_dom_svgfe_image_element_get_preserve_aspect_ratio
         (unSVGFEImageElement (toSVGFEImageElement self)))
#else
module GHCJS.DOM.SVGFEImageElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFEImageElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFEImageElement
#endif
