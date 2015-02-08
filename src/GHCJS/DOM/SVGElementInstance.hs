{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGElementInstance
       (ghcjs_dom_svg_element_instance_get_corresponding_element,
        svgElementInstanceGetCorrespondingElement,
        ghcjs_dom_svg_element_instance_get_corresponding_use_element,
        svgElementInstanceGetCorrespondingUseElement,
        ghcjs_dom_svg_element_instance_get_parent_node,
        svgElementInstanceGetParentNode,
        ghcjs_dom_svg_element_instance_get_child_nodes,
        svgElementInstanceGetChildNodes,
        ghcjs_dom_svg_element_instance_get_first_child,
        svgElementInstanceGetFirstChild,
        ghcjs_dom_svg_element_instance_get_last_child,
        svgElementInstanceGetLastChild,
        ghcjs_dom_svg_element_instance_get_previous_sibling,
        svgElementInstanceGetPreviousSibling,
        ghcjs_dom_svg_element_instance_get_next_sibling,
        svgElementInstanceGetNextSibling, svgElementInstanceAbort,
        svgElementInstanceBlur, svgElementInstanceChange,
        svgElementInstanceClick, svgElementInstanceContextMenu,
        svgElementInstanceDblClick, svgElementInstanceError,
        svgElementInstanceFocus, svgElementInstanceInput,
        svgElementInstanceKeyDown, svgElementInstanceKeyPress,
        svgElementInstanceKeyUp, svgElementInstanceLoad,
        svgElementInstanceMouseDown, svgElementInstanceMouseEnter,
        svgElementInstanceMouseLeave, svgElementInstanceMouseMove,
        svgElementInstanceMouseOut, svgElementInstanceMouseOver,
        svgElementInstanceMouseUp, svgElementInstanceMouseWheel,
        svgElementInstanceWheel, svgElementInstanceBeforeCut,
        svgElementInstanceCut, svgElementInstanceBeforeCopy,
        svgElementInstanceCopy, svgElementInstanceBeforePaste,
        svgElementInstancePaste, svgElementInstanceDragEnter,
        svgElementInstanceDragOver, svgElementInstanceDragLeave,
        svgElementInstanceDrop, svgElementInstanceDragStart,
        svgElementInstanceDrag, svgElementInstanceDragEnd,
        svgElementInstanceReset, svgElementInstanceResize,
        svgElementInstanceScroll, svgElementInstanceSearch,
        svgElementInstanceSelect, svgElementInstanceSelectStart,
        svgElementInstanceSubmit, svgElementInstanceUnload,
        SVGElementInstance, IsSVGElementInstance, castToSVGElementInstance,
        gTypeSVGElementInstance, toSVGElementInstance)
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

 
foreign import javascript unsafe "$1[\"correspondingElement\"]"
        ghcjs_dom_svg_element_instance_get_corresponding_element ::
        JSRef SVGElementInstance -> IO (JSRef SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.correspondingElement Mozilla SVGElementInstance.correspondingElement documentation> 
svgElementInstanceGetCorrespondingElement ::
                                          (MonadIO m, IsSVGElementInstance self) =>
                                            self -> m (Maybe SVGElement)
svgElementInstanceGetCorrespondingElement self
  = liftIO
      ((ghcjs_dom_svg_element_instance_get_corresponding_element
          (unSVGElementInstance (toSVGElementInstance self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"correspondingUseElement\"]"
        ghcjs_dom_svg_element_instance_get_corresponding_use_element ::
        JSRef SVGElementInstance -> IO (JSRef SVGUseElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.correspondingUseElement Mozilla SVGElementInstance.correspondingUseElement documentation> 
svgElementInstanceGetCorrespondingUseElement ::
                                             (MonadIO m, IsSVGElementInstance self) =>
                                               self -> m (Maybe SVGUseElement)
svgElementInstanceGetCorrespondingUseElement self
  = liftIO
      ((ghcjs_dom_svg_element_instance_get_corresponding_use_element
          (unSVGElementInstance (toSVGElementInstance self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"parentNode\"]"
        ghcjs_dom_svg_element_instance_get_parent_node ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.parentNode Mozilla SVGElementInstance.parentNode documentation> 
svgElementInstanceGetParentNode ::
                                (MonadIO m, IsSVGElementInstance self) =>
                                  self -> m (Maybe SVGElementInstance)
svgElementInstanceGetParentNode self
  = liftIO
      ((ghcjs_dom_svg_element_instance_get_parent_node
          (unSVGElementInstance (toSVGElementInstance self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"childNodes\"]"
        ghcjs_dom_svg_element_instance_get_child_nodes ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstanceList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.childNodes Mozilla SVGElementInstance.childNodes documentation> 
svgElementInstanceGetChildNodes ::
                                (MonadIO m, IsSVGElementInstance self) =>
                                  self -> m (Maybe SVGElementInstanceList)
svgElementInstanceGetChildNodes self
  = liftIO
      ((ghcjs_dom_svg_element_instance_get_child_nodes
          (unSVGElementInstance (toSVGElementInstance self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"firstChild\"]"
        ghcjs_dom_svg_element_instance_get_first_child ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.firstChild Mozilla SVGElementInstance.firstChild documentation> 
svgElementInstanceGetFirstChild ::
                                (MonadIO m, IsSVGElementInstance self) =>
                                  self -> m (Maybe SVGElementInstance)
svgElementInstanceGetFirstChild self
  = liftIO
      ((ghcjs_dom_svg_element_instance_get_first_child
          (unSVGElementInstance (toSVGElementInstance self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"lastChild\"]"
        ghcjs_dom_svg_element_instance_get_last_child ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.lastChild Mozilla SVGElementInstance.lastChild documentation> 
svgElementInstanceGetLastChild ::
                               (MonadIO m, IsSVGElementInstance self) =>
                                 self -> m (Maybe SVGElementInstance)
svgElementInstanceGetLastChild self
  = liftIO
      ((ghcjs_dom_svg_element_instance_get_last_child
          (unSVGElementInstance (toSVGElementInstance self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"previousSibling\"]"
        ghcjs_dom_svg_element_instance_get_previous_sibling ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.previousSibling Mozilla SVGElementInstance.previousSibling documentation> 
svgElementInstanceGetPreviousSibling ::
                                     (MonadIO m, IsSVGElementInstance self) =>
                                       self -> m (Maybe SVGElementInstance)
svgElementInstanceGetPreviousSibling self
  = liftIO
      ((ghcjs_dom_svg_element_instance_get_previous_sibling
          (unSVGElementInstance (toSVGElementInstance self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"nextSibling\"]"
        ghcjs_dom_svg_element_instance_get_next_sibling ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.nextSibling Mozilla SVGElementInstance.nextSibling documentation> 
svgElementInstanceGetNextSibling ::
                                 (MonadIO m, IsSVGElementInstance self) =>
                                   self -> m (Maybe SVGElementInstance)
svgElementInstanceGetNextSibling self
  = liftIO
      ((ghcjs_dom_svg_element_instance_get_next_sibling
          (unSVGElementInstance (toSVGElementInstance self)))
         >>= fromJSRef)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.abort Mozilla SVGElementInstance.abort documentation> 
svgElementInstanceAbort ::
                        (IsSVGElementInstance self, IsEventTarget self) =>
                          EventName self UIEvent
svgElementInstanceAbort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.blur Mozilla SVGElementInstance.blur documentation> 
svgElementInstanceBlur ::
                       (IsSVGElementInstance self, IsEventTarget self) =>
                         EventName self FocusEvent
svgElementInstanceBlur = unsafeEventName (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.change Mozilla SVGElementInstance.change documentation> 
svgElementInstanceChange ::
                         (IsSVGElementInstance self, IsEventTarget self) =>
                           EventName self Event
svgElementInstanceChange = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.click Mozilla SVGElementInstance.click documentation> 
svgElementInstanceClick ::
                        (IsSVGElementInstance self, IsEventTarget self) =>
                          EventName self MouseEvent
svgElementInstanceClick = unsafeEventName (toJSString "click")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.contextMenu Mozilla SVGElementInstance.contextMenu documentation> 
svgElementInstanceContextMenu ::
                              (IsSVGElementInstance self, IsEventTarget self) =>
                                EventName self MouseEvent
svgElementInstanceContextMenu
  = unsafeEventName (toJSString "contextmenu")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.dblClick Mozilla SVGElementInstance.dblClick documentation> 
svgElementInstanceDblClick ::
                           (IsSVGElementInstance self, IsEventTarget self) =>
                             EventName self MouseEvent
svgElementInstanceDblClick
  = unsafeEventName (toJSString "dblclick")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.error Mozilla SVGElementInstance.error documentation> 
svgElementInstanceError ::
                        (IsSVGElementInstance self, IsEventTarget self) =>
                          EventName self UIEvent
svgElementInstanceError = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.focus Mozilla SVGElementInstance.focus documentation> 
svgElementInstanceFocus ::
                        (IsSVGElementInstance self, IsEventTarget self) =>
                          EventName self FocusEvent
svgElementInstanceFocus = unsafeEventName (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.input Mozilla SVGElementInstance.input documentation> 
svgElementInstanceInput ::
                        (IsSVGElementInstance self, IsEventTarget self) =>
                          EventName self Event
svgElementInstanceInput = unsafeEventName (toJSString "input")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.keyDown Mozilla SVGElementInstance.keyDown documentation> 
svgElementInstanceKeyDown ::
                          (IsSVGElementInstance self, IsEventTarget self) =>
                            EventName self KeyboardEvent
svgElementInstanceKeyDown = unsafeEventName (toJSString "keydown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.keyPress Mozilla SVGElementInstance.keyPress documentation> 
svgElementInstanceKeyPress ::
                           (IsSVGElementInstance self, IsEventTarget self) =>
                             EventName self KeyboardEvent
svgElementInstanceKeyPress
  = unsafeEventName (toJSString "keypress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.keyUp Mozilla SVGElementInstance.keyUp documentation> 
svgElementInstanceKeyUp ::
                        (IsSVGElementInstance self, IsEventTarget self) =>
                          EventName self KeyboardEvent
svgElementInstanceKeyUp = unsafeEventName (toJSString "keyup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.load Mozilla SVGElementInstance.load documentation> 
svgElementInstanceLoad ::
                       (IsSVGElementInstance self, IsEventTarget self) =>
                         EventName self UIEvent
svgElementInstanceLoad = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.mouseDown Mozilla SVGElementInstance.mouseDown documentation> 
svgElementInstanceMouseDown ::
                            (IsSVGElementInstance self, IsEventTarget self) =>
                              EventName self MouseEvent
svgElementInstanceMouseDown
  = unsafeEventName (toJSString "mousedown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.mouseEnter Mozilla SVGElementInstance.mouseEnter documentation> 
svgElementInstanceMouseEnter ::
                             (IsSVGElementInstance self, IsEventTarget self) =>
                               EventName self MouseEvent
svgElementInstanceMouseEnter
  = unsafeEventName (toJSString "mouseenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.mouseLeave Mozilla SVGElementInstance.mouseLeave documentation> 
svgElementInstanceMouseLeave ::
                             (IsSVGElementInstance self, IsEventTarget self) =>
                               EventName self MouseEvent
svgElementInstanceMouseLeave
  = unsafeEventName (toJSString "mouseleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.mouseMove Mozilla SVGElementInstance.mouseMove documentation> 
svgElementInstanceMouseMove ::
                            (IsSVGElementInstance self, IsEventTarget self) =>
                              EventName self MouseEvent
svgElementInstanceMouseMove
  = unsafeEventName (toJSString "mousemove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.mouseOut Mozilla SVGElementInstance.mouseOut documentation> 
svgElementInstanceMouseOut ::
                           (IsSVGElementInstance self, IsEventTarget self) =>
                             EventName self MouseEvent
svgElementInstanceMouseOut
  = unsafeEventName (toJSString "mouseout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.mouseOver Mozilla SVGElementInstance.mouseOver documentation> 
svgElementInstanceMouseOver ::
                            (IsSVGElementInstance self, IsEventTarget self) =>
                              EventName self MouseEvent
svgElementInstanceMouseOver
  = unsafeEventName (toJSString "mouseover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.mouseUp Mozilla SVGElementInstance.mouseUp documentation> 
svgElementInstanceMouseUp ::
                          (IsSVGElementInstance self, IsEventTarget self) =>
                            EventName self MouseEvent
svgElementInstanceMouseUp = unsafeEventName (toJSString "mouseup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.mouseWheel Mozilla SVGElementInstance.mouseWheel documentation> 
svgElementInstanceMouseWheel ::
                             (IsSVGElementInstance self, IsEventTarget self) =>
                               EventName self MouseEvent
svgElementInstanceMouseWheel
  = unsafeEventName (toJSString "mousewheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.wheel Mozilla SVGElementInstance.wheel documentation> 
svgElementInstanceWheel ::
                        (IsSVGElementInstance self, IsEventTarget self) =>
                          EventName self WheelEvent
svgElementInstanceWheel = unsafeEventName (toJSString "wheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.beforeCut Mozilla SVGElementInstance.beforeCut documentation> 
svgElementInstanceBeforeCut ::
                            (IsSVGElementInstance self, IsEventTarget self) =>
                              EventName self Event
svgElementInstanceBeforeCut
  = unsafeEventName (toJSString "beforecut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.cut Mozilla SVGElementInstance.cut documentation> 
svgElementInstanceCut ::
                      (IsSVGElementInstance self, IsEventTarget self) =>
                        EventName self Event
svgElementInstanceCut = unsafeEventName (toJSString "cut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.beforeCopy Mozilla SVGElementInstance.beforeCopy documentation> 
svgElementInstanceBeforeCopy ::
                             (IsSVGElementInstance self, IsEventTarget self) =>
                               EventName self Event
svgElementInstanceBeforeCopy
  = unsafeEventName (toJSString "beforecopy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.copy Mozilla SVGElementInstance.copy documentation> 
svgElementInstanceCopy ::
                       (IsSVGElementInstance self, IsEventTarget self) =>
                         EventName self Event
svgElementInstanceCopy = unsafeEventName (toJSString "copy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.beforePaste Mozilla SVGElementInstance.beforePaste documentation> 
svgElementInstanceBeforePaste ::
                              (IsSVGElementInstance self, IsEventTarget self) =>
                                EventName self Event
svgElementInstanceBeforePaste
  = unsafeEventName (toJSString "beforepaste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.paste Mozilla SVGElementInstance.paste documentation> 
svgElementInstancePaste ::
                        (IsSVGElementInstance self, IsEventTarget self) =>
                          EventName self Event
svgElementInstancePaste = unsafeEventName (toJSString "paste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.dragEnter Mozilla SVGElementInstance.dragEnter documentation> 
svgElementInstanceDragEnter ::
                            (IsSVGElementInstance self, IsEventTarget self) =>
                              EventName self MouseEvent
svgElementInstanceDragEnter
  = unsafeEventName (toJSString "dragenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.dragOver Mozilla SVGElementInstance.dragOver documentation> 
svgElementInstanceDragOver ::
                           (IsSVGElementInstance self, IsEventTarget self) =>
                             EventName self MouseEvent
svgElementInstanceDragOver
  = unsafeEventName (toJSString "dragover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.dragLeave Mozilla SVGElementInstance.dragLeave documentation> 
svgElementInstanceDragLeave ::
                            (IsSVGElementInstance self, IsEventTarget self) =>
                              EventName self MouseEvent
svgElementInstanceDragLeave
  = unsafeEventName (toJSString "dragleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.drop Mozilla SVGElementInstance.drop documentation> 
svgElementInstanceDrop ::
                       (IsSVGElementInstance self, IsEventTarget self) =>
                         EventName self MouseEvent
svgElementInstanceDrop = unsafeEventName (toJSString "drop")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.dragStart Mozilla SVGElementInstance.dragStart documentation> 
svgElementInstanceDragStart ::
                            (IsSVGElementInstance self, IsEventTarget self) =>
                              EventName self MouseEvent
svgElementInstanceDragStart
  = unsafeEventName (toJSString "dragstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.drag Mozilla SVGElementInstance.drag documentation> 
svgElementInstanceDrag ::
                       (IsSVGElementInstance self, IsEventTarget self) =>
                         EventName self MouseEvent
svgElementInstanceDrag = unsafeEventName (toJSString "drag")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.dragEnd Mozilla SVGElementInstance.dragEnd documentation> 
svgElementInstanceDragEnd ::
                          (IsSVGElementInstance self, IsEventTarget self) =>
                            EventName self MouseEvent
svgElementInstanceDragEnd = unsafeEventName (toJSString "dragend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.reset Mozilla SVGElementInstance.reset documentation> 
svgElementInstanceReset ::
                        (IsSVGElementInstance self, IsEventTarget self) =>
                          EventName self Event
svgElementInstanceReset = unsafeEventName (toJSString "reset")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.resize Mozilla SVGElementInstance.resize documentation> 
svgElementInstanceResize ::
                         (IsSVGElementInstance self, IsEventTarget self) =>
                           EventName self UIEvent
svgElementInstanceResize = unsafeEventName (toJSString "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.scroll Mozilla SVGElementInstance.scroll documentation> 
svgElementInstanceScroll ::
                         (IsSVGElementInstance self, IsEventTarget self) =>
                           EventName self UIEvent
svgElementInstanceScroll = unsafeEventName (toJSString "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.search Mozilla SVGElementInstance.search documentation> 
svgElementInstanceSearch ::
                         (IsSVGElementInstance self, IsEventTarget self) =>
                           EventName self Event
svgElementInstanceSearch = unsafeEventName (toJSString "search")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.select Mozilla SVGElementInstance.select documentation> 
svgElementInstanceSelect ::
                         (IsSVGElementInstance self, IsEventTarget self) =>
                           EventName self UIEvent
svgElementInstanceSelect = unsafeEventName (toJSString "select")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.selectStart Mozilla SVGElementInstance.selectStart documentation> 
svgElementInstanceSelectStart ::
                              (IsSVGElementInstance self, IsEventTarget self) =>
                                EventName self Event
svgElementInstanceSelectStart
  = unsafeEventName (toJSString "selectstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.submit Mozilla SVGElementInstance.submit documentation> 
svgElementInstanceSubmit ::
                         (IsSVGElementInstance self, IsEventTarget self) =>
                           EventName self Event
svgElementInstanceSubmit = unsafeEventName (toJSString "submit")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.unload Mozilla SVGElementInstance.unload documentation> 
svgElementInstanceUnload ::
                         (IsSVGElementInstance self, IsEventTarget self) =>
                           EventName self UIEvent
svgElementInstanceUnload = unsafeEventName (toJSString "unload")
#else
module GHCJS.DOM.SVGElementInstance (
  ) where
#endif
