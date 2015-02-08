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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

cSVG_ZOOMANDPAN_UNKNOWN = 0
cSVG_ZOOMANDPAN_DISABLE = 1
cSVG_ZOOMANDPAN_MAGNIFY = 2
 
foreign import javascript unsafe "$1[\"zoomAndPan\"] = $2;"
        ghcjs_dom_svg_zoom_and_pan_set_zoom_and_pan ::
        JSRef SVGZoomAndPan -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomAndPan.zoomAndPan Mozilla SVGZoomAndPan.zoomAndPan documentation> 
svgZoomAndPanSetZoomAndPan ::
                           (MonadIO m, IsSVGZoomAndPan self) => self -> Word -> m ()
svgZoomAndPanSetZoomAndPan self val
  = liftIO
      (ghcjs_dom_svg_zoom_and_pan_set_zoom_and_pan
         (unSVGZoomAndPan (toSVGZoomAndPan self))
         val)
 
foreign import javascript unsafe "$1[\"zoomAndPan\"]"
        ghcjs_dom_svg_zoom_and_pan_get_zoom_and_pan ::
        JSRef SVGZoomAndPan -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomAndPan.zoomAndPan Mozilla SVGZoomAndPan.zoomAndPan documentation> 
svgZoomAndPanGetZoomAndPan ::
                           (MonadIO m, IsSVGZoomAndPan self) => self -> m Word
svgZoomAndPanGetZoomAndPan self
  = liftIO
      (ghcjs_dom_svg_zoom_and_pan_get_zoom_and_pan
         (unSVGZoomAndPan (toSVGZoomAndPan self)))
#else
module GHCJS.DOM.SVGZoomAndPan (
  ) where
#endif
