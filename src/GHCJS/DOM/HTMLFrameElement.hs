{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLFrameElement
       (ghcjs_dom_html_frame_element_set_frame_border,
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
        ghcjs_dom_html_frame_element_get_width, htmlFrameElementGetWidth,
        ghcjs_dom_html_frame_element_get_height, htmlFrameElementGetHeight)
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
        ghcjs_dom_html_frame_element_set_frame_border ::
        JSRef HTMLFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_frame_element_set_frame_border ::
                                                JSRef HTMLFrameElement -> JSString -> IO ()
ghcjs_dom_html_frame_element_set_frame_border = undefined
#endif
 
htmlFrameElementSetFrameBorder ::
                               (IsHTMLFrameElement self, ToJSString val) => self -> val -> IO ()
htmlFrameElementSetFrameBorder self val
  = ghcjs_dom_html_frame_element_set_frame_border
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"frameBorder\"]"
        ghcjs_dom_html_frame_element_get_frame_border ::
        JSRef HTMLFrameElement -> IO JSString
#else 
ghcjs_dom_html_frame_element_get_frame_border ::
                                                JSRef HTMLFrameElement -> IO JSString
ghcjs_dom_html_frame_element_get_frame_border = undefined
#endif
 
htmlFrameElementGetFrameBorder ::
                               (IsHTMLFrameElement self, FromJSString result) => self -> IO result
htmlFrameElementGetFrameBorder self
  = fromJSString <$>
      (ghcjs_dom_html_frame_element_get_frame_border
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"longDesc\"] = $2;"
        ghcjs_dom_html_frame_element_set_long_desc ::
        JSRef HTMLFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_frame_element_set_long_desc ::
                                             JSRef HTMLFrameElement -> JSString -> IO ()
ghcjs_dom_html_frame_element_set_long_desc = undefined
#endif
 
htmlFrameElementSetLongDesc ::
                            (IsHTMLFrameElement self, ToJSString val) => self -> val -> IO ()
htmlFrameElementSetLongDesc self val
  = ghcjs_dom_html_frame_element_set_long_desc
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"longDesc\"]"
        ghcjs_dom_html_frame_element_get_long_desc ::
        JSRef HTMLFrameElement -> IO JSString
#else 
ghcjs_dom_html_frame_element_get_long_desc ::
                                             JSRef HTMLFrameElement -> IO JSString
ghcjs_dom_html_frame_element_get_long_desc = undefined
#endif
 
htmlFrameElementGetLongDesc ::
                            (IsHTMLFrameElement self, FromJSString result) => self -> IO result
htmlFrameElementGetLongDesc self
  = fromJSString <$>
      (ghcjs_dom_html_frame_element_get_long_desc
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginHeight\"] = $2;"
        ghcjs_dom_html_frame_element_set_margin_height ::
        JSRef HTMLFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_frame_element_set_margin_height ::
                                                 JSRef HTMLFrameElement -> JSString -> IO ()
ghcjs_dom_html_frame_element_set_margin_height = undefined
#endif
 
htmlFrameElementSetMarginHeight ::
                                (IsHTMLFrameElement self, ToJSString val) => self -> val -> IO ()
htmlFrameElementSetMarginHeight self val
  = ghcjs_dom_html_frame_element_set_margin_height
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginHeight\"]"
        ghcjs_dom_html_frame_element_get_margin_height ::
        JSRef HTMLFrameElement -> IO JSString
#else 
ghcjs_dom_html_frame_element_get_margin_height ::
                                                 JSRef HTMLFrameElement -> IO JSString
ghcjs_dom_html_frame_element_get_margin_height = undefined
#endif
 
htmlFrameElementGetMarginHeight ::
                                (IsHTMLFrameElement self, FromJSString result) => self -> IO result
htmlFrameElementGetMarginHeight self
  = fromJSString <$>
      (ghcjs_dom_html_frame_element_get_margin_height
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginWidth\"] = $2;"
        ghcjs_dom_html_frame_element_set_margin_width ::
        JSRef HTMLFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_frame_element_set_margin_width ::
                                                JSRef HTMLFrameElement -> JSString -> IO ()
ghcjs_dom_html_frame_element_set_margin_width = undefined
#endif
 
htmlFrameElementSetMarginWidth ::
                               (IsHTMLFrameElement self, ToJSString val) => self -> val -> IO ()
htmlFrameElementSetMarginWidth self val
  = ghcjs_dom_html_frame_element_set_margin_width
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginWidth\"]"
        ghcjs_dom_html_frame_element_get_margin_width ::
        JSRef HTMLFrameElement -> IO JSString
#else 
ghcjs_dom_html_frame_element_get_margin_width ::
                                                JSRef HTMLFrameElement -> IO JSString
ghcjs_dom_html_frame_element_get_margin_width = undefined
#endif
 
htmlFrameElementGetMarginWidth ::
                               (IsHTMLFrameElement self, FromJSString result) => self -> IO result
htmlFrameElementGetMarginWidth self
  = fromJSString <$>
      (ghcjs_dom_html_frame_element_get_margin_width
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_frame_element_set_name ::
        JSRef HTMLFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_frame_element_set_name ::
                                        JSRef HTMLFrameElement -> JSString -> IO ()
ghcjs_dom_html_frame_element_set_name = undefined
#endif
 
htmlFrameElementSetName ::
                        (IsHTMLFrameElement self, ToJSString val) => self -> val -> IO ()
htmlFrameElementSetName self val
  = ghcjs_dom_html_frame_element_set_name
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_frame_element_get_name ::
        JSRef HTMLFrameElement -> IO JSString
#else 
ghcjs_dom_html_frame_element_get_name ::
                                        JSRef HTMLFrameElement -> IO JSString
ghcjs_dom_html_frame_element_get_name = undefined
#endif
 
htmlFrameElementGetName ::
                        (IsHTMLFrameElement self, FromJSString result) => self -> IO result
htmlFrameElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_frame_element_get_name
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"noResize\"] = $2;"
        ghcjs_dom_html_frame_element_set_no_resize ::
        JSRef HTMLFrameElement -> JSBool -> IO ()
#else 
ghcjs_dom_html_frame_element_set_no_resize ::
                                             JSRef HTMLFrameElement -> JSBool -> IO ()
ghcjs_dom_html_frame_element_set_no_resize = undefined
#endif
 
htmlFrameElementSetNoResize ::
                            (IsHTMLFrameElement self) => self -> Bool -> IO ()
htmlFrameElementSetNoResize self val
  = ghcjs_dom_html_frame_element_set_no_resize
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"noResize\"] ? 1 : 0)"
        ghcjs_dom_html_frame_element_get_no_resize ::
        JSRef HTMLFrameElement -> IO JSBool
#else 
ghcjs_dom_html_frame_element_get_no_resize ::
                                             JSRef HTMLFrameElement -> IO JSBool
ghcjs_dom_html_frame_element_get_no_resize = undefined
#endif
 
htmlFrameElementGetNoResize ::
                            (IsHTMLFrameElement self) => self -> IO Bool
htmlFrameElementGetNoResize self
  = fromJSBool <$>
      (ghcjs_dom_html_frame_element_get_no_resize
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrolling\"] = $2;"
        ghcjs_dom_html_frame_element_set_scrolling ::
        JSRef HTMLFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_frame_element_set_scrolling ::
                                             JSRef HTMLFrameElement -> JSString -> IO ()
ghcjs_dom_html_frame_element_set_scrolling = undefined
#endif
 
htmlFrameElementSetScrolling ::
                             (IsHTMLFrameElement self, ToJSString val) => self -> val -> IO ()
htmlFrameElementSetScrolling self val
  = ghcjs_dom_html_frame_element_set_scrolling
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrolling\"]"
        ghcjs_dom_html_frame_element_get_scrolling ::
        JSRef HTMLFrameElement -> IO JSString
#else 
ghcjs_dom_html_frame_element_get_scrolling ::
                                             JSRef HTMLFrameElement -> IO JSString
ghcjs_dom_html_frame_element_get_scrolling = undefined
#endif
 
htmlFrameElementGetScrolling ::
                             (IsHTMLFrameElement self, FromJSString result) => self -> IO result
htmlFrameElementGetScrolling self
  = fromJSString <$>
      (ghcjs_dom_html_frame_element_get_scrolling
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_frame_element_set_src ::
        JSRef HTMLFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_frame_element_set_src ::
                                       JSRef HTMLFrameElement -> JSString -> IO ()
ghcjs_dom_html_frame_element_set_src = undefined
#endif
 
htmlFrameElementSetSrc ::
                       (IsHTMLFrameElement self, ToJSString val) => self -> val -> IO ()
htmlFrameElementSetSrc self val
  = ghcjs_dom_html_frame_element_set_src
      (unHTMLFrameElement (toHTMLFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_frame_element_get_src ::
        JSRef HTMLFrameElement -> IO JSString
#else 
ghcjs_dom_html_frame_element_get_src ::
                                       JSRef HTMLFrameElement -> IO JSString
ghcjs_dom_html_frame_element_get_src = undefined
#endif
 
htmlFrameElementGetSrc ::
                       (IsHTMLFrameElement self, FromJSString result) => self -> IO result
htmlFrameElementGetSrc self
  = fromJSString <$>
      (ghcjs_dom_html_frame_element_get_src
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"contentDocument\"]"
        ghcjs_dom_html_frame_element_get_content_document ::
        JSRef HTMLFrameElement -> IO (JSRef Document)
#else 
ghcjs_dom_html_frame_element_get_content_document ::
                                                    JSRef HTMLFrameElement -> IO (JSRef Document)
ghcjs_dom_html_frame_element_get_content_document = undefined
#endif
 
htmlFrameElementGetContentDocument ::
                                   (IsHTMLFrameElement self) => self -> IO (Maybe Document)
htmlFrameElementGetContentDocument self
  = fmap Document . maybeJSNull <$>
      (ghcjs_dom_html_frame_element_get_content_document
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"contentWindow\"]"
        ghcjs_dom_html_frame_element_get_content_window ::
        JSRef HTMLFrameElement -> IO (JSRef DOMWindow)
#else 
ghcjs_dom_html_frame_element_get_content_window ::
                                                  JSRef HTMLFrameElement -> IO (JSRef DOMWindow)
ghcjs_dom_html_frame_element_get_content_window = undefined
#endif
 
htmlFrameElementGetContentWindow ::
                                 (IsHTMLFrameElement self) => self -> IO (Maybe DOMWindow)
htmlFrameElementGetContentWindow self
  = fmap DOMWindow . maybeJSNull <$>
      (ghcjs_dom_html_frame_element_get_content_window
         (unHTMLFrameElement (toHTMLFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_frame_element_get_width ::
        JSRef HTMLFrameElement -> IO Int
#else 
ghcjs_dom_html_frame_element_get_width ::
                                         JSRef HTMLFrameElement -> IO Int
ghcjs_dom_html_frame_element_get_width = undefined
#endif
 
htmlFrameElementGetWidth ::
                         (IsHTMLFrameElement self) => self -> IO Int
htmlFrameElementGetWidth self
  = ghcjs_dom_html_frame_element_get_width
      (unHTMLFrameElement (toHTMLFrameElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_frame_element_get_height ::
        JSRef HTMLFrameElement -> IO Int
#else 
ghcjs_dom_html_frame_element_get_height ::
                                          JSRef HTMLFrameElement -> IO Int
ghcjs_dom_html_frame_element_get_height = undefined
#endif
 
htmlFrameElementGetHeight ::
                          (IsHTMLFrameElement self) => self -> IO Int
htmlFrameElementGetHeight self
  = ghcjs_dom_html_frame_element_get_height
      (unHTMLFrameElement (toHTMLFrameElement self))