{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGZoomAndPan
       (cSVG_ZOOMANDPAN_UNKNOWN, cSVG_ZOOMANDPAN_DISABLE,
        cSVG_ZOOMANDPAN_MAGNIFY,
        ghcjs_dom_svg_zoom_and_pan_set_zoom_and_pan,
        svgZoomAndPanSetZoomAndPan,
        ghcjs_dom_svg_zoom_and_pan_get_zoom_and_pan,
        svgZoomAndPanGetZoomAndPan, SVGZoomAndPan, IsSVGZoomAndPan,
        castToSVGZoomAndPan, gTypeSVGZoomAndPan, toSVGZoomAndPan)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

cSVG_ZOOMANDPAN_UNKNOWN = 0
cSVG_ZOOMANDPAN_DISABLE = 1
cSVG_ZOOMANDPAN_MAGNIFY = 2
 
foreign import javascript unsafe "$1[\"zoomAndPan\"] = $2;"
        ghcjs_dom_svg_zoom_and_pan_set_zoom_and_pan ::
        JSRef SVGZoomAndPan -> Word -> IO ()
 
svgZoomAndPanSetZoomAndPan ::
                           (IsSVGZoomAndPan self) => self -> Word -> IO ()
svgZoomAndPanSetZoomAndPan self val
  = ghcjs_dom_svg_zoom_and_pan_set_zoom_and_pan
      (unSVGZoomAndPan (toSVGZoomAndPan self))
      val
 
foreign import javascript unsafe "$1[\"zoomAndPan\"]"
        ghcjs_dom_svg_zoom_and_pan_get_zoom_and_pan ::
        JSRef SVGZoomAndPan -> IO Word
 
svgZoomAndPanGetZoomAndPan ::
                           (IsSVGZoomAndPan self) => self -> IO Word
svgZoomAndPanGetZoomAndPan self
  = ghcjs_dom_svg_zoom_and_pan_get_zoom_and_pan
      (unSVGZoomAndPan (toSVGZoomAndPan self))
#else
module GHCJS.DOM.SVGZoomAndPan (
  module Graphics.UI.Gtk.WebKit.DOM.SVGZoomAndPan
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGZoomAndPan
#endif
