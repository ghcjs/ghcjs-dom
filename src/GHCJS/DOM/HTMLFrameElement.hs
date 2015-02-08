{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLFrameElement
       (ghcjs_dom_html_frame_element_get_svg_document,
        htmlFrameElementGetSVGDocument,
        ghcjs_dom_html_frame_element_set_frame_border,
        htmlFrameElementSetFrameBorder,
        ghcjs_dom_html_frame_element_get_frame_border,
        htmlFrameElementGetFrameBorder,
        ghcjs_dom_html_frame_element_set_long_desc,
        htmlFrameElementSetLongDesc,
        ghcjs_dom_html_frame_element_get_long_desc,
        htmlFrameElementGetLongDesc,
        ghcjs_dom_html_frame_element_set_margin_height,
        htmlFrameElementSetMarginHeight,
        ghcjs_dom_html_frame_element_get_margin_height,
        htmlFrameElementGetMarginHeight,
        ghcjs_dom_html_frame_element_set_margin_width,
        htmlFrameElementSetMarginWidth,
        ghcjs_dom_html_frame_element_get_margin_width,
        htmlFrameElementGetMarginWidth,
        ghcjs_dom_html_frame_element_set_name, htmlFrameElementSetName,
        ghcjs_dom_html_frame_element_get_name, htmlFrameElementGetName,
        ghcjs_dom_html_frame_element_set_no_resize,
        htmlFrameElementSetNoResize,
        ghcjs_dom_html_frame_element_get_no_resize,
        htmlFrameElementGetNoResize,
        ghcjs_dom_html_frame_element_set_scrolling,
        htmlFrameElementSetScrolling,
        ghcjs_dom_html_frame_element_get_scrolling,
        htmlFrameElementGetScrolling, ghcjs_dom_html_frame_element_set_src,
        htmlFrameElementSetSrc, ghcjs_dom_html_frame_element_get_src,
        htmlFrameElementGetSrc,
        ghcjs_dom_html_frame_element_get_content_document,
        htmlFrameElementGetContentDocument,
        ghcjs_dom_html_frame_element_get_content_window,
        htmlFrameElementGetContentWindow,
        ghcjs_dom_html_frame_element_set_location,
        htmlFrameElementSetLocation,
        ghcjs_dom_html_frame_element_get_location,
        htmlFrameElementGetLocation,
        ghcjs_dom_html_frame_element_get_width, htmlFrameElementGetWidth,
        ghcjs_dom_html_frame_element_get_height, htmlFrameElementGetHeight,
        HTMLFrameElement, IsHTMLFrameElement, castToHTMLFrameElement,
        gTypeHTMLFrameElement, toHTMLFrameElement)
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
        ghcjs_dom_html_frame_element_get_svg_document ::
        JSRef HTMLFrameElement -> IO (JSRef SVGDocument)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.svgDocument Mozilla HTMLFrameElement.svgDocument documentation> 
htmlFrameElementGetSVGDocument ::
                               (MonadIO m, IsHTMLFrameElement self) =>
                                 self -> m (Maybe SVGDocument)
htmlFrameElementGetSVGDocument self
  = liftIO
      ((ghcjs_dom_html_frame_element_get_svg_document
          (unHTMLFrameElement (toHTMLFrameElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"frameBorder\"] = $2;"
        ghcjs_dom_html_frame_element_set_frame_border ::
        JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.frameBorder Mozilla HTMLFrameElement.frameBorder documentation> 
htmlFrameElementSetFrameBorder ::
                               (MonadIO m, IsHTMLFrameElement self, ToJSString val) =>
                                 self -> val -> m ()
htmlFrameElementSetFrameBorder self val
  = liftIO
      (ghcjs_dom_html_frame_element_set_frame_border
         (unHTMLFrameElement (toHTMLFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"frameBorder\"]"
        ghcjs_dom_html_frame_element_get_frame_border ::
        JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.frameBorder Mozilla HTMLFrameElement.frameBorder documentation> 
htmlFrameElementGetFrameBorder ::
                               (MonadIO m, IsHTMLFrameElement self, FromJSString result) =>
                                 self -> m result
htmlFrameElementGetFrameBorder self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_frame_element_get_frame_border
            (unHTMLFrameElement (toHTMLFrameElement self))))
 
foreign import javascript unsafe "$1[\"longDesc\"] = $2;"
        ghcjs_dom_html_frame_element_set_long_desc ::
        JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.longDesc Mozilla HTMLFrameElement.longDesc documentation> 
htmlFrameElementSetLongDesc ::
                            (MonadIO m, IsHTMLFrameElement self, ToJSString val) =>
                              self -> val -> m ()
htmlFrameElementSetLongDesc self val
  = liftIO
      (ghcjs_dom_html_frame_element_set_long_desc
         (unHTMLFrameElement (toHTMLFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"longDesc\"]"
        ghcjs_dom_html_frame_element_get_long_desc ::
        JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.longDesc Mozilla HTMLFrameElement.longDesc documentation> 
htmlFrameElementGetLongDesc ::
                            (MonadIO m, IsHTMLFrameElement self, FromJSString result) =>
                              self -> m result
htmlFrameElementGetLongDesc self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_frame_element_get_long_desc
            (unHTMLFrameElement (toHTMLFrameElement self))))
 
foreign import javascript unsafe "$1[\"marginHeight\"] = $2;"
        ghcjs_dom_html_frame_element_set_margin_height ::
        JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginHeight Mozilla HTMLFrameElement.marginHeight documentation> 
htmlFrameElementSetMarginHeight ::
                                (MonadIO m, IsHTMLFrameElement self, ToJSString val) =>
                                  self -> val -> m ()
htmlFrameElementSetMarginHeight self val
  = liftIO
      (ghcjs_dom_html_frame_element_set_margin_height
         (unHTMLFrameElement (toHTMLFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"marginHeight\"]"
        ghcjs_dom_html_frame_element_get_margin_height ::
        JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginHeight Mozilla HTMLFrameElement.marginHeight documentation> 
htmlFrameElementGetMarginHeight ::
                                (MonadIO m, IsHTMLFrameElement self, FromJSString result) =>
                                  self -> m result
htmlFrameElementGetMarginHeight self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_frame_element_get_margin_height
            (unHTMLFrameElement (toHTMLFrameElement self))))
 
foreign import javascript unsafe "$1[\"marginWidth\"] = $2;"
        ghcjs_dom_html_frame_element_set_margin_width ::
        JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginWidth Mozilla HTMLFrameElement.marginWidth documentation> 
htmlFrameElementSetMarginWidth ::
                               (MonadIO m, IsHTMLFrameElement self, ToJSString val) =>
                                 self -> val -> m ()
htmlFrameElementSetMarginWidth self val
  = liftIO
      (ghcjs_dom_html_frame_element_set_margin_width
         (unHTMLFrameElement (toHTMLFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"marginWidth\"]"
        ghcjs_dom_html_frame_element_get_margin_width ::
        JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginWidth Mozilla HTMLFrameElement.marginWidth documentation> 
htmlFrameElementGetMarginWidth ::
                               (MonadIO m, IsHTMLFrameElement self, FromJSString result) =>
                                 self -> m result
htmlFrameElementGetMarginWidth self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_frame_element_get_margin_width
            (unHTMLFrameElement (toHTMLFrameElement self))))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_frame_element_set_name ::
        JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.name Mozilla HTMLFrameElement.name documentation> 
htmlFrameElementSetName ::
                        (MonadIO m, IsHTMLFrameElement self, ToJSString val) =>
                          self -> val -> m ()
htmlFrameElementSetName self val
  = liftIO
      (ghcjs_dom_html_frame_element_set_name
         (unHTMLFrameElement (toHTMLFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_frame_element_get_name ::
        JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.name Mozilla HTMLFrameElement.name documentation> 
htmlFrameElementGetName ::
                        (MonadIO m, IsHTMLFrameElement self, FromJSString result) =>
                          self -> m result
htmlFrameElementGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_frame_element_get_name
            (unHTMLFrameElement (toHTMLFrameElement self))))
 
foreign import javascript unsafe "$1[\"noResize\"] = $2;"
        ghcjs_dom_html_frame_element_set_no_resize ::
        JSRef HTMLFrameElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.noResize Mozilla HTMLFrameElement.noResize documentation> 
htmlFrameElementSetNoResize ::
                            (MonadIO m, IsHTMLFrameElement self) => self -> Bool -> m ()
htmlFrameElementSetNoResize self val
  = liftIO
      (ghcjs_dom_html_frame_element_set_no_resize
         (unHTMLFrameElement (toHTMLFrameElement self))
         val)
 
foreign import javascript unsafe "($1[\"noResize\"] ? 1 : 0)"
        ghcjs_dom_html_frame_element_get_no_resize ::
        JSRef HTMLFrameElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.noResize Mozilla HTMLFrameElement.noResize documentation> 
htmlFrameElementGetNoResize ::
                            (MonadIO m, IsHTMLFrameElement self) => self -> m Bool
htmlFrameElementGetNoResize self
  = liftIO
      (ghcjs_dom_html_frame_element_get_no_resize
         (unHTMLFrameElement (toHTMLFrameElement self)))
 
foreign import javascript unsafe "$1[\"scrolling\"] = $2;"
        ghcjs_dom_html_frame_element_set_scrolling ::
        JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.scrolling Mozilla HTMLFrameElement.scrolling documentation> 
htmlFrameElementSetScrolling ::
                             (MonadIO m, IsHTMLFrameElement self, ToJSString val) =>
                               self -> val -> m ()
htmlFrameElementSetScrolling self val
  = liftIO
      (ghcjs_dom_html_frame_element_set_scrolling
         (unHTMLFrameElement (toHTMLFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"scrolling\"]"
        ghcjs_dom_html_frame_element_get_scrolling ::
        JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.scrolling Mozilla HTMLFrameElement.scrolling documentation> 
htmlFrameElementGetScrolling ::
                             (MonadIO m, IsHTMLFrameElement self, FromJSString result) =>
                               self -> m result
htmlFrameElementGetScrolling self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_frame_element_get_scrolling
            (unHTMLFrameElement (toHTMLFrameElement self))))
 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_frame_element_set_src ::
        JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.src Mozilla HTMLFrameElement.src documentation> 
htmlFrameElementSetSrc ::
                       (MonadIO m, IsHTMLFrameElement self, ToJSString val) =>
                         self -> val -> m ()
htmlFrameElementSetSrc self val
  = liftIO
      (ghcjs_dom_html_frame_element_set_src
         (unHTMLFrameElement (toHTMLFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_frame_element_get_src ::
        JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.src Mozilla HTMLFrameElement.src documentation> 
htmlFrameElementGetSrc ::
                       (MonadIO m, IsHTMLFrameElement self, FromJSString result) =>
                         self -> m result
htmlFrameElementGetSrc self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_frame_element_get_src
            (unHTMLFrameElement (toHTMLFrameElement self))))
 
foreign import javascript unsafe "$1[\"contentDocument\"]"
        ghcjs_dom_html_frame_element_get_content_document ::
        JSRef HTMLFrameElement -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.contentDocument Mozilla HTMLFrameElement.contentDocument documentation> 
htmlFrameElementGetContentDocument ::
                                   (MonadIO m, IsHTMLFrameElement self) =>
                                     self -> m (Maybe Document)
htmlFrameElementGetContentDocument self
  = liftIO
      ((ghcjs_dom_html_frame_element_get_content_document
          (unHTMLFrameElement (toHTMLFrameElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"contentWindow\"]"
        ghcjs_dom_html_frame_element_get_content_window ::
        JSRef HTMLFrameElement -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.contentWindow Mozilla HTMLFrameElement.contentWindow documentation> 
htmlFrameElementGetContentWindow ::
                                 (MonadIO m, IsHTMLFrameElement self) => self -> m (Maybe DOMWindow)
htmlFrameElementGetContentWindow self
  = liftIO
      ((ghcjs_dom_html_frame_element_get_content_window
          (unHTMLFrameElement (toHTMLFrameElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"location\"] = $2;"
        ghcjs_dom_html_frame_element_set_location ::
        JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.location Mozilla HTMLFrameElement.location documentation> 
htmlFrameElementSetLocation ::
                            (MonadIO m, IsHTMLFrameElement self, ToJSString val) =>
                              self -> val -> m ()
htmlFrameElementSetLocation self val
  = liftIO
      (ghcjs_dom_html_frame_element_set_location
         (unHTMLFrameElement (toHTMLFrameElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"location\"]"
        ghcjs_dom_html_frame_element_get_location ::
        JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.location Mozilla HTMLFrameElement.location documentation> 
htmlFrameElementGetLocation ::
                            (MonadIO m, IsHTMLFrameElement self, FromJSString result) =>
                              self -> m result
htmlFrameElementGetLocation self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_frame_element_get_location
            (unHTMLFrameElement (toHTMLFrameElement self))))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_frame_element_get_width ::
        JSRef HTMLFrameElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.width Mozilla HTMLFrameElement.width documentation> 
htmlFrameElementGetWidth ::
                         (MonadIO m, IsHTMLFrameElement self) => self -> m Int
htmlFrameElementGetWidth self
  = liftIO
      (ghcjs_dom_html_frame_element_get_width
         (unHTMLFrameElement (toHTMLFrameElement self)))
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_frame_element_get_height ::
        JSRef HTMLFrameElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.height Mozilla HTMLFrameElement.height documentation> 
htmlFrameElementGetHeight ::
                          (MonadIO m, IsHTMLFrameElement self) => self -> m Int
htmlFrameElementGetHeight self
  = liftIO
      (ghcjs_dom_html_frame_element_get_height
         (unHTMLFrameElement (toHTMLFrameElement self)))
#else
module GHCJS.DOM.HTMLFrameElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFrameElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLFrameElement
#endif
