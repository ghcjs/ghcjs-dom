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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"correspondingElement\"]"
        ghcjs_dom_svg_element_instance_get_corresponding_element ::
        JSRef SVGElementInstance -> IO (JSRef SVGElement)
 
svgElementInstanceGetCorrespondingElement ::
                                          (IsSVGElementInstance self) =>
                                            self -> IO (Maybe SVGElement)
svgElementInstanceGetCorrespondingElement self
  = fmap SVGElement . maybeJSNull <$>
      (ghcjs_dom_svg_element_instance_get_corresponding_element
         (unSVGElementInstance (toSVGElementInstance self)))
 
foreign import javascript unsafe "$1[\"correspondingUseElement\"]"
        ghcjs_dom_svg_element_instance_get_corresponding_use_element ::
        JSRef SVGElementInstance -> IO (JSRef SVGUseElement)
 
svgElementInstanceGetCorrespondingUseElement ::
                                             (IsSVGElementInstance self) =>
                                               self -> IO (Maybe SVGUseElement)
svgElementInstanceGetCorrespondingUseElement self
  = fmap SVGUseElement . maybeJSNull <$>
      (ghcjs_dom_svg_element_instance_get_corresponding_use_element
         (unSVGElementInstance (toSVGElementInstance self)))
 
foreign import javascript unsafe "$1[\"parentNode\"]"
        ghcjs_dom_svg_element_instance_get_parent_node ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstance)
 
svgElementInstanceGetParentNode ::
                                (IsSVGElementInstance self) =>
                                  self -> IO (Maybe SVGElementInstance)
svgElementInstanceGetParentNode self
  = fmap SVGElementInstance . maybeJSNull <$>
      (ghcjs_dom_svg_element_instance_get_parent_node
         (unSVGElementInstance (toSVGElementInstance self)))
 
foreign import javascript unsafe "$1[\"childNodes\"]"
        ghcjs_dom_svg_element_instance_get_child_nodes ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstanceList)
 
svgElementInstanceGetChildNodes ::
                                (IsSVGElementInstance self) =>
                                  self -> IO (Maybe SVGElementInstanceList)
svgElementInstanceGetChildNodes self
  = fmap SVGElementInstanceList . maybeJSNull <$>
      (ghcjs_dom_svg_element_instance_get_child_nodes
         (unSVGElementInstance (toSVGElementInstance self)))
 
foreign import javascript unsafe "$1[\"firstChild\"]"
        ghcjs_dom_svg_element_instance_get_first_child ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstance)
 
svgElementInstanceGetFirstChild ::
                                (IsSVGElementInstance self) =>
                                  self -> IO (Maybe SVGElementInstance)
svgElementInstanceGetFirstChild self
  = fmap SVGElementInstance . maybeJSNull <$>
      (ghcjs_dom_svg_element_instance_get_first_child
         (unSVGElementInstance (toSVGElementInstance self)))
 
foreign import javascript unsafe "$1[\"lastChild\"]"
        ghcjs_dom_svg_element_instance_get_last_child ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstance)
 
svgElementInstanceGetLastChild ::
                               (IsSVGElementInstance self) =>
                                 self -> IO (Maybe SVGElementInstance)
svgElementInstanceGetLastChild self
  = fmap SVGElementInstance . maybeJSNull <$>
      (ghcjs_dom_svg_element_instance_get_last_child
         (unSVGElementInstance (toSVGElementInstance self)))
 
foreign import javascript unsafe "$1[\"previousSibling\"]"
        ghcjs_dom_svg_element_instance_get_previous_sibling ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstance)
 
svgElementInstanceGetPreviousSibling ::
                                     (IsSVGElementInstance self) =>
                                       self -> IO (Maybe SVGElementInstance)
svgElementInstanceGetPreviousSibling self
  = fmap SVGElementInstance . maybeJSNull <$>
      (ghcjs_dom_svg_element_instance_get_previous_sibling
         (unSVGElementInstance (toSVGElementInstance self)))
 
foreign import javascript unsafe "$1[\"nextSibling\"]"
        ghcjs_dom_svg_element_instance_get_next_sibling ::
        JSRef SVGElementInstance -> IO (JSRef SVGElementInstance)
 
svgElementInstanceGetNextSibling ::
                                 (IsSVGElementInstance self) =>
                                   self -> IO (Maybe SVGElementInstance)
svgElementInstanceGetNextSibling self
  = fmap SVGElementInstance . maybeJSNull <$>
      (ghcjs_dom_svg_element_instance_get_next_sibling
         (unSVGElementInstance (toSVGElementInstance self)))
 
svgElementInstanceOnabort ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnabort = (connect "abort")
 
svgElementInstanceOnblur ::
                         (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnblur = (connect "blur")
 
svgElementInstanceOnchange ::
                           (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnchange = (connect "change")
 
svgElementInstanceOnclick ::
                          (IsSVGElementInstance self) =>
                            Signal self (EventM MouseEvent self ())
svgElementInstanceOnclick = (connect "click")
 
svgElementInstanceOncontextmenu ::
                                (IsSVGElementInstance self) =>
                                  Signal self (EventM MouseEvent self ())
svgElementInstanceOncontextmenu = (connect "contextmenu")
 
svgElementInstanceOndblclick ::
                             (IsSVGElementInstance self) =>
                               Signal self (EventM MouseEvent self ())
svgElementInstanceOndblclick = (connect "dblclick")
 
svgElementInstanceOnerror ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnerror = (connect "error")
 
svgElementInstanceOnfocus ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnfocus = (connect "focus")
 
svgElementInstanceOninput ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOninput = (connect "input")
 
svgElementInstanceOnkeydown ::
                            (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnkeydown = (connect "keydown")
 
svgElementInstanceOnkeypress ::
                             (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnkeypress = (connect "keypress")
 
svgElementInstanceOnkeyup ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnkeyup = (connect "keyup")
 
svgElementInstanceOnload ::
                         (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnload = (connect "load")
 
svgElementInstanceOnmousedown ::
                              (IsSVGElementInstance self) =>
                                Signal self (EventM MouseEvent self ())
svgElementInstanceOnmousedown = (connect "mousedown")
 
svgElementInstanceOnmouseenter ::
                               (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnmouseenter = (connect "mouseenter")
 
svgElementInstanceOnmouseleave ::
                               (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnmouseleave = (connect "mouseleave")
 
svgElementInstanceOnmousemove ::
                              (IsSVGElementInstance self) =>
                                Signal self (EventM MouseEvent self ())
svgElementInstanceOnmousemove = (connect "mousemove")
 
svgElementInstanceOnmouseout ::
                             (IsSVGElementInstance self) =>
                               Signal self (EventM MouseEvent self ())
svgElementInstanceOnmouseout = (connect "mouseout")
 
svgElementInstanceOnmouseover ::
                              (IsSVGElementInstance self) =>
                                Signal self (EventM MouseEvent self ())
svgElementInstanceOnmouseover = (connect "mouseover")
 
svgElementInstanceOnmouseup ::
                            (IsSVGElementInstance self) =>
                              Signal self (EventM MouseEvent self ())
svgElementInstanceOnmouseup = (connect "mouseup")
 
svgElementInstanceOnmousewheel ::
                               (IsSVGElementInstance self) =>
                                 Signal self (EventM MouseEvent self ())
svgElementInstanceOnmousewheel = (connect "mousewheel")
 
svgElementInstanceOnwheel ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnwheel = (connect "wheel")
 
svgElementInstanceOnbeforecut ::
                              (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnbeforecut = (connect "beforecut")
 
svgElementInstanceOncut ::
                        (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOncut = (connect "cut")
 
svgElementInstanceOnbeforecopy ::
                               (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnbeforecopy = (connect "beforecopy")
 
svgElementInstanceOncopy ::
                         (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOncopy = (connect "copy")
 
svgElementInstanceOnbeforepaste ::
                                (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnbeforepaste = (connect "beforepaste")
 
svgElementInstanceOnpaste ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnpaste = (connect "paste")
 
svgElementInstanceOndragenter ::
                              (IsSVGElementInstance self) =>
                                Signal self (EventM MouseEvent self ())
svgElementInstanceOndragenter = (connect "dragenter")
 
svgElementInstanceOndragover ::
                             (IsSVGElementInstance self) =>
                               Signal self (EventM MouseEvent self ())
svgElementInstanceOndragover = (connect "dragover")
 
svgElementInstanceOndragleave ::
                              (IsSVGElementInstance self) =>
                                Signal self (EventM MouseEvent self ())
svgElementInstanceOndragleave = (connect "dragleave")
 
svgElementInstanceOndrop ::
                         (IsSVGElementInstance self) =>
                           Signal self (EventM MouseEvent self ())
svgElementInstanceOndrop = (connect "drop")
 
svgElementInstanceOndragstart ::
                              (IsSVGElementInstance self) =>
                                Signal self (EventM MouseEvent self ())
svgElementInstanceOndragstart = (connect "dragstart")
 
svgElementInstanceOndrag ::
                         (IsSVGElementInstance self) =>
                           Signal self (EventM MouseEvent self ())
svgElementInstanceOndrag = (connect "drag")
 
svgElementInstanceOndragend ::
                            (IsSVGElementInstance self) =>
                              Signal self (EventM MouseEvent self ())
svgElementInstanceOndragend = (connect "dragend")
 
svgElementInstanceOnreset ::
                          (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnreset = (connect "reset")
 
svgElementInstanceOnresize ::
                           (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnresize = (connect "resize")
 
svgElementInstanceOnscroll ::
                           (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnscroll = (connect "scroll")
 
svgElementInstanceOnsearch ::
                           (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnsearch = (connect "search")
 
svgElementInstanceOnselect ::
                           (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnselect = (connect "select")
 
svgElementInstanceOnselectstart ::
                                (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnselectstart = (connect "selectstart")
 
svgElementInstanceOnsubmit ::
                           (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnsubmit = (connect "submit")
 
svgElementInstanceOnunload ::
                           (IsSVGElementInstance self) => Signal self (EventM UIEvent self ())
svgElementInstanceOnunload = (connect "unload")
#else
module GHCJS.DOM.SVGElementInstance (
  module Graphics.UI.Gtk.WebKit.DOM.SVGElementInstance
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGElementInstance
#endif
