{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGURIReference
       (ghcjs_dom_svguri_reference_get_href, svguriReferenceGetHref,
        SVGURIReference, IsSVGURIReference, castToSVGURIReference,
        gTypeSVGURIReference, toSVGURIReference)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_svguri_reference_get_href ::
        JSRef SVGURIReference -> IO (JSRef SVGAnimatedString)
 
svguriReferenceGetHref ::
                       (IsSVGURIReference self) => self -> IO (Maybe SVGAnimatedString)
svguriReferenceGetHref self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svguri_reference_get_href
         (unSVGURIReference (toSVGURIReference self)))
#else
module GHCJS.DOM.SVGURIReference (
  module Graphics.UI.Gtk.WebKit.DOM.SVGURIReference
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGURIReference
#endif
