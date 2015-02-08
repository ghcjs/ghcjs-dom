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
import Control.Monad.IO.Class (MonadIO(..))
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
                                (MonadIO m, IsHTMLIFrameElement self) =>
                                  self -> m (Maybe SVGDocument)
htmliFrameElementGetSVGDocument self
  = liftIO
      ((ghcjs_dom_html_iframe_element_get_svg_document
          (unHTMLIFrameElement (toHTMLIFrameElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_iframe_element_set_align ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.align Mozilla HTMLIFrameElement.align documentation> 
htmliFrameElementSetAlign ::
                          (MonadIO m, IsHTMLIFrameElement self, ToJSString val) =>
                            self -> val -> m ()
htmliFrameElementSetAlign self val
  = liftIO
      (ghcjs_dom_html_iframe_element_set_align
         (unHTMLIFrameElement (toHTMLIFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_iframe_element_get_align ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.align Mozilla HTMLIFrameElement.align documentation> 
htmliFrameElementGetAlign ::
                          (MonadIO m, IsHTMLIFrameElement self, FromJSString result) =>
                            self -> m result
htmliFrameElementGetAlign self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_iframe_element_get_align
            (unHTMLIFrameElement (toHTMLIFrameElement self))))
 
foreign import javascript unsafe "$1[\"frameBorder\"] = $2;"
        ghcjs_dom_html_iframe_element_set_frame_border ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.frameBorder Mozilla HTMLIFrameElement.frameBorder documentation> 
htmliFrameElementSetFrameBorder ::
                                (MonadIO m, IsHTMLIFrameElement self, ToJSString val) =>
                                  self -> val -> m ()
htmliFrameElementSetFrameBorder self val
  = liftIO
      (ghcjs_dom_html_iframe_element_set_frame_border
         (unHTMLIFrameElement (toHTMLIFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"frameBorder\"]"
        ghcjs_dom_html_iframe_element_get_frame_border ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.frameBorder Mozilla HTMLIFrameElement.frameBorder documentation> 
htmliFrameElementGetFrameBorder ::
                                (MonadIO m, IsHTMLIFrameElement self, FromJSString result) =>
                                  self -> m result
htmliFrameElementGetFrameBorder self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_iframe_element_get_frame_border
            (unHTMLIFrameElement (toHTMLIFrameElement self))))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_iframe_element_set_height ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.height Mozilla HTMLIFrameElement.height documentation> 
htmliFrameElementSetHeight ::
                           (MonadIO m, IsHTMLIFrameElement self, ToJSString val) =>
                             self -> val -> m ()
htmliFrameElementSetHeight self val
  = liftIO
      (ghcjs_dom_html_iframe_element_set_height
         (unHTMLIFrameElement (toHTMLIFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_iframe_element_get_height ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.height Mozilla HTMLIFrameElement.height documentation> 
htmliFrameElementGetHeight ::
                           (MonadIO m, IsHTMLIFrameElement self, FromJSString result) =>
                             self -> m result
htmliFrameElementGetHeight self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_iframe_element_get_height
            (unHTMLIFrameElement (toHTMLIFrameElement self))))
 
foreign import javascript unsafe "$1[\"longDesc\"] = $2;"
        ghcjs_dom_html_iframe_element_set_long_desc ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.longDesc Mozilla HTMLIFrameElement.longDesc documentation> 
htmliFrameElementSetLongDesc ::
                             (MonadIO m, IsHTMLIFrameElement self, ToJSString val) =>
                               self -> val -> m ()
htmliFrameElementSetLongDesc self val
  = liftIO
      (ghcjs_dom_html_iframe_element_set_long_desc
         (unHTMLIFrameElement (toHTMLIFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"longDesc\"]"
        ghcjs_dom_html_iframe_element_get_long_desc ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.longDesc Mozilla HTMLIFrameElement.longDesc documentation> 
htmliFrameElementGetLongDesc ::
                             (MonadIO m, IsHTMLIFrameElement self, FromJSString result) =>
                               self -> m result
htmliFrameElementGetLongDesc self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_iframe_element_get_long_desc
            (unHTMLIFrameElement (toHTMLIFrameElement self))))
 
foreign import javascript unsafe "$1[\"marginHeight\"] = $2;"
        ghcjs_dom_html_iframe_element_set_margin_height ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginHeight Mozilla HTMLIFrameElement.marginHeight documentation> 
htmliFrameElementSetMarginHeight ::
                                 (MonadIO m, IsHTMLIFrameElement self, ToJSString val) =>
                                   self -> val -> m ()
htmliFrameElementSetMarginHeight self val
  = liftIO
      (ghcjs_dom_html_iframe_element_set_margin_height
         (unHTMLIFrameElement (toHTMLIFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"marginHeight\"]"
        ghcjs_dom_html_iframe_element_get_margin_height ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginHeight Mozilla HTMLIFrameElement.marginHeight documentation> 
htmliFrameElementGetMarginHeight ::
                                 (MonadIO m, IsHTMLIFrameElement self, FromJSString result) =>
                                   self -> m result
htmliFrameElementGetMarginHeight self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_iframe_element_get_margin_height
            (unHTMLIFrameElement (toHTMLIFrameElement self))))
 
foreign import javascript unsafe "$1[\"marginWidth\"] = $2;"
        ghcjs_dom_html_iframe_element_set_margin_width ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginWidth Mozilla HTMLIFrameElement.marginWidth documentation> 
htmliFrameElementSetMarginWidth ::
                                (MonadIO m, IsHTMLIFrameElement self, ToJSString val) =>
                                  self -> val -> m ()
htmliFrameElementSetMarginWidth self val
  = liftIO
      (ghcjs_dom_html_iframe_element_set_margin_width
         (unHTMLIFrameElement (toHTMLIFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"marginWidth\"]"
        ghcjs_dom_html_iframe_element_get_margin_width ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginWidth Mozilla HTMLIFrameElement.marginWidth documentation> 
htmliFrameElementGetMarginWidth ::
                                (MonadIO m, IsHTMLIFrameElement self, FromJSString result) =>
                                  self -> m result
htmliFrameElementGetMarginWidth self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_iframe_element_get_margin_width
            (unHTMLIFrameElement (toHTMLIFrameElement self))))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_iframe_element_set_name ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.name Mozilla HTMLIFrameElement.name documentation> 
htmliFrameElementSetName ::
                         (MonadIO m, IsHTMLIFrameElement self, ToJSString val) =>
                           self -> val -> m ()
htmliFrameElementSetName self val
  = liftIO
      (ghcjs_dom_html_iframe_element_set_name
         (unHTMLIFrameElement (toHTMLIFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_iframe_element_get_name ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.name Mozilla HTMLIFrameElement.name documentation> 
htmliFrameElementGetName ::
                         (MonadIO m, IsHTMLIFrameElement self, FromJSString result) =>
                           self -> m result
htmliFrameElementGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_iframe_element_get_name
            (unHTMLIFrameElement (toHTMLIFrameElement self))))
 
foreign import javascript unsafe "$1[\"sandbox\"] = $2;"
        ghcjs_dom_html_iframe_element_set_sandbox ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.sandbox Mozilla HTMLIFrameElement.sandbox documentation> 
htmliFrameElementSetSandbox ::
                            (MonadIO m, IsHTMLIFrameElement self, ToJSString val) =>
                              self -> val -> m ()
htmliFrameElementSetSandbox self val
  = liftIO
      (ghcjs_dom_html_iframe_element_set_sandbox
         (unHTMLIFrameElement (toHTMLIFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"sandbox\"]"
        ghcjs_dom_html_iframe_element_get_sandbox ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.sandbox Mozilla HTMLIFrameElement.sandbox documentation> 
htmliFrameElementGetSandbox ::
                            (MonadIO m, IsHTMLIFrameElement self, FromJSString result) =>
                              self -> m result
htmliFrameElementGetSandbox self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_iframe_element_get_sandbox
            (unHTMLIFrameElement (toHTMLIFrameElement self))))
 
foreign import javascript unsafe "$1[\"scrolling\"] = $2;"
        ghcjs_dom_html_iframe_element_set_scrolling ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.scrolling Mozilla HTMLIFrameElement.scrolling documentation> 
htmliFrameElementSetScrolling ::
                              (MonadIO m, IsHTMLIFrameElement self, ToJSString val) =>
                                self -> val -> m ()
htmliFrameElementSetScrolling self val
  = liftIO
      (ghcjs_dom_html_iframe_element_set_scrolling
         (unHTMLIFrameElement (toHTMLIFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"scrolling\"]"
        ghcjs_dom_html_iframe_element_get_scrolling ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.scrolling Mozilla HTMLIFrameElement.scrolling documentation> 
htmliFrameElementGetScrolling ::
                              (MonadIO m, IsHTMLIFrameElement self, FromJSString result) =>
                                self -> m result
htmliFrameElementGetScrolling self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_iframe_element_get_scrolling
            (unHTMLIFrameElement (toHTMLIFrameElement self))))
 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_iframe_element_set_src ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.src Mozilla HTMLIFrameElement.src documentation> 
htmliFrameElementSetSrc ::
                        (MonadIO m, IsHTMLIFrameElement self, ToJSString val) =>
                          self -> val -> m ()
htmliFrameElementSetSrc self val
  = liftIO
      (ghcjs_dom_html_iframe_element_set_src
         (unHTMLIFrameElement (toHTMLIFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_iframe_element_get_src ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.src Mozilla HTMLIFrameElement.src documentation> 
htmliFrameElementGetSrc ::
                        (MonadIO m, IsHTMLIFrameElement self, FromJSString result) =>
                          self -> m result
htmliFrameElementGetSrc self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_iframe_element_get_src
            (unHTMLIFrameElement (toHTMLIFrameElement self))))
 
foreign import javascript unsafe "$1[\"srcdoc\"] = $2;"
        ghcjs_dom_html_iframe_element_set_srcdoc ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.srcdoc Mozilla HTMLIFrameElement.srcdoc documentation> 
htmliFrameElementSetSrcdoc ::
                           (MonadIO m, IsHTMLIFrameElement self, ToJSString val) =>
                             self -> val -> m ()
htmliFrameElementSetSrcdoc self val
  = liftIO
      (ghcjs_dom_html_iframe_element_set_srcdoc
         (unHTMLIFrameElement (toHTMLIFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"srcdoc\"]"
        ghcjs_dom_html_iframe_element_get_srcdoc ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.srcdoc Mozilla HTMLIFrameElement.srcdoc documentation> 
htmliFrameElementGetSrcdoc ::
                           (MonadIO m, IsHTMLIFrameElement self, FromJSString result) =>
                             self -> m result
htmliFrameElementGetSrcdoc self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_iframe_element_get_srcdoc
            (unHTMLIFrameElement (toHTMLIFrameElement self))))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_iframe_element_set_width ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.width Mozilla HTMLIFrameElement.width documentation> 
htmliFrameElementSetWidth ::
                          (MonadIO m, IsHTMLIFrameElement self, ToJSString val) =>
                            self -> val -> m ()
htmliFrameElementSetWidth self val
  = liftIO
      (ghcjs_dom_html_iframe_element_set_width
         (unHTMLIFrameElement (toHTMLIFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_iframe_element_get_width ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.width Mozilla HTMLIFrameElement.width documentation> 
htmliFrameElementGetWidth ::
                          (MonadIO m, IsHTMLIFrameElement self, FromJSString result) =>
                            self -> m result
htmliFrameElementGetWidth self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_iframe_element_get_width
            (unHTMLIFrameElement (toHTMLIFrameElement self))))
 
foreign import javascript unsafe "$1[\"contentDocument\"]"
        ghcjs_dom_html_iframe_element_get_content_document ::
        JSRef HTMLIFrameElement -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.contentDocument Mozilla HTMLIFrameElement.contentDocument documentation> 
htmliFrameElementGetContentDocument ::
                                    (MonadIO m, IsHTMLIFrameElement self) =>
                                      self -> m (Maybe Document)
htmliFrameElementGetContentDocument self
  = liftIO
      ((ghcjs_dom_html_iframe_element_get_content_document
          (unHTMLIFrameElement (toHTMLIFrameElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"contentWindow\"]"
        ghcjs_dom_html_iframe_element_get_content_window ::
        JSRef HTMLIFrameElement -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.contentWindow Mozilla HTMLIFrameElement.contentWindow documentation> 
htmliFrameElementGetContentWindow ::
                                  (MonadIO m, IsHTMLIFrameElement self) =>
                                    self -> m (Maybe DOMWindow)
htmliFrameElementGetContentWindow self
  = liftIO
      ((ghcjs_dom_html_iframe_element_get_content_window
          (unHTMLIFrameElement (toHTMLIFrameElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.HTMLIFrameElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLIFrameElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLIFrameElement
#endif
