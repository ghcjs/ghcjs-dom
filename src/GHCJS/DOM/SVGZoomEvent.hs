{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGZoomEvent
       (ghcjs_dom_svg_zoom_event_get_zoom_rect_screen,
        svgZoomEventGetZoomRectScreen,
        ghcjs_dom_svg_zoom_event_get_previous_scale,
        svgZoomEventGetPreviousScale,
        ghcjs_dom_svg_zoom_event_get_previous_translate,
        svgZoomEventGetPreviousTranslate,
        ghcjs_dom_svg_zoom_event_get_new_scale, svgZoomEventGetNewScale,
        ghcjs_dom_svg_zoom_event_get_new_translate,
        svgZoomEventGetNewTranslate, SVGZoomEvent, IsSVGZoomEvent,
        castToSVGZoomEvent, gTypeSVGZoomEvent, toSVGZoomEvent)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"zoomRectScreen\"]"
        ghcjs_dom_svg_zoom_event_get_zoom_rect_screen ::
        JSRef SVGZoomEvent -> IO (JSRef SVGRect)
 
svgZoomEventGetZoomRectScreen ::
                              (IsSVGZoomEvent self) => self -> IO (Maybe SVGRect)
svgZoomEventGetZoomRectScreen self
  = fmap SVGRect . maybeJSNull <$>
      (ghcjs_dom_svg_zoom_event_get_zoom_rect_screen
         (unSVGZoomEvent (toSVGZoomEvent self)))
 
foreign import javascript unsafe "$1[\"previousScale\"]"
        ghcjs_dom_svg_zoom_event_get_previous_scale ::
        JSRef SVGZoomEvent -> IO Float
 
svgZoomEventGetPreviousScale ::
                             (IsSVGZoomEvent self) => self -> IO Float
svgZoomEventGetPreviousScale self
  = ghcjs_dom_svg_zoom_event_get_previous_scale
      (unSVGZoomEvent (toSVGZoomEvent self))
 
foreign import javascript unsafe "$1[\"previousTranslate\"]"
        ghcjs_dom_svg_zoom_event_get_previous_translate ::
        JSRef SVGZoomEvent -> IO (JSRef SVGPoint)
 
svgZoomEventGetPreviousTranslate ::
                                 (IsSVGZoomEvent self) => self -> IO (Maybe SVGPoint)
svgZoomEventGetPreviousTranslate self
  = fmap SVGPoint . maybeJSNull <$>
      (ghcjs_dom_svg_zoom_event_get_previous_translate
         (unSVGZoomEvent (toSVGZoomEvent self)))
 
foreign import javascript unsafe "$1[\"newScale\"]"
        ghcjs_dom_svg_zoom_event_get_new_scale ::
        JSRef SVGZoomEvent -> IO Float
 
svgZoomEventGetNewScale ::
                        (IsSVGZoomEvent self) => self -> IO Float
svgZoomEventGetNewScale self
  = ghcjs_dom_svg_zoom_event_get_new_scale
      (unSVGZoomEvent (toSVGZoomEvent self))
 
foreign import javascript unsafe "$1[\"newTranslate\"]"
        ghcjs_dom_svg_zoom_event_get_new_translate ::
        JSRef SVGZoomEvent -> IO (JSRef SVGPoint)
 
svgZoomEventGetNewTranslate ::
                            (IsSVGZoomEvent self) => self -> IO (Maybe SVGPoint)
svgZoomEventGetNewTranslate self
  = fmap SVGPoint . maybeJSNull <$>
      (ghcjs_dom_svg_zoom_event_get_new_translate
         (unSVGZoomEvent (toSVGZoomEvent self)))
#else
module GHCJS.DOM.SVGZoomEvent (
  module Graphics.UI.Gtk.WebKit.DOM.SVGZoomEvent
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGZoomEvent
#endif
