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
        svgElementInstanceGetNextSibling, svgElementInstanceOnabort,
        svgElementInstanceOnblur, svgElementInstanceOnchange,
        svgElementInstanceOnclick, svgElementInstanceOncontextmenu,
        svgElementInstanceOndblclick, svgElementInstanceOnerror,
        svgElementInstanceOnfocus, svgElementInstanceOninput,
        svgElementInstanceOnkeydown, svgElementInstanceOnkeypress,
        svgElementInstanceOnkeyup, svgElementInstanceOnload,
        svgElementInstanceOnmousedown, svgElementInstanceOnmouseenter,
        svgElementInstanceOnmouseleave, svgElementInstanceOnmousemove,
        svgElementInstanceOnmouseout, svgElementInstanceOnmouseover,
        svgElementInstanceOnmouseup, svgElementInstanceOnmousewheel,
        svgElementInstanceOnwheel, svgElementInstanceOnbeforecut,
        svgElementInstanceOncut, svgElementInstanceOnbeforecopy,
        svgElementInstanceOncopy, svgElementInstanceOnbeforepaste,
        svgElementInstanceOnpaste, svgElementInstanceOndragenter,
        svgElementInstanceOndragover, svgElementInstanceOndragleave,
        svgElementInstanceOndrop, svgElementInstanceOndragstart,
        svgElementInstanceOndrag, svgElementInstanceOndragend,
        svgElementInstanceOnreset, svgElementInstanceOnresize,
        svgElementInstanceOnscroll, svgElementInstanceOnsearch,
        svgElementInstanceOnselect, svgElementInstanceOnselectstart,
        svgElementInstanceOnsubmit, svgElementInstanceOnunload,
        SVGElementInstance, IsSVGElementInstance, castToSVGElementInstance,
        gTypeSVGElementInstance, toSVGElementInstance)
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

 
foreign import javascript unsafe "$1[\"correspondingElement\"]"
        ghcjs_dom_svg_element_instance_get_corresponding_element ::
        JSRef SVGElementInstance -> IO (JSRef SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.correspondingElement Mozilla SVGElementInstance.correspondingElement documentation> 
svgElementInstanceGetCorrespondingElement ::
                                          (IsSVGElementInstance self) =>
                                            self -> IO (Maybe SVGElement)
svgElementInstanceGetCorrespondingElement self
  = (ghcjs_dom_svg_element_instance_get_corresponding_element
       (unSVGElementInstance (toSVGElementInstance self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"correspondingUseElement\"]"
        ghcjs_dom_svg_element_instance_get_corresponding_use_element ::
        JSRef SVGElementInstance -> IO (JSRef SVGUseElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.correspondingUseElement Mozilla SVGElementInstance.correspondingUseElement documentation> 
svgElementInstanceGetCorrespondingUseElement ::
                                             (IsSVGElementInstance self) =>
                                               self -> IO (Maybe SVGUseElement)
svgElementInstanceGetCorrespondingUseElement self
  = (ghcjs_dom_svg_element_instance_get_corresponding_use_element
       (unSVGElementInstance (toSVGElementInstance self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"parentNode\"]"
        ghcjs_dom_svg_element_instance_get_parent_node ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.parentNode Mozilla SVGElementInstance.parentNode documentation> 
svgElementInstanceGetParentNode ::
                                (IsSVGElementInstance self) =>
                                  self -> IO (Maybe SVGElementInstance)
svgElementInstanceGetParentNode self
  = (ghcjs_dom_svg_element_instance_get_parent_node
       (unSVGElementInstance (toSVGElementInstance self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"childNodes\"]"
        ghcjs_dom_svg_element_instance_get_child_nodes ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstanceList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.childNodes Mozilla SVGElementInstance.childNodes documentation> 
svgElementInstanceGetChildNodes ::
                                (IsSVGElementInstance self) =>
                                  self -> IO (Maybe SVGElementInstanceList)
svgElementInstanceGetChildNodes self
  = (ghcjs_dom_svg_element_instance_get_child_nodes
       (unSVGElementInstance (toSVGElementInstance self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"firstChild\"]"
        ghcjs_dom_svg_element_instance_get_first_child ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.firstChild Mozilla SVGElementInstance.firstChild documentation> 
svgElementInstanceGetFirstChild ::
                                (IsSVGElementInstance self) =>
                                  self -> IO (Maybe SVGElementInstance)
svgElementInstanceGetFirstChild self
  = (ghcjs_dom_svg_element_instance_get_first_child
       (unSVGElementInstance (toSVGElementInstance self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"lastChild\"]"
        ghcjs_dom_svg_element_instance_get_last_child ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.lastChild Mozilla SVGElementInstance.lastChild documentation> 
svgElementInstanceGetLastChild ::
                               (IsSVGElementInstance self) =>
                                 self -> IO (Maybe SVGElementInstance)
svgElementInstanceGetLastChild self
  = (ghcjs_dom_svg_element_instance_get_last_child
       (unSVGElementInstance (toSVGElementInstance self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"previousSibling\"]"
        ghcjs_dom_svg_element_instance_get_previous_sibling ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.previousSibling Mozilla SVGElementInstance.previousSibling documentation> 
svgElementInstanceGetPreviousSibling ::
                                     (IsSVGElementInstance self) =>
                                       self -> IO (Maybe SVGElementInstance)
svgElementInstanceGetPreviousSibling self
  = (ghcjs_dom_svg_element_instance_get_previous_sibling
       (unSVGElementInstance (toSVGElementInstance self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"nextSibling\"]"
        ghcjs_dom_svg_element_instance_get_next_sibling ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.nextSibling Mozilla SVGElementInstance.nextSibling documentation> 
svgElementInstanceGetNextSibling ::
                                 (IsSVGElementInstance self) =>
                                   self -> IO (Maybe SVGElementInstance)
svgElementInstanceGetNextSibling self
  = (ghcjs_dom_svg_element_instance_get_next_sibling
       (unSVGElementInstance (toSVGElementInstance self)))
      >>= fromJSRef

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onabort Mozilla SVGElementInstance.onabort documentation> 
svgElementInstanceOnabort ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnabort = (connect "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onblur Mozilla SVGElementInstance.onblur documentation> 
svgElementInstanceOnblur ::
                         (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnblur = (connect "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onchange Mozilla SVGElementInstance.onchange documentation> 
svgElementInstanceOnchange ::
                           (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnchange = (connect "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onclick Mozilla SVGElementInstance.onclick documentation> 
svgElementInstanceOnclick ::
                          (IsSVGElementInstance self) =>
                            Signal self (EventM MouseEvent self ())
svgElementInstanceOnclick = (connect "click")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.oncontextmenu Mozilla SVGElementInstance.oncontextmenu documentation> 
svgElementInstanceOncontextmenu ::
                                (IsSVGElementInstance self) =>
                                  Signal self (EventM MouseEvent self ())
svgElementInstanceOncontextmenu = (connect "contextmenu")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.ondblclick Mozilla SVGElementInstance.ondblclick documentation> 
svgElementInstanceOndblclick ::
                             (IsSVGElementInstance self) =>
                               Signal self (EventM MouseEvent self ())
svgElementInstanceOndblclick = (connect "dblclick")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onerror Mozilla SVGElementInstance.onerror documentation> 
svgElementInstanceOnerror ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnerror = (connect "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onfocus Mozilla SVGElementInstance.onfocus documentation> 
svgElementInstanceOnfocus ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnfocus = (connect "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.oninput Mozilla SVGElementInstance.oninput documentation> 
svgElementInstanceOninput ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOninput = (connect "input")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onkeydown Mozilla SVGElementInstance.onkeydown documentation> 
svgElementInstanceOnkeydown ::
                            (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnkeydown = (connect "keydown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onkeypress Mozilla SVGElementInstance.onkeypress documentation> 
svgElementInstanceOnkeypress ::
                             (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnkeypress = (connect "keypress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onkeyup Mozilla SVGElementInstance.onkeyup documentation> 
svgElementInstanceOnkeyup ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnkeyup = (connect "keyup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onload Mozilla SVGElementInstance.onload documentation> 
svgElementInstanceOnload ::
                         (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnload = (connect "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onmousedown Mozilla SVGElementInstance.onmousedown documentation> 
svgElementInstanceOnmousedown ::
                              (IsSVGElementInstance self) =>
                                Signal self (EventM MouseEvent self ())
svgElementInstanceOnmousedown = (connect "mousedown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onmouseenter Mozilla SVGElementInstance.onmouseenter documentation> 
svgElementInstanceOnmouseenter ::
                               (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnmouseenter = (connect "mouseenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onmouseleave Mozilla SVGElementInstance.onmouseleave documentation> 
svgElementInstanceOnmouseleave ::
                               (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnmouseleave = (connect "mouseleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onmousemove Mozilla SVGElementInstance.onmousemove documentation> 
svgElementInstanceOnmousemove ::
                              (IsSVGElementInstance self) =>
                                Signal self (EventM MouseEvent self ())
svgElementInstanceOnmousemove = (connect "mousemove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onmouseout Mozilla SVGElementInstance.onmouseout documentation> 
svgElementInstanceOnmouseout ::
                             (IsSVGElementInstance self) =>
                               Signal self (EventM MouseEvent self ())
svgElementInstanceOnmouseout = (connect "mouseout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onmouseover Mozilla SVGElementInstance.onmouseover documentation> 
svgElementInstanceOnmouseover ::
                              (IsSVGElementInstance self) =>
                                Signal self (EventM MouseEvent self ())
svgElementInstanceOnmouseover = (connect "mouseover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onmouseup Mozilla SVGElementInstance.onmouseup documentation> 
svgElementInstanceOnmouseup ::
                            (IsSVGElementInstance self) =>
                              Signal self (EventM MouseEvent self ())
svgElementInstanceOnmouseup = (connect "mouseup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onmousewheel Mozilla SVGElementInstance.onmousewheel documentation> 
svgElementInstanceOnmousewheel ::
                               (IsSVGElementInstance self) =>
                                 Signal self (EventM MouseEvent self ())
svgElementInstanceOnmousewheel = (connect "mousewheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onwheel Mozilla SVGElementInstance.onwheel documentation> 
svgElementInstanceOnwheel ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnwheel = (connect "wheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onbeforecut Mozilla SVGElementInstance.onbeforecut documentation> 
svgElementInstanceOnbeforecut ::
                              (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnbeforecut = (connect "beforecut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.oncut Mozilla SVGElementInstance.oncut documentation> 
svgElementInstanceOncut ::
                        (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOncut = (connect "cut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onbeforecopy Mozilla SVGElementInstance.onbeforecopy documentation> 
svgElementInstanceOnbeforecopy ::
                               (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnbeforecopy = (connect "beforecopy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.oncopy Mozilla SVGElementInstance.oncopy documentation> 
svgElementInstanceOncopy ::
                         (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOncopy = (connect "copy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onbeforepaste Mozilla SVGElementInstance.onbeforepaste documentation> 
svgElementInstanceOnbeforepaste ::
                                (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnbeforepaste = (connect "beforepaste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onpaste Mozilla SVGElementInstance.onpaste documentation> 
svgElementInstanceOnpaste ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnpaste = (connect "paste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.ondragenter Mozilla SVGElementInstance.ondragenter documentation> 
svgElementInstanceOndragenter ::
                              (IsSVGElementInstance self) =>
                                Signal self (EventM MouseEvent self ())
svgElementInstanceOndragenter = (connect "dragenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.ondragover Mozilla SVGElementInstance.ondragover documentation> 
svgElementInstanceOndragover ::
                             (IsSVGElementInstance self) =>
                               Signal self (EventM MouseEvent self ())
svgElementInstanceOndragover = (connect "dragover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.ondragleave Mozilla SVGElementInstance.ondragleave documentation> 
svgElementInstanceOndragleave ::
                              (IsSVGElementInstance self) =>
                                Signal self (EventM MouseEvent self ())
svgElementInstanceOndragleave = (connect "dragleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.ondrop Mozilla SVGElementInstance.ondrop documentation> 
svgElementInstanceOndrop ::
                         (IsSVGElementInstance self) =>
                           Signal self (EventM MouseEvent self ())
svgElementInstanceOndrop = (connect "drop")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.ondragstart Mozilla SVGElementInstance.ondragstart documentation> 
svgElementInstanceOndragstart ::
                              (IsSVGElementInstance self) =>
                                Signal self (EventM MouseEvent self ())
svgElementInstanceOndragstart = (connect "dragstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.ondrag Mozilla SVGElementInstance.ondrag documentation> 
svgElementInstanceOndrag ::
                         (IsSVGElementInstance self) =>
                           Signal self (EventM MouseEvent self ())
svgElementInstanceOndrag = (connect "drag")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.ondragend Mozilla SVGElementInstance.ondragend documentation> 
svgElementInstanceOndragend ::
                            (IsSVGElementInstance self) =>
                              Signal self (EventM MouseEvent self ())
svgElementInstanceOndragend = (connect "dragend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onreset Mozilla SVGElementInstance.onreset documentation> 
svgElementInstanceOnreset ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnreset = (connect "reset")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onresize Mozilla SVGElementInstance.onresize documentation> 
svgElementInstanceOnresize ::
                           (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnresize = (connect "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onscroll Mozilla SVGElementInstance.onscroll documentation> 
svgElementInstanceOnscroll ::
                           (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnscroll = (connect "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onsearch Mozilla SVGElementInstance.onsearch documentation> 
svgElementInstanceOnsearch ::
                           (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnsearch = (connect "search")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onselect Mozilla SVGElementInstance.onselect documentation> 
svgElementInstanceOnselect ::
                           (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnselect = (connect "select")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onselectstart Mozilla SVGElementInstance.onselectstart documentation> 
svgElementInstanceOnselectstart ::
                                (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnselectstart = (connect "selectstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onsubmit Mozilla SVGElementInstance.onsubmit documentation> 
svgElementInstanceOnsubmit ::
                           (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnsubmit = (connect "submit")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance.onunload Mozilla SVGElementInstance.onunload documentation> 
svgElementInstanceOnunload ::
                           (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnunload = (connect "unload")
#else
module GHCJS.DOM.SVGElementInstance (
  ) where
#endif
