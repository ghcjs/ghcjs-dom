{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAElement
       (ghcjs_dom_svga_element_get_target, svgaElementGetTarget,
        SVGAElement, IsSVGAElement, castToSVGAElement, gTypeSVGAElement,
        toSVGAElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_svga_element_get_target ::
        JSRef SVGAElement -> IO (JSRef SVGAnimatedString)
 
svgaElementGetTarget ::
                     (IsSVGAElement self) => self -> IO (Maybe SVGAnimatedString)
svgaElementGetTarget self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svga_element_get_target
         (unSVGAElement (toSVGAElement self)))
#else
module GHCJS.DOM.SVGAElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAElement
#endif
