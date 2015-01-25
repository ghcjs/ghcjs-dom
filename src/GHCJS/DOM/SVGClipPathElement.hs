{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGClipPathElement
       (ghcjs_dom_svg_clip_path_element_get_clip_path_units,
        svgClipPathElementGetClipPathUnits, SVGClipPathElement,
        IsSVGClipPathElement, castToSVGClipPathElement,
        gTypeSVGClipPathElement, toSVGClipPathElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"clipPathUnits\"]"
        ghcjs_dom_svg_clip_path_element_get_clip_path_units ::
        JSRef SVGClipPathElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgClipPathElementGetClipPathUnits ::
                                   (IsSVGClipPathElement self) =>
                                     self -> IO (Maybe SVGAnimatedEnumeration)
svgClipPathElementGetClipPathUnits self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svg_clip_path_element_get_clip_path_units
         (unSVGClipPathElement (toSVGClipPathElement self)))
#else
module GHCJS.DOM.SVGClipPathElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGClipPathElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGClipPathElement
#endif
