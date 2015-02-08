{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGViewSpec
       (ghcjs_dom_svg_view_spec_get_transform, svgViewSpecGetTransform,
        ghcjs_dom_svg_view_spec_get_view_target, svgViewSpecGetViewTarget,
        ghcjs_dom_svg_view_spec_get_view_box_string,
        svgViewSpecGetViewBoxString,
        ghcjs_dom_svg_view_spec_get_preserve_aspect_ratio_string,
        svgViewSpecGetPreserveAspectRatioString,
        ghcjs_dom_svg_view_spec_get_transform_string,
        svgViewSpecGetTransformString,
        ghcjs_dom_svg_view_spec_get_view_target_string,
        svgViewSpecGetViewTargetString,
        ghcjs_dom_svg_view_spec_set_zoom_and_pan, svgViewSpecSetZoomAndPan,
        ghcjs_dom_svg_view_spec_get_zoom_and_pan, svgViewSpecGetZoomAndPan,
        SVGViewSpec, IsSVGViewSpec, castToSVGViewSpec, gTypeSVGViewSpec,
        toSVGViewSpec)
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

 
foreign import javascript unsafe "$1[\"transform\"]"
        ghcjs_dom_svg_view_spec_get_transform ::
        JSRef SVGViewSpec -> IO (JSRef SVGTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.transform Mozilla SVGViewSpec.transform documentation> 
svgViewSpecGetTransform ::
                        (MonadIO m, IsSVGViewSpec self) =>
                          self -> m (Maybe SVGTransformList)
svgViewSpecGetTransform self
  = liftIO
      ((ghcjs_dom_svg_view_spec_get_transform
          (unSVGViewSpec (toSVGViewSpec self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"viewTarget\"]"
        ghcjs_dom_svg_view_spec_get_view_target ::
        JSRef SVGViewSpec -> IO (JSRef SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.viewTarget Mozilla SVGViewSpec.viewTarget documentation> 
svgViewSpecGetViewTarget ::
                         (MonadIO m, IsSVGViewSpec self) => self -> m (Maybe SVGElement)
svgViewSpecGetViewTarget self
  = liftIO
      ((ghcjs_dom_svg_view_spec_get_view_target
          (unSVGViewSpec (toSVGViewSpec self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"viewBoxString\"]"
        ghcjs_dom_svg_view_spec_get_view_box_string ::
        JSRef SVGViewSpec -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.viewBoxString Mozilla SVGViewSpec.viewBoxString documentation> 
svgViewSpecGetViewBoxString ::
                            (MonadIO m, IsSVGViewSpec self, FromJSString result) =>
                              self -> m result
svgViewSpecGetViewBoxString self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_view_spec_get_view_box_string
            (unSVGViewSpec (toSVGViewSpec self))))
 
foreign import javascript unsafe
        "$1[\"preserveAspectRatioString\"]"
        ghcjs_dom_svg_view_spec_get_preserve_aspect_ratio_string ::
        JSRef SVGViewSpec -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.preserveAspectRatioString Mozilla SVGViewSpec.preserveAspectRatioString documentation> 
svgViewSpecGetPreserveAspectRatioString ::
                                        (MonadIO m, IsSVGViewSpec self, FromJSString result) =>
                                          self -> m result
svgViewSpecGetPreserveAspectRatioString self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_view_spec_get_preserve_aspect_ratio_string
            (unSVGViewSpec (toSVGViewSpec self))))
 
foreign import javascript unsafe "$1[\"transformString\"]"
        ghcjs_dom_svg_view_spec_get_transform_string ::
        JSRef SVGViewSpec -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.transformString Mozilla SVGViewSpec.transformString documentation> 
svgViewSpecGetTransformString ::
                              (MonadIO m, IsSVGViewSpec self, FromJSString result) =>
                                self -> m result
svgViewSpecGetTransformString self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_view_spec_get_transform_string
            (unSVGViewSpec (toSVGViewSpec self))))
 
foreign import javascript unsafe "$1[\"viewTargetString\"]"
        ghcjs_dom_svg_view_spec_get_view_target_string ::
        JSRef SVGViewSpec -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.viewTargetString Mozilla SVGViewSpec.viewTargetString documentation> 
svgViewSpecGetViewTargetString ::
                               (MonadIO m, IsSVGViewSpec self, FromJSString result) =>
                                 self -> m result
svgViewSpecGetViewTargetString self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_view_spec_get_view_target_string
            (unSVGViewSpec (toSVGViewSpec self))))
 
foreign import javascript unsafe "$1[\"zoomAndPan\"] = $2;"
        ghcjs_dom_svg_view_spec_set_zoom_and_pan ::
        JSRef SVGViewSpec -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.zoomAndPan Mozilla SVGViewSpec.zoomAndPan documentation> 
svgViewSpecSetZoomAndPan ::
                         (MonadIO m, IsSVGViewSpec self) => self -> Word -> m ()
svgViewSpecSetZoomAndPan self val
  = liftIO
      (ghcjs_dom_svg_view_spec_set_zoom_and_pan
         (unSVGViewSpec (toSVGViewSpec self))
         val)
 
foreign import javascript unsafe "$1[\"zoomAndPan\"]"
        ghcjs_dom_svg_view_spec_get_zoom_and_pan ::
        JSRef SVGViewSpec -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.zoomAndPan Mozilla SVGViewSpec.zoomAndPan documentation> 
svgViewSpecGetZoomAndPan ::
                         (MonadIO m, IsSVGViewSpec self) => self -> m Word
svgViewSpecGetZoomAndPan self
  = liftIO
      (ghcjs_dom_svg_view_spec_get_zoom_and_pan
         (unSVGViewSpec (toSVGViewSpec self)))
#else
module GHCJS.DOM.SVGViewSpec (
  ) where
#endif
