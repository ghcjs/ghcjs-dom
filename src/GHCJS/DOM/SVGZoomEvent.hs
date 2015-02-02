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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"zoomRectScreen\"]"
        ghcjs_dom_svg_zoom_event_get_zoom_rect_screen ::
        JSRef SVGZoomEvent -> IO (JSRef SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.zoomRectScreen Mozilla SVGZoomEvent.zoomRectScreen documentation> 
svgZoomEventGetZoomRectScreen ::
                              (IsSVGZoomEvent self) => self -> IO (Maybe SVGRect)
svgZoomEventGetZoomRectScreen self
  = (ghcjs_dom_svg_zoom_event_get_zoom_rect_screen
       (unSVGZoomEvent (toSVGZoomEvent self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"previousScale\"]"
        ghcjs_dom_svg_zoom_event_get_previous_scale ::
        JSRef SVGZoomEvent -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.previousScale Mozilla SVGZoomEvent.previousScale documentation> 
svgZoomEventGetPreviousScale ::
                             (IsSVGZoomEvent self) => self -> IO Float
svgZoomEventGetPreviousScale self
  = ghcjs_dom_svg_zoom_event_get_previous_scale
      (unSVGZoomEvent (toSVGZoomEvent self))
 
foreign import javascript unsafe "$1[\"previousTranslate\"]"
        ghcjs_dom_svg_zoom_event_get_previous_translate ::
        JSRef SVGZoomEvent -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.previousTranslate Mozilla SVGZoomEvent.previousTranslate documentation> 
svgZoomEventGetPreviousTranslate ::
                                 (IsSVGZoomEvent self) => self -> IO (Maybe SVGPoint)
svgZoomEventGetPreviousTranslate self
  = (ghcjs_dom_svg_zoom_event_get_previous_translate
       (unSVGZoomEvent (toSVGZoomEvent self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"newScale\"]"
        ghcjs_dom_svg_zoom_event_get_new_scale ::
        JSRef SVGZoomEvent -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.newScale Mozilla SVGZoomEvent.newScale documentation> 
svgZoomEventGetNewScale ::
                        (IsSVGZoomEvent self) => self -> IO Float
svgZoomEventGetNewScale self
  = ghcjs_dom_svg_zoom_event_get_new_scale
      (unSVGZoomEvent (toSVGZoomEvent self))
 
foreign import javascript unsafe "$1[\"newTranslate\"]"
        ghcjs_dom_svg_zoom_event_get_new_translate ::
        JSRef SVGZoomEvent -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.newTranslate Mozilla SVGZoomEvent.newTranslate documentation> 
svgZoomEventGetNewTranslate ::
                            (IsSVGZoomEvent self) => self -> IO (Maybe SVGPoint)
svgZoomEventGetNewTranslate self
  = (ghcjs_dom_svg_zoom_event_get_new_translate
       (unSVGZoomEvent (toSVGZoomEvent self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGZoomEvent (
  ) where
#endif
