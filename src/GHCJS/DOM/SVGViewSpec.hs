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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"transform\"]"
        ghcjs_dom_svg_view_spec_get_transform ::
        JSRef SVGViewSpec -> IO (JSRef SVGTransformList)
 
svgViewSpecGetTransform ::
                        (IsSVGViewSpec self) => self -> IO (Maybe SVGTransformList)
svgViewSpecGetTransform self
  = fmap SVGTransformList . maybeJSNull <$>
      (ghcjs_dom_svg_view_spec_get_transform
         (unSVGViewSpec (toSVGViewSpec self)))
 
foreign import javascript unsafe "$1[\"viewTarget\"]"
        ghcjs_dom_svg_view_spec_get_view_target ::
        JSRef SVGViewSpec -> IO (JSRef SVGElement)
 
svgViewSpecGetViewTarget ::
                         (IsSVGViewSpec self) => self -> IO (Maybe SVGElement)
svgViewSpecGetViewTarget self
  = fmap SVGElement . maybeJSNull <$>
      (ghcjs_dom_svg_view_spec_get_view_target
         (unSVGViewSpec (toSVGViewSpec self)))
 
foreign import javascript unsafe "$1[\"viewBoxString\"]"
        ghcjs_dom_svg_view_spec_get_view_box_string ::
        JSRef SVGViewSpec -> IO JSString
 
svgViewSpecGetViewBoxString ::
                            (IsSVGViewSpec self, FromJSString result) => self -> IO result
svgViewSpecGetViewBoxString self
  = fromJSString <$>
      (ghcjs_dom_svg_view_spec_get_view_box_string
         (unSVGViewSpec (toSVGViewSpec self)))
 
foreign import javascript unsafe
        "$1[\"preserveAspectRatioString\"]"
        ghcjs_dom_svg_view_spec_get_preserve_aspect_ratio_string ::
        JSRef SVGViewSpec -> IO JSString
 
svgViewSpecGetPreserveAspectRatioString ::
                                        (IsSVGViewSpec self, FromJSString result) =>
                                          self -> IO result
svgViewSpecGetPreserveAspectRatioString self
  = fromJSString <$>
      (ghcjs_dom_svg_view_spec_get_preserve_aspect_ratio_string
         (unSVGViewSpec (toSVGViewSpec self)))
 
foreign import javascript unsafe "$1[\"transformString\"]"
        ghcjs_dom_svg_view_spec_get_transform_string ::
        JSRef SVGViewSpec -> IO JSString
 
svgViewSpecGetTransformString ::
                              (IsSVGViewSpec self, FromJSString result) => self -> IO result
svgViewSpecGetTransformString self
  = fromJSString <$>
      (ghcjs_dom_svg_view_spec_get_transform_string
         (unSVGViewSpec (toSVGViewSpec self)))
 
foreign import javascript unsafe "$1[\"viewTargetString\"]"
        ghcjs_dom_svg_view_spec_get_view_target_string ::
        JSRef SVGViewSpec -> IO JSString
 
svgViewSpecGetViewTargetString ::
                               (IsSVGViewSpec self, FromJSString result) => self -> IO result
svgViewSpecGetViewTargetString self
  = fromJSString <$>
      (ghcjs_dom_svg_view_spec_get_view_target_string
         (unSVGViewSpec (toSVGViewSpec self)))
 
foreign import javascript unsafe "$1[\"zoomAndPan\"] = $2;"
        ghcjs_dom_svg_view_spec_set_zoom_and_pan ::
        JSRef SVGViewSpec -> Word -> IO ()
 
svgViewSpecSetZoomAndPan ::
                         (IsSVGViewSpec self) => self -> Word -> IO ()
svgViewSpecSetZoomAndPan self val
  = ghcjs_dom_svg_view_spec_set_zoom_and_pan
      (unSVGViewSpec (toSVGViewSpec self))
      val
 
foreign import javascript unsafe "$1[\"zoomAndPan\"]"
        ghcjs_dom_svg_view_spec_get_zoom_and_pan ::
        JSRef SVGViewSpec -> IO Word
 
svgViewSpecGetZoomAndPan :: (IsSVGViewSpec self) => self -> IO Word
svgViewSpecGetZoomAndPan self
  = ghcjs_dom_svg_view_spec_get_zoom_and_pan
      (unSVGViewSpec (toSVGViewSpec self))
#else
module GHCJS.DOM.SVGViewSpec (
  module Graphics.UI.Gtk.WebKit.DOM.SVGViewSpec
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGViewSpec
#endif
