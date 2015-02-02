{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGSVGElement
       (ghcjs_dom_svgsvg_element_suspend_redraw,
        svgsvgElementSuspendRedraw,
        ghcjs_dom_svgsvg_element_unsuspend_redraw,
        svgsvgElementUnsuspendRedraw,
        ghcjs_dom_svgsvg_element_unsuspend_redraw_all,
        svgsvgElementUnsuspendRedrawAll,
        ghcjs_dom_svgsvg_element_force_redraw, svgsvgElementForceRedraw,
        ghcjs_dom_svgsvg_element_pause_animations,
        svgsvgElementPauseAnimations,
        ghcjs_dom_svgsvg_element_unpause_animations,
        svgsvgElementUnpauseAnimations,
        ghcjs_dom_svgsvg_element_animations_paused,
        svgsvgElementAnimationsPaused,
        ghcjs_dom_svgsvg_element_get_current_time,
        svgsvgElementGetCurrentTime,
        ghcjs_dom_svgsvg_element_set_current_time,
        svgsvgElementSetCurrentTime,
        ghcjs_dom_svgsvg_element_get_intersection_list,
        svgsvgElementGetIntersectionList,
        ghcjs_dom_svgsvg_element_get_enclosure_list,
        svgsvgElementGetEnclosureList,
        ghcjs_dom_svgsvg_element_check_intersection,
        svgsvgElementCheckIntersection,
        ghcjs_dom_svgsvg_element_check_enclosure,
        svgsvgElementCheckEnclosure, ghcjs_dom_svgsvg_element_deselect_all,
        svgsvgElementDeselectAll,
        ghcjs_dom_svgsvg_element_create_svg_number,
        svgsvgElementCreateSVGNumber,
        ghcjs_dom_svgsvg_element_create_svg_length,
        svgsvgElementCreateSVGLength,
        ghcjs_dom_svgsvg_element_create_svg_angle,
        svgsvgElementCreateSVGAngle,
        ghcjs_dom_svgsvg_element_create_svg_point,
        svgsvgElementCreateSVGPoint,
        ghcjs_dom_svgsvg_element_create_svg_matrix,
        svgsvgElementCreateSVGMatrix,
        ghcjs_dom_svgsvg_element_create_svg_rect,
        svgsvgElementCreateSVGRect,
        ghcjs_dom_svgsvg_element_create_svg_transform,
        svgsvgElementCreateSVGTransform,
        ghcjs_dom_svgsvg_element_create_svg_transform_from_matrix,
        svgsvgElementCreateSVGTransformFromMatrix,
        ghcjs_dom_svgsvg_element_get_element_by_id,
        svgsvgElementGetElementById, ghcjs_dom_svgsvg_element_get_x,
        svgsvgElementGetX, ghcjs_dom_svgsvg_element_get_y,
        svgsvgElementGetY, ghcjs_dom_svgsvg_element_get_width,
        svgsvgElementGetWidth, ghcjs_dom_svgsvg_element_get_height,
        svgsvgElementGetHeight,
        ghcjs_dom_svgsvg_element_set_content_script_type,
        svgsvgElementSetContentScriptType,
        ghcjs_dom_svgsvg_element_get_content_script_type,
        svgsvgElementGetContentScriptType,
        ghcjs_dom_svgsvg_element_set_content_style_type,
        svgsvgElementSetContentStyleType,
        ghcjs_dom_svgsvg_element_get_content_style_type,
        svgsvgElementGetContentStyleType,
        ghcjs_dom_svgsvg_element_get_viewport, svgsvgElementGetViewport,
        ghcjs_dom_svgsvg_element_get_pixel_unit_to_millimeter_x,
        svgsvgElementGetPixelUnitToMillimeterX,
        ghcjs_dom_svgsvg_element_get_pixel_unit_to_millimeter_y,
        svgsvgElementGetPixelUnitToMillimeterY,
        ghcjs_dom_svgsvg_element_get_screen_pixel_to_millimeter_x,
        svgsvgElementGetScreenPixelToMillimeterX,
        ghcjs_dom_svgsvg_element_get_screen_pixel_to_millimeter_y,
        svgsvgElementGetScreenPixelToMillimeterY,
        ghcjs_dom_svgsvg_element_get_use_current_view,
        svgsvgElementGetUseCurrentView,
        ghcjs_dom_svgsvg_element_get_current_view,
        svgsvgElementGetCurrentView,
        ghcjs_dom_svgsvg_element_set_current_scale,
        svgsvgElementSetCurrentScale,
        ghcjs_dom_svgsvg_element_get_current_scale,
        svgsvgElementGetCurrentScale,
        ghcjs_dom_svgsvg_element_get_current_translate,
        svgsvgElementGetCurrentTranslate, SVGSVGElement, IsSVGSVGElement,
        castToSVGSVGElement, gTypeSVGSVGElement, toSVGSVGElement)
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

 
foreign import javascript unsafe "$1[\"suspendRedraw\"]($2)"
        ghcjs_dom_svgsvg_element_suspend_redraw ::
        JSRef SVGSVGElement -> Word -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.suspendRedraw Mozilla SVGSVGElement.suspendRedraw documentation> 
svgsvgElementSuspendRedraw ::
                           (IsSVGSVGElement self) => self -> Word -> IO Word
svgsvgElementSuspendRedraw self maxWaitMilliseconds
  = ghcjs_dom_svgsvg_element_suspend_redraw
      (unSVGSVGElement (toSVGSVGElement self))
      maxWaitMilliseconds
 
foreign import javascript unsafe "$1[\"unsuspendRedraw\"]($2)"
        ghcjs_dom_svgsvg_element_unsuspend_redraw ::
        JSRef SVGSVGElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.unsuspendRedraw Mozilla SVGSVGElement.unsuspendRedraw documentation> 
svgsvgElementUnsuspendRedraw ::
                             (IsSVGSVGElement self) => self -> Word -> IO ()
svgsvgElementUnsuspendRedraw self suspendHandleId
  = ghcjs_dom_svgsvg_element_unsuspend_redraw
      (unSVGSVGElement (toSVGSVGElement self))
      suspendHandleId
 
foreign import javascript unsafe "$1[\"unsuspendRedrawAll\"]()"
        ghcjs_dom_svgsvg_element_unsuspend_redraw_all ::
        JSRef SVGSVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.unsuspendRedrawAll Mozilla SVGSVGElement.unsuspendRedrawAll documentation> 
svgsvgElementUnsuspendRedrawAll ::
                                (IsSVGSVGElement self) => self -> IO ()
svgsvgElementUnsuspendRedrawAll self
  = ghcjs_dom_svgsvg_element_unsuspend_redraw_all
      (unSVGSVGElement (toSVGSVGElement self))
 
foreign import javascript unsafe "$1[\"forceRedraw\"]()"
        ghcjs_dom_svgsvg_element_force_redraw ::
        JSRef SVGSVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.forceRedraw Mozilla SVGSVGElement.forceRedraw documentation> 
svgsvgElementForceRedraw :: (IsSVGSVGElement self) => self -> IO ()
svgsvgElementForceRedraw self
  = ghcjs_dom_svgsvg_element_force_redraw
      (unSVGSVGElement (toSVGSVGElement self))
 
foreign import javascript unsafe "$1[\"pauseAnimations\"]()"
        ghcjs_dom_svgsvg_element_pause_animations ::
        JSRef SVGSVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.pauseAnimations Mozilla SVGSVGElement.pauseAnimations documentation> 
svgsvgElementPauseAnimations ::
                             (IsSVGSVGElement self) => self -> IO ()
svgsvgElementPauseAnimations self
  = ghcjs_dom_svgsvg_element_pause_animations
      (unSVGSVGElement (toSVGSVGElement self))
 
foreign import javascript unsafe "$1[\"unpauseAnimations\"]()"
        ghcjs_dom_svgsvg_element_unpause_animations ::
        JSRef SVGSVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.unpauseAnimations Mozilla SVGSVGElement.unpauseAnimations documentation> 
svgsvgElementUnpauseAnimations ::
                               (IsSVGSVGElement self) => self -> IO ()
svgsvgElementUnpauseAnimations self
  = ghcjs_dom_svgsvg_element_unpause_animations
      (unSVGSVGElement (toSVGSVGElement self))
 
foreign import javascript unsafe
        "($1[\"animationsPaused\"]() ? 1 : 0)"
        ghcjs_dom_svgsvg_element_animations_paused ::
        JSRef SVGSVGElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.animationsPaused Mozilla SVGSVGElement.animationsPaused documentation> 
svgsvgElementAnimationsPaused ::
                              (IsSVGSVGElement self) => self -> IO Bool
svgsvgElementAnimationsPaused self
  = ghcjs_dom_svgsvg_element_animations_paused
      (unSVGSVGElement (toSVGSVGElement self))
 
foreign import javascript unsafe "$1[\"getCurrentTime\"]()"
        ghcjs_dom_svgsvg_element_get_current_time ::
        JSRef SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentTime Mozilla SVGSVGElement.currentTime documentation> 
svgsvgElementGetCurrentTime ::
                            (IsSVGSVGElement self) => self -> IO Float
svgsvgElementGetCurrentTime self
  = ghcjs_dom_svgsvg_element_get_current_time
      (unSVGSVGElement (toSVGSVGElement self))
 
foreign import javascript unsafe "$1[\"setCurrentTime\"]($2)"
        ghcjs_dom_svgsvg_element_set_current_time ::
        JSRef SVGSVGElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentTime Mozilla SVGSVGElement.currentTime documentation> 
svgsvgElementSetCurrentTime ::
                            (IsSVGSVGElement self) => self -> Float -> IO ()
svgsvgElementSetCurrentTime self seconds
  = ghcjs_dom_svgsvg_element_set_current_time
      (unSVGSVGElement (toSVGSVGElement self))
      seconds
 
foreign import javascript unsafe
        "$1[\"getIntersectionList\"]($2,\n$3)"
        ghcjs_dom_svgsvg_element_get_intersection_list ::
        JSRef SVGSVGElement ->
          JSRef SVGRect -> JSRef SVGElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.intersectionList Mozilla SVGSVGElement.intersectionList documentation> 
svgsvgElementGetIntersectionList ::
                                 (IsSVGSVGElement self, IsSVGRect rect,
                                  IsSVGElement referenceElement) =>
                                   self ->
                                     Maybe rect -> Maybe referenceElement -> IO (Maybe NodeList)
svgsvgElementGetIntersectionList self rect referenceElement
  = (ghcjs_dom_svgsvg_element_get_intersection_list
       (unSVGSVGElement (toSVGSVGElement self))
       (maybe jsNull (unSVGRect . toSVGRect) rect)
       (maybe jsNull (unSVGElement . toSVGElement) referenceElement))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getEnclosureList\"]($2, $3)"
        ghcjs_dom_svgsvg_element_get_enclosure_list ::
        JSRef SVGSVGElement ->
          JSRef SVGRect -> JSRef SVGElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.enclosureList Mozilla SVGSVGElement.enclosureList documentation> 
svgsvgElementGetEnclosureList ::
                              (IsSVGSVGElement self, IsSVGRect rect,
                               IsSVGElement referenceElement) =>
                                self -> Maybe rect -> Maybe referenceElement -> IO (Maybe NodeList)
svgsvgElementGetEnclosureList self rect referenceElement
  = (ghcjs_dom_svgsvg_element_get_enclosure_list
       (unSVGSVGElement (toSVGSVGElement self))
       (maybe jsNull (unSVGRect . toSVGRect) rect)
       (maybe jsNull (unSVGElement . toSVGElement) referenceElement))
      >>= fromJSRef
 
foreign import javascript unsafe
        "($1[\"checkIntersection\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_svgsvg_element_check_intersection ::
        JSRef SVGSVGElement -> JSRef SVGElement -> JSRef SVGRect -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.checkIntersection Mozilla SVGSVGElement.checkIntersection documentation> 
svgsvgElementCheckIntersection ::
                               (IsSVGSVGElement self, IsSVGElement element, IsSVGRect rect) =>
                                 self -> Maybe element -> Maybe rect -> IO Bool
svgsvgElementCheckIntersection self element rect
  = ghcjs_dom_svgsvg_element_check_intersection
      (unSVGSVGElement (toSVGSVGElement self))
      (maybe jsNull (unSVGElement . toSVGElement) element)
      (maybe jsNull (unSVGRect . toSVGRect) rect)
 
foreign import javascript unsafe
        "($1[\"checkEnclosure\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_svgsvg_element_check_enclosure ::
        JSRef SVGSVGElement -> JSRef SVGElement -> JSRef SVGRect -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.checkEnclosure Mozilla SVGSVGElement.checkEnclosure documentation> 
svgsvgElementCheckEnclosure ::
                            (IsSVGSVGElement self, IsSVGElement element, IsSVGRect rect) =>
                              self -> Maybe element -> Maybe rect -> IO Bool
svgsvgElementCheckEnclosure self element rect
  = ghcjs_dom_svgsvg_element_check_enclosure
      (unSVGSVGElement (toSVGSVGElement self))
      (maybe jsNull (unSVGElement . toSVGElement) element)
      (maybe jsNull (unSVGRect . toSVGRect) rect)
 
foreign import javascript unsafe "$1[\"deselectAll\"]()"
        ghcjs_dom_svgsvg_element_deselect_all ::
        JSRef SVGSVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.deselectAll Mozilla SVGSVGElement.deselectAll documentation> 
svgsvgElementDeselectAll :: (IsSVGSVGElement self) => self -> IO ()
svgsvgElementDeselectAll self
  = ghcjs_dom_svgsvg_element_deselect_all
      (unSVGSVGElement (toSVGSVGElement self))
 
foreign import javascript unsafe "$1[\"createSVGNumber\"]()"
        ghcjs_dom_svgsvg_element_create_svg_number ::
        JSRef SVGSVGElement -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGNumber Mozilla SVGSVGElement.createSVGNumber documentation> 
svgsvgElementCreateSVGNumber ::
                             (IsSVGSVGElement self) => self -> IO (Maybe SVGNumber)
svgsvgElementCreateSVGNumber self
  = (ghcjs_dom_svgsvg_element_create_svg_number
       (unSVGSVGElement (toSVGSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createSVGLength\"]()"
        ghcjs_dom_svgsvg_element_create_svg_length ::
        JSRef SVGSVGElement -> IO (JSRef SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGLength Mozilla SVGSVGElement.createSVGLength documentation> 
svgsvgElementCreateSVGLength ::
                             (IsSVGSVGElement self) => self -> IO (Maybe SVGLength)
svgsvgElementCreateSVGLength self
  = (ghcjs_dom_svgsvg_element_create_svg_length
       (unSVGSVGElement (toSVGSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createSVGAngle\"]()"
        ghcjs_dom_svgsvg_element_create_svg_angle ::
        JSRef SVGSVGElement -> IO (JSRef SVGAngle)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGAngle Mozilla SVGSVGElement.createSVGAngle documentation> 
svgsvgElementCreateSVGAngle ::
                            (IsSVGSVGElement self) => self -> IO (Maybe SVGAngle)
svgsvgElementCreateSVGAngle self
  = (ghcjs_dom_svgsvg_element_create_svg_angle
       (unSVGSVGElement (toSVGSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createSVGPoint\"]()"
        ghcjs_dom_svgsvg_element_create_svg_point ::
        JSRef SVGSVGElement -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGPoint Mozilla SVGSVGElement.createSVGPoint documentation> 
svgsvgElementCreateSVGPoint ::
                            (IsSVGSVGElement self) => self -> IO (Maybe SVGPoint)
svgsvgElementCreateSVGPoint self
  = (ghcjs_dom_svgsvg_element_create_svg_point
       (unSVGSVGElement (toSVGSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createSVGMatrix\"]()"
        ghcjs_dom_svgsvg_element_create_svg_matrix ::
        JSRef SVGSVGElement -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGMatrix Mozilla SVGSVGElement.createSVGMatrix documentation> 
svgsvgElementCreateSVGMatrix ::
                             (IsSVGSVGElement self) => self -> IO (Maybe SVGMatrix)
svgsvgElementCreateSVGMatrix self
  = (ghcjs_dom_svgsvg_element_create_svg_matrix
       (unSVGSVGElement (toSVGSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createSVGRect\"]()"
        ghcjs_dom_svgsvg_element_create_svg_rect ::
        JSRef SVGSVGElement -> IO (JSRef SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGRect Mozilla SVGSVGElement.createSVGRect documentation> 
svgsvgElementCreateSVGRect ::
                           (IsSVGSVGElement self) => self -> IO (Maybe SVGRect)
svgsvgElementCreateSVGRect self
  = (ghcjs_dom_svgsvg_element_create_svg_rect
       (unSVGSVGElement (toSVGSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createSVGTransform\"]()"
        ghcjs_dom_svgsvg_element_create_svg_transform ::
        JSRef SVGSVGElement -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransform Mozilla SVGSVGElement.createSVGTransform documentation> 
svgsvgElementCreateSVGTransform ::
                                (IsSVGSVGElement self) => self -> IO (Maybe SVGTransform)
svgsvgElementCreateSVGTransform self
  = (ghcjs_dom_svgsvg_element_create_svg_transform
       (unSVGSVGElement (toSVGSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createSVGTransformFromMatrix\"]($2)"
        ghcjs_dom_svgsvg_element_create_svg_transform_from_matrix ::
        JSRef SVGSVGElement -> JSRef SVGMatrix -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransformFromMatrix Mozilla SVGSVGElement.createSVGTransformFromMatrix documentation> 
svgsvgElementCreateSVGTransformFromMatrix ::
                                          (IsSVGSVGElement self, IsSVGMatrix matrix) =>
                                            self -> Maybe matrix -> IO (Maybe SVGTransform)
svgsvgElementCreateSVGTransformFromMatrix self matrix
  = (ghcjs_dom_svgsvg_element_create_svg_transform_from_matrix
       (unSVGSVGElement (toSVGSVGElement self))
       (maybe jsNull (unSVGMatrix . toSVGMatrix) matrix))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getElementById\"]($2)"
        ghcjs_dom_svgsvg_element_get_element_by_id ::
        JSRef SVGSVGElement -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.elementById Mozilla SVGSVGElement.elementById documentation> 
svgsvgElementGetElementById ::
                            (IsSVGSVGElement self, ToJSString elementId) =>
                              self -> elementId -> IO (Maybe Element)
svgsvgElementGetElementById self elementId
  = (ghcjs_dom_svgsvg_element_get_element_by_id
       (unSVGSVGElement (toSVGSVGElement self))
       (toJSString elementId))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svgsvg_element_get_x ::
        JSRef SVGSVGElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.x Mozilla SVGSVGElement.x documentation> 
svgsvgElementGetX ::
                  (IsSVGSVGElement self) => self -> IO (Maybe SVGAnimatedLength)
svgsvgElementGetX self
  = (ghcjs_dom_svgsvg_element_get_x
       (unSVGSVGElement (toSVGSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svgsvg_element_get_y ::
        JSRef SVGSVGElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.y Mozilla SVGSVGElement.y documentation> 
svgsvgElementGetY ::
                  (IsSVGSVGElement self) => self -> IO (Maybe SVGAnimatedLength)
svgsvgElementGetY self
  = (ghcjs_dom_svgsvg_element_get_y
       (unSVGSVGElement (toSVGSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svgsvg_element_get_width ::
        JSRef SVGSVGElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.width Mozilla SVGSVGElement.width documentation> 
svgsvgElementGetWidth ::
                      (IsSVGSVGElement self) => self -> IO (Maybe SVGAnimatedLength)
svgsvgElementGetWidth self
  = (ghcjs_dom_svgsvg_element_get_width
       (unSVGSVGElement (toSVGSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svgsvg_element_get_height ::
        JSRef SVGSVGElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.height Mozilla SVGSVGElement.height documentation> 
svgsvgElementGetHeight ::
                       (IsSVGSVGElement self) => self -> IO (Maybe SVGAnimatedLength)
svgsvgElementGetHeight self
  = (ghcjs_dom_svgsvg_element_get_height
       (unSVGSVGElement (toSVGSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"contentScriptType\"] = $2;"
        ghcjs_dom_svgsvg_element_set_content_script_type ::
        JSRef SVGSVGElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentScriptType Mozilla SVGSVGElement.contentScriptType documentation> 
svgsvgElementSetContentScriptType ::
                                  (IsSVGSVGElement self, ToJSString val) => self -> val -> IO ()
svgsvgElementSetContentScriptType self val
  = ghcjs_dom_svgsvg_element_set_content_script_type
      (unSVGSVGElement (toSVGSVGElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"contentScriptType\"]"
        ghcjs_dom_svgsvg_element_get_content_script_type ::
        JSRef SVGSVGElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentScriptType Mozilla SVGSVGElement.contentScriptType documentation> 
svgsvgElementGetContentScriptType ::
                                  (IsSVGSVGElement self, FromJSString result) => self -> IO result
svgsvgElementGetContentScriptType self
  = fromJSString <$>
      (ghcjs_dom_svgsvg_element_get_content_script_type
         (unSVGSVGElement (toSVGSVGElement self)))
 
foreign import javascript unsafe "$1[\"contentStyleType\"] = $2;"
        ghcjs_dom_svgsvg_element_set_content_style_type ::
        JSRef SVGSVGElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentStyleType Mozilla SVGSVGElement.contentStyleType documentation> 
svgsvgElementSetContentStyleType ::
                                 (IsSVGSVGElement self, ToJSString val) => self -> val -> IO ()
svgsvgElementSetContentStyleType self val
  = ghcjs_dom_svgsvg_element_set_content_style_type
      (unSVGSVGElement (toSVGSVGElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"contentStyleType\"]"
        ghcjs_dom_svgsvg_element_get_content_style_type ::
        JSRef SVGSVGElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentStyleType Mozilla SVGSVGElement.contentStyleType documentation> 
svgsvgElementGetContentStyleType ::
                                 (IsSVGSVGElement self, FromJSString result) => self -> IO result
svgsvgElementGetContentStyleType self
  = fromJSString <$>
      (ghcjs_dom_svgsvg_element_get_content_style_type
         (unSVGSVGElement (toSVGSVGElement self)))
 
foreign import javascript unsafe "$1[\"viewport\"]"
        ghcjs_dom_svgsvg_element_get_viewport ::
        JSRef SVGSVGElement -> IO (JSRef SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.viewport Mozilla SVGSVGElement.viewport documentation> 
svgsvgElementGetViewport ::
                         (IsSVGSVGElement self) => self -> IO (Maybe SVGRect)
svgsvgElementGetViewport self
  = (ghcjs_dom_svgsvg_element_get_viewport
       (unSVGSVGElement (toSVGSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"pixelUnitToMillimeterX\"]"
        ghcjs_dom_svgsvg_element_get_pixel_unit_to_millimeter_x ::
        JSRef SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.pixelUnitToMillimeterX Mozilla SVGSVGElement.pixelUnitToMillimeterX documentation> 
svgsvgElementGetPixelUnitToMillimeterX ::
                                       (IsSVGSVGElement self) => self -> IO Float
svgsvgElementGetPixelUnitToMillimeterX self
  = ghcjs_dom_svgsvg_element_get_pixel_unit_to_millimeter_x
      (unSVGSVGElement (toSVGSVGElement self))
 
foreign import javascript unsafe "$1[\"pixelUnitToMillimeterY\"]"
        ghcjs_dom_svgsvg_element_get_pixel_unit_to_millimeter_y ::
        JSRef SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.pixelUnitToMillimeterY Mozilla SVGSVGElement.pixelUnitToMillimeterY documentation> 
svgsvgElementGetPixelUnitToMillimeterY ::
                                       (IsSVGSVGElement self) => self -> IO Float
svgsvgElementGetPixelUnitToMillimeterY self
  = ghcjs_dom_svgsvg_element_get_pixel_unit_to_millimeter_y
      (unSVGSVGElement (toSVGSVGElement self))
 
foreign import javascript unsafe "$1[\"screenPixelToMillimeterX\"]"
        ghcjs_dom_svgsvg_element_get_screen_pixel_to_millimeter_x ::
        JSRef SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.screenPixelToMillimeterX Mozilla SVGSVGElement.screenPixelToMillimeterX documentation> 
svgsvgElementGetScreenPixelToMillimeterX ::
                                         (IsSVGSVGElement self) => self -> IO Float
svgsvgElementGetScreenPixelToMillimeterX self
  = ghcjs_dom_svgsvg_element_get_screen_pixel_to_millimeter_x
      (unSVGSVGElement (toSVGSVGElement self))
 
foreign import javascript unsafe "$1[\"screenPixelToMillimeterY\"]"
        ghcjs_dom_svgsvg_element_get_screen_pixel_to_millimeter_y ::
        JSRef SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.screenPixelToMillimeterY Mozilla SVGSVGElement.screenPixelToMillimeterY documentation> 
svgsvgElementGetScreenPixelToMillimeterY ::
                                         (IsSVGSVGElement self) => self -> IO Float
svgsvgElementGetScreenPixelToMillimeterY self
  = ghcjs_dom_svgsvg_element_get_screen_pixel_to_millimeter_y
      (unSVGSVGElement (toSVGSVGElement self))
 
foreign import javascript unsafe "($1[\"useCurrentView\"] ? 1 : 0)"
        ghcjs_dom_svgsvg_element_get_use_current_view ::
        JSRef SVGSVGElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.useCurrentView Mozilla SVGSVGElement.useCurrentView documentation> 
svgsvgElementGetUseCurrentView ::
                               (IsSVGSVGElement self) => self -> IO Bool
svgsvgElementGetUseCurrentView self
  = ghcjs_dom_svgsvg_element_get_use_current_view
      (unSVGSVGElement (toSVGSVGElement self))
 
foreign import javascript unsafe "$1[\"currentView\"]"
        ghcjs_dom_svgsvg_element_get_current_view ::
        JSRef SVGSVGElement -> IO (JSRef SVGViewSpec)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentView Mozilla SVGSVGElement.currentView documentation> 
svgsvgElementGetCurrentView ::
                            (IsSVGSVGElement self) => self -> IO (Maybe SVGViewSpec)
svgsvgElementGetCurrentView self
  = (ghcjs_dom_svgsvg_element_get_current_view
       (unSVGSVGElement (toSVGSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"currentScale\"] = $2;"
        ghcjs_dom_svgsvg_element_set_current_scale ::
        JSRef SVGSVGElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentScale Mozilla SVGSVGElement.currentScale documentation> 
svgsvgElementSetCurrentScale ::
                             (IsSVGSVGElement self) => self -> Float -> IO ()
svgsvgElementSetCurrentScale self val
  = ghcjs_dom_svgsvg_element_set_current_scale
      (unSVGSVGElement (toSVGSVGElement self))
      val
 
foreign import javascript unsafe "$1[\"currentScale\"]"
        ghcjs_dom_svgsvg_element_get_current_scale ::
        JSRef SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentScale Mozilla SVGSVGElement.currentScale documentation> 
svgsvgElementGetCurrentScale ::
                             (IsSVGSVGElement self) => self -> IO Float
svgsvgElementGetCurrentScale self
  = ghcjs_dom_svgsvg_element_get_current_scale
      (unSVGSVGElement (toSVGSVGElement self))
 
foreign import javascript unsafe "$1[\"currentTranslate\"]"
        ghcjs_dom_svgsvg_element_get_current_translate ::
        JSRef SVGSVGElement -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentTranslate Mozilla SVGSVGElement.currentTranslate documentation> 
svgsvgElementGetCurrentTranslate ::
                                 (IsSVGSVGElement self) => self -> IO (Maybe SVGPoint)
svgsvgElementGetCurrentTranslate self
  = (ghcjs_dom_svgsvg_element_get_current_translate
       (unSVGSVGElement (toSVGSVGElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGSVGElement (
  ) where
#endif
