{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLFrameElement
       (webkit_dom_html_frame_element_set_frame_border,
        htmlFrameElementSetFrameBorder,
        webkit_dom_html_frame_element_get_frame_border,
        htmlFrameElementGetFrameBorder,
        webkit_dom_html_frame_element_set_long_desc,
        htmlFrameElementSetLongDesc,
        webkit_dom_html_frame_element_get_long_desc,
        htmlFrameElementGetLongDesc,
        webkit_dom_html_frame_element_set_margin_height,
        htmlFrameElementSetMarginHeight,
        webkit_dom_html_frame_element_get_margin_height,
        htmlFrameElementGetMarginHeight,
        webkit_dom_html_frame_element_set_margin_width,
        htmlFrameElementSetMarginWidth,
        webkit_dom_html_frame_element_get_margin_width,
        htmlFrameElementGetMarginWidth,
        webkit_dom_html_frame_element_set_name, htmlFrameElementSetName,
        webkit_dom_html_frame_element_get_name, htmlFrameElementGetName,
        webkit_dom_html_frame_element_set_no_resize,
        htmlFrameElementSetNoResize,
        webkit_dom_html_frame_element_get_no_resize,
        htmlFrameElementGetNoResize,
        webkit_dom_html_frame_element_set_scrolling,
        htmlFrameElementSetScrolling,
        webkit_dom_html_frame_element_get_scrolling,
        htmlFrameElementGetScrolling,
        webkit_dom_html_frame_element_set_src, htmlFrameElementSetSrc,
        webkit_dom_html_frame_element_get_src, htmlFrameElementGetSrc,
        webkit_dom_html_frame_element_get_content_document,
        htmlFrameElementGetContentDocument,
        webkit_dom_html_frame_element_get_content_window,
        htmlFrameElementGetContentWindow,
        webkit_dom_html_frame_element_get_width, htmlFrameElementGetWidth,
        webkit_dom_html_frame_element_get_height,
        htmlFrameElementGetHeight)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"frameBorder\"] = $2;"
        webkit_dom_html_frame_element_set_frame_border ::
        JSRef HTMLFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_frame_element_set_frame_border ::
                                                 JSRef HTMLFrameElement -> JSString -> IO ()
webkit_dom_html_frame_element_set_frame_border = undefined
#endif
 
htmlFrameElementSetFrameBorder ::
                               (HTMLFrameElementClass self, ToJSString val) =>
                                 self -> val -> IO ()
htmlFrameElementSetFrameBorder self val
  = webkit_dom_html_frame_element_set_frame_border
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"frameBorder\"]"
        webkit_dom_html_frame_element_get_frame_border ::
        JSRef HTMLFrameElement -> IO JSString
#else 
webkit_dom_html_frame_element_get_frame_border ::
                                                 JSRef HTMLFrameElement -> IO JSString
webkit_dom_html_frame_element_get_frame_border = undefined
#endif
 
htmlFrameElementGetFrameBorder ::
                               (HTMLFrameElementClass self, FromJSString result) =>
                                 self -> IO result
htmlFrameElementGetFrameBorder self
  = fromJSString <$>
      (webkit_dom_html_frame_element_get_frame_border
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"longDesc\"] = $2;"
        webkit_dom_html_frame_element_set_long_desc ::
        JSRef HTMLFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_frame_element_set_long_desc ::
                                              JSRef HTMLFrameElement -> JSString -> IO ()
webkit_dom_html_frame_element_set_long_desc = undefined
#endif
 
htmlFrameElementSetLongDesc ::
                            (HTMLFrameElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlFrameElementSetLongDesc self val
  = webkit_dom_html_frame_element_set_long_desc
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"longDesc\"]"
        webkit_dom_html_frame_element_get_long_desc ::
        JSRef HTMLFrameElement -> IO JSString
#else 
webkit_dom_html_frame_element_get_long_desc ::
                                              JSRef HTMLFrameElement -> IO JSString
webkit_dom_html_frame_element_get_long_desc = undefined
#endif
 
htmlFrameElementGetLongDesc ::
                            (HTMLFrameElementClass self, FromJSString result) =>
                              self -> IO result
htmlFrameElementGetLongDesc self
  = fromJSString <$>
      (webkit_dom_html_frame_element_get_long_desc
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginHeight\"] = $2;"
        webkit_dom_html_frame_element_set_margin_height ::
        JSRef HTMLFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_frame_element_set_margin_height ::
                                                  JSRef HTMLFrameElement -> JSString -> IO ()
webkit_dom_html_frame_element_set_margin_height = undefined
#endif
 
htmlFrameElementSetMarginHeight ::
                                (HTMLFrameElementClass self, ToJSString val) =>
                                  self -> val -> IO ()
htmlFrameElementSetMarginHeight self val
  = webkit_dom_html_frame_element_set_margin_height
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginHeight\"]"
        webkit_dom_html_frame_element_get_margin_height ::
        JSRef HTMLFrameElement -> IO JSString
#else 
webkit_dom_html_frame_element_get_margin_height ::
                                                  JSRef HTMLFrameElement -> IO JSString
webkit_dom_html_frame_element_get_margin_height = undefined
#endif
 
htmlFrameElementGetMarginHeight ::
                                (HTMLFrameElementClass self, FromJSString result) =>
                                  self -> IO result
htmlFrameElementGetMarginHeight self
  = fromJSString <$>
      (webkit_dom_html_frame_element_get_margin_height
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginWidth\"] = $2;"
        webkit_dom_html_frame_element_set_margin_width ::
        JSRef HTMLFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_frame_element_set_margin_width ::
                                                 JSRef HTMLFrameElement -> JSString -> IO ()
webkit_dom_html_frame_element_set_margin_width = undefined
#endif
 
htmlFrameElementSetMarginWidth ::
                               (HTMLFrameElementClass self, ToJSString val) =>
                                 self -> val -> IO ()
htmlFrameElementSetMarginWidth self val
  = webkit_dom_html_frame_element_set_margin_width
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginWidth\"]"
        webkit_dom_html_frame_element_get_margin_width ::
        JSRef HTMLFrameElement -> IO JSString
#else 
webkit_dom_html_frame_element_get_margin_width ::
                                                 JSRef HTMLFrameElement -> IO JSString
webkit_dom_html_frame_element_get_margin_width = undefined
#endif
 
htmlFrameElementGetMarginWidth ::
                               (HTMLFrameElementClass self, FromJSString result) =>
                                 self -> IO result
htmlFrameElementGetMarginWidth self
  = fromJSString <$>
      (webkit_dom_html_frame_element_get_margin_width
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_frame_element_set_name ::
        JSRef HTMLFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_frame_element_set_name ::
                                         JSRef HTMLFrameElement -> JSString -> IO ()
webkit_dom_html_frame_element_set_name = undefined
#endif
 
htmlFrameElementSetName ::
                        (HTMLFrameElementClass self, ToJSString val) =>
                          self -> val -> IO ()
htmlFrameElementSetName self val
  = webkit_dom_html_frame_element_set_name
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_frame_element_get_name ::
        JSRef HTMLFrameElement -> IO JSString
#else 
webkit_dom_html_frame_element_get_name ::
                                         JSRef HTMLFrameElement -> IO JSString
webkit_dom_html_frame_element_get_name = undefined
#endif
 
htmlFrameElementGetName ::
                        (HTMLFrameElementClass self, FromJSString result) =>
                          self -> IO result
htmlFrameElementGetName self
  = fromJSString <$>
      (webkit_dom_html_frame_element_get_name
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"noResize\"] = $2;"
        webkit_dom_html_frame_element_set_no_resize ::
        JSRef HTMLFrameElement -> JSBool -> IO ()
#else 
webkit_dom_html_frame_element_set_no_resize ::
                                              JSRef HTMLFrameElement -> JSBool -> IO ()
webkit_dom_html_frame_element_set_no_resize = undefined
#endif
 
htmlFrameElementSetNoResize ::
                            (HTMLFrameElementClass self) => self -> Bool -> IO ()
htmlFrameElementSetNoResize self val
  = webkit_dom_html_frame_element_set_no_resize
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"noResize\"]"
        webkit_dom_html_frame_element_get_no_resize ::
        JSRef HTMLFrameElement -> IO JSBool
#else 
webkit_dom_html_frame_element_get_no_resize ::
                                              JSRef HTMLFrameElement -> IO JSBool
webkit_dom_html_frame_element_get_no_resize = undefined
#endif
 
htmlFrameElementGetNoResize ::
                            (HTMLFrameElementClass self) => self -> IO Bool
htmlFrameElementGetNoResize self
  = fromJSBool <$>
      (webkit_dom_html_frame_element_get_no_resize
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrolling\"] = $2;"
        webkit_dom_html_frame_element_set_scrolling ::
        JSRef HTMLFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_frame_element_set_scrolling ::
                                              JSRef HTMLFrameElement -> JSString -> IO ()
webkit_dom_html_frame_element_set_scrolling = undefined
#endif
 
htmlFrameElementSetScrolling ::
                             (HTMLFrameElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlFrameElementSetScrolling self val
  = webkit_dom_html_frame_element_set_scrolling
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrolling\"]"
        webkit_dom_html_frame_element_get_scrolling ::
        JSRef HTMLFrameElement -> IO JSString
#else 
webkit_dom_html_frame_element_get_scrolling ::
                                              JSRef HTMLFrameElement -> IO JSString
webkit_dom_html_frame_element_get_scrolling = undefined
#endif
 
htmlFrameElementGetScrolling ::
                             (HTMLFrameElementClass self, FromJSString result) =>
                               self -> IO result
htmlFrameElementGetScrolling self
  = fromJSString <$>
      (webkit_dom_html_frame_element_get_scrolling
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        webkit_dom_html_frame_element_set_src ::
        JSRef HTMLFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_frame_element_set_src ::
                                        JSRef HTMLFrameElement -> JSString -> IO ()
webkit_dom_html_frame_element_set_src = undefined
#endif
 
htmlFrameElementSetSrc ::
                       (HTMLFrameElementClass self, ToJSString val) =>
                         self -> val -> IO ()
htmlFrameElementSetSrc self val
  = webkit_dom_html_frame_element_set_src
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"]"
        webkit_dom_html_frame_element_get_src ::
        JSRef HTMLFrameElement -> IO JSString
#else 
webkit_dom_html_frame_element_get_src ::
                                        JSRef HTMLFrameElement -> IO JSString
webkit_dom_html_frame_element_get_src = undefined
#endif
 
htmlFrameElementGetSrc ::
                       (HTMLFrameElementClass self, FromJSString result) =>
                         self -> IO result
htmlFrameElementGetSrc self
  = fromJSString <$>
      (webkit_dom_html_frame_element_get_src
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"contentDocument\"]"
        webkit_dom_html_frame_element_get_content_document ::
        JSRef HTMLFrameElement -> IO (JSRef Document)
#else 
webkit_dom_html_frame_element_get_content_document ::
                                                     JSRef HTMLFrameElement -> IO (JSRef Document)
webkit_dom_html_frame_element_get_content_document = undefined
#endif
 
htmlFrameElementGetContentDocument ::
                                   (HTMLFrameElementClass self) => self -> IO (Maybe Document)
htmlFrameElementGetContentDocument self
  = fmap Document . maybeJSNull <$>
      (webkit_dom_html_frame_element_get_content_document
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"contentWindow\"]"
        webkit_dom_html_frame_element_get_content_window ::
        JSRef HTMLFrameElement -> IO (JSRef DOMWindow)
#else 
webkit_dom_html_frame_element_get_content_window ::
                                                   JSRef HTMLFrameElement -> IO (JSRef DOMWindow)
webkit_dom_html_frame_element_get_content_window = undefined
#endif
 
htmlFrameElementGetContentWindow ::
                                 (HTMLFrameElementClass self) => self -> IO (Maybe DOMWindow)
htmlFrameElementGetContentWindow self
  = fmap DOMWindow . maybeJSNull <$>
      (webkit_dom_html_frame_element_get_content_window
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_html_frame_element_get_width ::
        JSRef HTMLFrameElement -> IO Int
#else 
webkit_dom_html_frame_element_get_width ::
                                          JSRef HTMLFrameElement -> IO Int
webkit_dom_html_frame_element_get_width = undefined
#endif
 
htmlFrameElementGetWidth ::
                         (HTMLFrameElementClass self) => self -> IO Int
htmlFrameElementGetWidth self
  = webkit_dom_html_frame_element_get_width
      (unHTMLFrameElement (toHTMLFrameElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        webkit_dom_html_frame_element_get_height ::
        JSRef HTMLFrameElement -> IO Int
#else 
webkit_dom_html_frame_element_get_height ::
                                           JSRef HTMLFrameElement -> IO Int
webkit_dom_html_frame_element_get_height = undefined
#endif
 
htmlFrameElementGetHeight ::
                          (HTMLFrameElementClass self) => self -> IO Int
htmlFrameElementGetHeight self
  = webkit_dom_html_frame_element_get_height
      (unHTMLFrameElement (toHTMLFrameElement self))