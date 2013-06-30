{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLIFrameElement
       (ghcjs_dom_html_iframe_element_set_align,
        htmliFrameElementSetAlign, ghcjs_dom_html_iframe_element_get_align,
        htmliFrameElementGetAlign,
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
        ghcjs_dom_html_iframe_element_set_seamless,
        htmliFrameElementSetSeamless,
        ghcjs_dom_html_iframe_element_get_seamless,
        htmliFrameElementGetSeamless,
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
        htmliFrameElementGetContentWindow)
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
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_iframe_element_set_align ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_iframe_element_set_align ::
                                          JSRef HTMLIFrameElement -> JSString -> IO ()
ghcjs_dom_html_iframe_element_set_align = undefined
#endif
 
htmliFrameElementSetAlign ::
                          (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetAlign self val
  = ghcjs_dom_html_iframe_element_set_align
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_iframe_element_get_align ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
ghcjs_dom_html_iframe_element_get_align ::
                                          JSRef HTMLIFrameElement -> IO JSString
ghcjs_dom_html_iframe_element_get_align = undefined
#endif
 
htmliFrameElementGetAlign ::
                          (IsHTMLIFrameElement self, FromJSString result) =>
                            self -> IO result
htmliFrameElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_align
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"frameBorder\"] = $2;"
        ghcjs_dom_html_iframe_element_set_frame_border ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_iframe_element_set_frame_border ::
                                                 JSRef HTMLIFrameElement -> JSString -> IO ()
ghcjs_dom_html_iframe_element_set_frame_border = undefined
#endif
 
htmliFrameElementSetFrameBorder ::
                                (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetFrameBorder self val
  = ghcjs_dom_html_iframe_element_set_frame_border
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"frameBorder\"]"
        ghcjs_dom_html_iframe_element_get_frame_border ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
ghcjs_dom_html_iframe_element_get_frame_border ::
                                                 JSRef HTMLIFrameElement -> IO JSString
ghcjs_dom_html_iframe_element_get_frame_border = undefined
#endif
 
htmliFrameElementGetFrameBorder ::
                                (IsHTMLIFrameElement self, FromJSString result) =>
                                  self -> IO result
htmliFrameElementGetFrameBorder self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_frame_border
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_iframe_element_set_height ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_iframe_element_set_height ::
                                           JSRef HTMLIFrameElement -> JSString -> IO ()
ghcjs_dom_html_iframe_element_set_height = undefined
#endif
 
htmliFrameElementSetHeight ::
                           (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetHeight self val
  = ghcjs_dom_html_iframe_element_set_height
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_iframe_element_get_height ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
ghcjs_dom_html_iframe_element_get_height ::
                                           JSRef HTMLIFrameElement -> IO JSString
ghcjs_dom_html_iframe_element_get_height = undefined
#endif
 
htmliFrameElementGetHeight ::
                           (IsHTMLIFrameElement self, FromJSString result) =>
                             self -> IO result
htmliFrameElementGetHeight self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_height
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"longDesc\"] = $2;"
        ghcjs_dom_html_iframe_element_set_long_desc ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_iframe_element_set_long_desc ::
                                              JSRef HTMLIFrameElement -> JSString -> IO ()
ghcjs_dom_html_iframe_element_set_long_desc = undefined
#endif
 
htmliFrameElementSetLongDesc ::
                             (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetLongDesc self val
  = ghcjs_dom_html_iframe_element_set_long_desc
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"longDesc\"]"
        ghcjs_dom_html_iframe_element_get_long_desc ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
ghcjs_dom_html_iframe_element_get_long_desc ::
                                              JSRef HTMLIFrameElement -> IO JSString
ghcjs_dom_html_iframe_element_get_long_desc = undefined
#endif
 
htmliFrameElementGetLongDesc ::
                             (IsHTMLIFrameElement self, FromJSString result) =>
                               self -> IO result
htmliFrameElementGetLongDesc self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_long_desc
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginHeight\"] = $2;"
        ghcjs_dom_html_iframe_element_set_margin_height ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_iframe_element_set_margin_height ::
                                                  JSRef HTMLIFrameElement -> JSString -> IO ()
ghcjs_dom_html_iframe_element_set_margin_height = undefined
#endif
 
htmliFrameElementSetMarginHeight ::
                                 (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetMarginHeight self val
  = ghcjs_dom_html_iframe_element_set_margin_height
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginHeight\"]"
        ghcjs_dom_html_iframe_element_get_margin_height ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
ghcjs_dom_html_iframe_element_get_margin_height ::
                                                  JSRef HTMLIFrameElement -> IO JSString
ghcjs_dom_html_iframe_element_get_margin_height = undefined
#endif
 
htmliFrameElementGetMarginHeight ::
                                 (IsHTMLIFrameElement self, FromJSString result) =>
                                   self -> IO result
htmliFrameElementGetMarginHeight self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_margin_height
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginWidth\"] = $2;"
        ghcjs_dom_html_iframe_element_set_margin_width ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_iframe_element_set_margin_width ::
                                                 JSRef HTMLIFrameElement -> JSString -> IO ()
ghcjs_dom_html_iframe_element_set_margin_width = undefined
#endif
 
htmliFrameElementSetMarginWidth ::
                                (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetMarginWidth self val
  = ghcjs_dom_html_iframe_element_set_margin_width
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginWidth\"]"
        ghcjs_dom_html_iframe_element_get_margin_width ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
ghcjs_dom_html_iframe_element_get_margin_width ::
                                                 JSRef HTMLIFrameElement -> IO JSString
ghcjs_dom_html_iframe_element_get_margin_width = undefined
#endif
 
htmliFrameElementGetMarginWidth ::
                                (IsHTMLIFrameElement self, FromJSString result) =>
                                  self -> IO result
htmliFrameElementGetMarginWidth self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_margin_width
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_iframe_element_set_name ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_iframe_element_set_name ::
                                         JSRef HTMLIFrameElement -> JSString -> IO ()
ghcjs_dom_html_iframe_element_set_name = undefined
#endif
 
htmliFrameElementSetName ::
                         (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetName self val
  = ghcjs_dom_html_iframe_element_set_name
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_iframe_element_get_name ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
ghcjs_dom_html_iframe_element_get_name ::
                                         JSRef HTMLIFrameElement -> IO JSString
ghcjs_dom_html_iframe_element_get_name = undefined
#endif
 
htmliFrameElementGetName ::
                         (IsHTMLIFrameElement self, FromJSString result) =>
                           self -> IO result
htmliFrameElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_name
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"sandbox\"] = $2;"
        ghcjs_dom_html_iframe_element_set_sandbox ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_iframe_element_set_sandbox ::
                                            JSRef HTMLIFrameElement -> JSString -> IO ()
ghcjs_dom_html_iframe_element_set_sandbox = undefined
#endif
 
htmliFrameElementSetSandbox ::
                            (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetSandbox self val
  = ghcjs_dom_html_iframe_element_set_sandbox
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"sandbox\"]"
        ghcjs_dom_html_iframe_element_get_sandbox ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
ghcjs_dom_html_iframe_element_get_sandbox ::
                                            JSRef HTMLIFrameElement -> IO JSString
ghcjs_dom_html_iframe_element_get_sandbox = undefined
#endif
 
htmliFrameElementGetSandbox ::
                            (IsHTMLIFrameElement self, FromJSString result) =>
                              self -> IO result
htmliFrameElementGetSandbox self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_sandbox
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"seamless\"] = $2;"
        ghcjs_dom_html_iframe_element_set_seamless ::
        JSRef HTMLIFrameElement -> JSBool -> IO ()
#else 
ghcjs_dom_html_iframe_element_set_seamless ::
                                             JSRef HTMLIFrameElement -> JSBool -> IO ()
ghcjs_dom_html_iframe_element_set_seamless = undefined
#endif
 
htmliFrameElementSetSeamless ::
                             (IsHTMLIFrameElement self) => self -> Bool -> IO ()
htmliFrameElementSetSeamless self val
  = ghcjs_dom_html_iframe_element_set_seamless
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"seamless\"] ? 1 : 0)"
        ghcjs_dom_html_iframe_element_get_seamless ::
        JSRef HTMLIFrameElement -> IO JSBool
#else 
ghcjs_dom_html_iframe_element_get_seamless ::
                                             JSRef HTMLIFrameElement -> IO JSBool
ghcjs_dom_html_iframe_element_get_seamless = undefined
#endif
 
htmliFrameElementGetSeamless ::
                             (IsHTMLIFrameElement self) => self -> IO Bool
htmliFrameElementGetSeamless self
  = fromJSBool <$>
      (ghcjs_dom_html_iframe_element_get_seamless
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrolling\"] = $2;"
        ghcjs_dom_html_iframe_element_set_scrolling ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_iframe_element_set_scrolling ::
                                              JSRef HTMLIFrameElement -> JSString -> IO ()
ghcjs_dom_html_iframe_element_set_scrolling = undefined
#endif
 
htmliFrameElementSetScrolling ::
                              (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetScrolling self val
  = ghcjs_dom_html_iframe_element_set_scrolling
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrolling\"]"
        ghcjs_dom_html_iframe_element_get_scrolling ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
ghcjs_dom_html_iframe_element_get_scrolling ::
                                              JSRef HTMLIFrameElement -> IO JSString
ghcjs_dom_html_iframe_element_get_scrolling = undefined
#endif
 
htmliFrameElementGetScrolling ::
                              (IsHTMLIFrameElement self, FromJSString result) =>
                                self -> IO result
htmliFrameElementGetScrolling self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_scrolling
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_iframe_element_set_src ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_iframe_element_set_src ::
                                        JSRef HTMLIFrameElement -> JSString -> IO ()
ghcjs_dom_html_iframe_element_set_src = undefined
#endif
 
htmliFrameElementSetSrc ::
                        (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetSrc self val
  = ghcjs_dom_html_iframe_element_set_src
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_iframe_element_get_src ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
ghcjs_dom_html_iframe_element_get_src ::
                                        JSRef HTMLIFrameElement -> IO JSString
ghcjs_dom_html_iframe_element_get_src = undefined
#endif
 
htmliFrameElementGetSrc ::
                        (IsHTMLIFrameElement self, FromJSString result) =>
                          self -> IO result
htmliFrameElementGetSrc self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_src
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"srcdoc\"] = $2;"
        ghcjs_dom_html_iframe_element_set_srcdoc ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_iframe_element_set_srcdoc ::
                                           JSRef HTMLIFrameElement -> JSString -> IO ()
ghcjs_dom_html_iframe_element_set_srcdoc = undefined
#endif
 
htmliFrameElementSetSrcdoc ::
                           (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetSrcdoc self val
  = ghcjs_dom_html_iframe_element_set_srcdoc
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"srcdoc\"]"
        ghcjs_dom_html_iframe_element_get_srcdoc ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
ghcjs_dom_html_iframe_element_get_srcdoc ::
                                           JSRef HTMLIFrameElement -> IO JSString
ghcjs_dom_html_iframe_element_get_srcdoc = undefined
#endif
 
htmliFrameElementGetSrcdoc ::
                           (IsHTMLIFrameElement self, FromJSString result) =>
                             self -> IO result
htmliFrameElementGetSrcdoc self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_srcdoc
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_iframe_element_set_width ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
ghcjs_dom_html_iframe_element_set_width ::
                                          JSRef HTMLIFrameElement -> JSString -> IO ()
ghcjs_dom_html_iframe_element_set_width = undefined
#endif
 
htmliFrameElementSetWidth ::
                          (IsHTMLIFrameElement self, ToJSString val) => self -> val -> IO ()
htmliFrameElementSetWidth self val
  = ghcjs_dom_html_iframe_element_set_width
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_iframe_element_get_width ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
ghcjs_dom_html_iframe_element_get_width ::
                                          JSRef HTMLIFrameElement -> IO JSString
ghcjs_dom_html_iframe_element_get_width = undefined
#endif
 
htmliFrameElementGetWidth ::
                          (IsHTMLIFrameElement self, FromJSString result) =>
                            self -> IO result
htmliFrameElementGetWidth self
  = fromJSString <$>
      (ghcjs_dom_html_iframe_element_get_width
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"contentDocument\"]"
        ghcjs_dom_html_iframe_element_get_content_document ::
        JSRef HTMLIFrameElement -> IO (JSRef Document)
#else 
ghcjs_dom_html_iframe_element_get_content_document ::
                                                     JSRef HTMLIFrameElement -> IO (JSRef Document)
ghcjs_dom_html_iframe_element_get_content_document = undefined
#endif
 
htmliFrameElementGetContentDocument ::
                                    (IsHTMLIFrameElement self) => self -> IO (Maybe Document)
htmliFrameElementGetContentDocument self
  = fmap Document . maybeJSNull <$>
      (ghcjs_dom_html_iframe_element_get_content_document
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"contentWindow\"]"
        ghcjs_dom_html_iframe_element_get_content_window ::
        JSRef HTMLIFrameElement -> IO (JSRef DOMWindow)
#else 
ghcjs_dom_html_iframe_element_get_content_window ::
                                                   JSRef HTMLIFrameElement -> IO (JSRef DOMWindow)
ghcjs_dom_html_iframe_element_get_content_window = undefined
#endif
 
htmliFrameElementGetContentWindow ::
                                  (IsHTMLIFrameElement self) => self -> IO (Maybe DOMWindow)
htmliFrameElementGetContentWindow self
  = fmap DOMWindow . maybeJSNull <$>
      (ghcjs_dom_html_iframe_element_get_content_window
         (unHTMLIFrameElement (toHTMLIFrameElement self)))