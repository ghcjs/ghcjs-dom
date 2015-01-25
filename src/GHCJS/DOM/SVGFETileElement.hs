{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFETileElement
       (ghcjs_dom_svgfe_tile_element_get_in1, svgfeTileElementGetIn1,
        SVGFETileElement, IsSVGFETileElement, castToSVGFETileElement,
        gTypeSVGFETileElement, toSVGFETileElement)
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
        ghcjs_dom_svgfe_tile_element_get_in1 ::
        JSRef SVGFETileElement -> IO (JSRef SVGAnimatedString)
 
svgfeTileElementGetIn1 ::
                       (IsSVGFETileElement self) => self -> IO (Maybe SVGAnimatedString)
svgfeTileElementGetIn1 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_tile_element_get_in1
         (unSVGFETileElement (toSVGFETileElement self)))
#else
module GHCJS.DOM.SVGFETileElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFETileElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFETileElement
#endif
