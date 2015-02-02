{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLIFrameElement
       (ghcjs_dom_html_iframe_element_get_svg_document,
        htmliFrameElementGetSVGDocument,
        ghcjs_dom_html_iframe_element_set_align, htmliFrameElementSetAlign,
        ghcjs_dom_html_iframe_element_get_align, htmliFrameElementGetAlign,
        ghcjs_dom_html_iframe_element_set_frame_border,
        htmliFrameElementSetFrameBorder,
        ghcjs_dom_html_iframe_element_get_frame_border,
        htmliFrameElementGetFrameBorder,
        ghcjs_dom_html_iframe_element_set_height,
        htmliFrameElementSetHeight,
        ghcjs_dom_html_iframe_element_get_height,
        htmliFrameElementGetHeight,
        ghcjs_dom_html_iframe_element_set_long_desc,
        htmliFrameElementSetLongDesc,
        ghcjs_dom_html_iframe_element_get_long_desc,
        htmliFrameElementGetLongDesc,
        ghcjs_dom_html_iframe_element_set_margin_height,
        htmliFrameElementSetMarginHeight,
        ghcjs_dom_html_iframe_element_get_margin_height,
        htmliFrameElementGetMarginHeight,
        ghcjs_dom_html_iframe_element_set_margin_width,
        htmliFrameElementSetMarginWidth,
        ghcjs_dom_html_iframe_element_get_margin_width,
        htmliFrameElementGetMarginWidth,
        ghcjs_dom_html_iframe_element_set_name, htmliFrameElementSetName,
        ghcjs_dom_html_iframe_element_get_name, htmliFrameElementGetName,
        ghcjs_dom_html_iframe_element_set_sandbox,
        htmliFrameElementSetSandbox,
        ghcjs_dom_html_iframe_element_get_sandbox,
        htmliFrameElementGetSandbox,
        ghcjs_dom_html_iframe_element_set_scrolling,
        htmliFrameElementSetScrolling,
        ghcjs_dom_html_iframe_element_get_scrolling,
        htmliFrameElementGetScrolling,
        ghcjs_dom_html_iframe_element_set_src, htmliFrameElementSetSrc,
        ghcjs_dom_html_iframe_element_get_src, htmliFrameElementGetSrc,
        ghcjs_dom_html_iframe_element_set_srcdoc,
        htmliFrameElementSetSrcdoc,
        ghcjs_dom_html_iframe_element_get_srcdoc,
        htmliFrameElementGetSrcdoc,
        ghcjs_dom_html_iframe_element_set_width, htmliFrameElementSetWidth,
        ghcjs_dom_html_iframe_element_get_width, htmliFrameElementGetWidth,
        ghcjs_dom_html_iframe_element_get_content_document,
        htmliFrameElementGetContentDocument,
        ghcjs_dom_html_iframe_element_get_content_window,
        htmliFrameElementGetContentWindow, HTMLIFrameElement,
        IsHTMLIFrameElement, castToHTMLIFrameElement,
        gTypeHTMLIFrameElement, toHTMLIFrameElement)
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

 
foreign import javascript unsafe "$1[\"getSVGDocument\"]()"
        ghcjs_dom_html_iframe_element_get_svg_document ::
        JSRef HTMLIFrameElement -> IO (JSRef SVGDocument)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.svgDocument Mozilla HTMLIFrameElement.svgDocument documentation> 
htmliFrameElementGetSVGDocument ::
                                (IsHTMLIFrameElement self) => self -> IO (Maybe SVGDocument)
htmliFrameElementGetSVGDocument self
  = (ghcjs_dom_html_iframe_element_get_svg_document
       (unHTMLIFrameElement (toHTMLIFrameElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_iframe_element_set_align ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.align Mozilla HTMLIFrameElement.align documentation> 
htmliFrameElementSetAlign ::
                          (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetAlign self val
  = ghcjs_dom_html_iframe_element_set_align
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_iframe_element_get_align ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.align Mozilla HTMLIFrameElement.align documentation> 
htmliFrameElementGetAlign ::
                          (IsHTMLIFrameElement self, FromJSString result) =>
                            self -> IO result
htmliFrameElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_align
         (unHTMLIFrameElement (toHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"frameBorder\"] = $2;"
        ghcjs_dom_html_iframe_element_set_frame_border ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.frameBorder Mozilla HTMLIFrameElement.frameBorder documentation> 
htmliFrameElementSetFrameBorder ::
                                (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetFrameBorder self val
  = ghcjs_dom_html_iframe_element_set_frame_border
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"frameBorder\"]"
        ghcjs_dom_html_iframe_element_get_frame_border ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.frameBorder Mozilla HTMLIFrameElement.frameBorder documentation> 
htmliFrameElementGetFrameBorder ::
                                (IsHTMLIFrameElement self, FromJSString result) =>
                                  self -> IO result
htmliFrameElementGetFrameBorder self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_frame_border
         (unHTMLIFrameElement (toHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_iframe_element_set_height ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.height Mozilla HTMLIFrameElement.height documentation> 
htmliFrameElementSetHeight ::
                           (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetHeight self val
  = ghcjs_dom_html_iframe_element_set_height
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_iframe_element_get_height ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.height Mozilla HTMLIFrameElement.height documentation> 
htmliFrameElementGetHeight ::
                           (IsHTMLIFrameElement self, FromJSString result) =>
                             self -> IO result
htmliFrameElementGetHeight self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_height
         (unHTMLIFrameElement (toHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"longDesc\"] = $2;"
        ghcjs_dom_html_iframe_element_set_long_desc ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.longDesc Mozilla HTMLIFrameElement.longDesc documentation> 
htmliFrameElementSetLongDesc ::
                             (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetLongDesc self val
  = ghcjs_dom_html_iframe_element_set_long_desc
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"longDesc\"]"
        ghcjs_dom_html_iframe_element_get_long_desc ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.longDesc Mozilla HTMLIFrameElement.longDesc documentation> 
htmliFrameElementGetLongDesc ::
                             (IsHTMLIFrameElement self, FromJSString result) =>
                               self -> IO result
htmliFrameElementGetLongDesc self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_long_desc
         (unHTMLIFrameElement (toHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"marginHeight\"] = $2;"
        ghcjs_dom_html_iframe_element_set_margin_height ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginHeight Mozilla HTMLIFrameElement.marginHeight documentation> 
htmliFrameElementSetMarginHeight ::
                                 (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetMarginHeight self val
  = ghcjs_dom_html_iframe_element_set_margin_height
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"marginHeight\"]"
        ghcjs_dom_html_iframe_element_get_margin_height ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginHeight Mozilla HTMLIFrameElement.marginHeight documentation> 
htmliFrameElementGetMarginHeight ::
                                 (IsHTMLIFrameElement self, FromJSString result) =>
                                   self -> IO result
htmliFrameElementGetMarginHeight self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_margin_height
         (unHTMLIFrameElement (toHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"marginWidth\"] = $2;"
        ghcjs_dom_html_iframe_element_set_margin_width ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginWidth Mozilla HTMLIFrameElement.marginWidth documentation> 
htmliFrameElementSetMarginWidth ::
                                (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetMarginWidth self val
  = ghcjs_dom_html_iframe_element_set_margin_width
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"marginWidth\"]"
        ghcjs_dom_html_iframe_element_get_margin_width ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginWidth Mozilla HTMLIFrameElement.marginWidth documentation> 
htmliFrameElementGetMarginWidth ::
                                (IsHTMLIFrameElement self, FromJSString result) =>
                                  self -> IO result
htmliFrameElementGetMarginWidth self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_margin_width
         (unHTMLIFrameElement (toHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_iframe_element_set_name ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.name Mozilla HTMLIFrameElement.name documentation> 
htmliFrameElementSetName ::
                         (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetName self val
  = ghcjs_dom_html_iframe_element_set_name
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_iframe_element_get_name ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.name Mozilla HTMLIFrameElement.name documentation> 
htmliFrameElementGetName ::
                         (IsHTMLIFrameElement self, FromJSString result) =>
                           self -> IO result
htmliFrameElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_name
         (unHTMLIFrameElement (toHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"sandbox\"] = $2;"
        ghcjs_dom_html_iframe_element_set_sandbox ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.sandbox Mozilla HTMLIFrameElement.sandbox documentation> 
htmliFrameElementSetSandbox ::
                            (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetSandbox self val
  = ghcjs_dom_html_iframe_element_set_sandbox
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"sandbox\"]"
        ghcjs_dom_html_iframe_element_get_sandbox ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.sandbox Mozilla HTMLIFrameElement.sandbox documentation> 
htmliFrameElementGetSandbox ::
                            (IsHTMLIFrameElement self, FromJSString result) =>
                              self -> IO result
htmliFrameElementGetSandbox self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_sandbox
         (unHTMLIFrameElement (toHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"scrolling\"] = $2;"
        ghcjs_dom_html_iframe_element_set_scrolling ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.scrolling Mozilla HTMLIFrameElement.scrolling documentation> 
htmliFrameElementSetScrolling ::
                              (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetScrolling self val
  = ghcjs_dom_html_iframe_element_set_scrolling
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"scrolling\"]"
        ghcjs_dom_html_iframe_element_get_scrolling ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.scrolling Mozilla HTMLIFrameElement.scrolling documentation> 
htmliFrameElementGetScrolling ::
                              (IsHTMLIFrameElement self, FromJSString result) =>
                                self -> IO result
htmliFrameElementGetScrolling self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_scrolling
         (unHTMLIFrameElement (toHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_iframe_element_set_src ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.src Mozilla HTMLIFrameElement.src documentation> 
htmliFrameElementSetSrc ::
                        (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetSrc self val
  = ghcjs_dom_html_iframe_element_set_src
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_iframe_element_get_src ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.src Mozilla HTMLIFrameElement.src documentation> 
htmliFrameElementGetSrc ::
                        (IsHTMLIFrameElement self, FromJSString result) =>
                          self -> IO result
htmliFrameElementGetSrc self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_src
         (unHTMLIFrameElement (toHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"srcdoc\"] = $2;"
        ghcjs_dom_html_iframe_element_set_srcdoc ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.srcdoc Mozilla HTMLIFrameElement.srcdoc documentation> 
htmliFrameElementSetSrcdoc ::
                           (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetSrcdoc self val
  = ghcjs_dom_html_iframe_element_set_srcdoc
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"srcdoc\"]"
        ghcjs_dom_html_iframe_element_get_srcdoc ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.srcdoc Mozilla HTMLIFrameElement.srcdoc documentation> 
htmliFrameElementGetSrcdoc ::
                           (IsHTMLIFrameElement self, FromJSString result) =>
                             self -> IO result
htmliFrameElementGetSrcdoc self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_srcdoc
         (unHTMLIFrameElement (toHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_iframe_element_set_width ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.width Mozilla HTMLIFrameElement.width documentation> 
htmliFrameElementSetWidth ::
                          (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetWidth self val
  = ghcjs_dom_html_iframe_element_set_width
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_iframe_element_get_width ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.width Mozilla HTMLIFrameElement.width documentation> 
htmliFrameElementGetWidth ::
                          (IsHTMLIFrameElement self, FromJSString result) =>
                            self -> IO result
htmliFrameElementGetWidth self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_width
         (unHTMLIFrameElement (toHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"contentDocument\"]"
        ghcjs_dom_html_iframe_element_get_content_document ::
        JSRef HTMLIFrameElement -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.contentDocument Mozilla HTMLIFrameElement.contentDocument documentation> 
htmliFrameElementGetContentDocument ::
                                    (IsHTMLIFrameElement self) => self -> IO (Maybe Document)
htmliFrameElementGetContentDocument self
  = (ghcjs_dom_html_iframe_element_get_content_document
       (unHTMLIFrameElement (toHTMLIFrameElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"contentWindow\"]"
        ghcjs_dom_html_iframe_element_get_content_window ::
        JSRef HTMLIFrameElement -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.contentWindow Mozilla HTMLIFrameElement.contentWindow documentation> 
htmliFrameElementGetContentWindow ::
                                  (IsHTMLIFrameElement self) => self -> IO (Maybe DOMWindow)
htmliFrameElementGetContentWindow self
  = (ghcjs_dom_html_iframe_element_get_content_window
       (unHTMLIFrameElement (toHTMLIFrameElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.HTMLIFrameElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLIFrameElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLIFrameElement
#endif
