{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGExternalResourcesRequired
       (ghcjs_dom_svg_external_resources_required_get_external_resources_required,
        svgExternalResourcesRequiredGetExternalResourcesRequired,
        SVGExternalResourcesRequired, IsSVGExternalResourcesRequired,
        castToSVGExternalResourcesRequired,
        gTypeSVGExternalResourcesRequired, toSVGExternalResourcesRequired)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe
        "$1[\"externalResourcesRequired\"]"
        ghcjs_dom_svg_external_resources_required_get_external_resources_required
        ::
        JSRef SVGExternalResourcesRequired -> IO (JSRef SVGAnimatedBoolean)
 
svgExternalResourcesRequiredGetExternalResourcesRequired ::
                                                         (IsSVGExternalResourcesRequired self) =>
                                                           self -> IO (Maybe SVGAnimatedBoolean)
svgExternalResourcesRequiredGetExternalResourcesRequired self
  = fmap SVGAnimatedBoolean . maybeJSNull <$>
      (ghcjs_dom_svg_external_resources_required_get_external_resources_required
         (unSVGExternalResourcesRequired
            (toSVGExternalResourcesRequired self)))
#else
module GHCJS.DOM.SVGExternalResourcesRequired (
  module Graphics.UI.Gtk.WebKit.DOM.SVGExternalResourcesRequired
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGExternalResourcesRequired
#endif
