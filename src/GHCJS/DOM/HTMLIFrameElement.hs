{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLIFrameElement
       (webkit_dom_html_iframe_element_set_align,
        htmliFrameElementSetAlign,
        webkit_dom_html_iframe_element_get_align,
        htmliFrameElementGetAlign,
        webkit_dom_html_iframe_element_set_frame_border,
        htmliFrameElementSetFrameBorder,
        webkit_dom_html_iframe_element_get_frame_border,
        htmliFrameElementGetFrameBorder,
        webkit_dom_html_iframe_element_set_height,
        htmliFrameElementSetHeight,
        webkit_dom_html_iframe_element_get_height,
        htmliFrameElementGetHeight,
        webkit_dom_html_iframe_element_set_long_desc,
        htmliFrameElementSetLongDesc,
        webkit_dom_html_iframe_element_get_long_desc,
        htmliFrameElementGetLongDesc,
        webkit_dom_html_iframe_element_set_margin_height,
        htmliFrameElementSetMarginHeight,
        webkit_dom_html_iframe_element_get_margin_height,
        htmliFrameElementGetMarginHeight,
        webkit_dom_html_iframe_element_set_margin_width,
        htmliFrameElementSetMarginWidth,
        webkit_dom_html_iframe_element_get_margin_width,
        htmliFrameElementGetMarginWidth,
        webkit_dom_html_iframe_element_set_name, htmliFrameElementSetName,
        webkit_dom_html_iframe_element_get_name, htmliFrameElementGetName,
        webkit_dom_html_iframe_element_set_sandbox,
        htmliFrameElementSetSandbox,
        webkit_dom_html_iframe_element_get_sandbox,
        htmliFrameElementGetSandbox,
        webkit_dom_html_iframe_element_set_seamless,
        htmliFrameElementSetSeamless,
        webkit_dom_html_iframe_element_get_seamless,
        htmliFrameElementGetSeamless,
        webkit_dom_html_iframe_element_set_scrolling,
        htmliFrameElementSetScrolling,
        webkit_dom_html_iframe_element_get_scrolling,
        htmliFrameElementGetScrolling,
        webkit_dom_html_iframe_element_set_src, htmliFrameElementSetSrc,
        webkit_dom_html_iframe_element_get_src, htmliFrameElementGetSrc,
        webkit_dom_html_iframe_element_set_srcdoc,
        htmliFrameElementSetSrcdoc,
        webkit_dom_html_iframe_element_get_srcdoc,
        htmliFrameElementGetSrcdoc,
        webkit_dom_html_iframe_element_set_width,
        htmliFrameElementSetWidth,
        webkit_dom_html_iframe_element_get_width,
        htmliFrameElementGetWidth,
        webkit_dom_html_iframe_element_get_content_document,
        htmliFrameElementGetContentDocument,
        webkit_dom_html_iframe_element_get_content_window,
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
        webkit_dom_html_iframe_element_set_align ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_iframe_element_set_align ::
                                           JSRef HTMLIFrameElement -> JSString -> IO ()
webkit_dom_html_iframe_element_set_align = undefined
#endif
 
htmliFrameElementSetAlign ::
                          (HTMLIFrameElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmliFrameElementSetAlign self val
  = webkit_dom_html_iframe_element_set_align
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_iframe_element_get_align ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
webkit_dom_html_iframe_element_get_align ::
                                           JSRef HTMLIFrameElement -> IO JSString
webkit_dom_html_iframe_element_get_align = undefined
#endif
 
htmliFrameElementGetAlign ::
                          (HTMLIFrameElementClass self, FromJSString result) =>
                            self -> IO result
htmliFrameElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_iframe_element_get_align
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"frameBorder\"] = $2;"
        webkit_dom_html_iframe_element_set_frame_border ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_iframe_element_set_frame_border ::
                                                  JSRef HTMLIFrameElement -> JSString -> IO ()
webkit_dom_html_iframe_element_set_frame_border = undefined
#endif
 
htmliFrameElementSetFrameBorder ::
                                (HTMLIFrameElementClass self, ToJSString val) =>
                                  self -> val -> IO ()
htmliFrameElementSetFrameBorder self val
  = webkit_dom_html_iframe_element_set_frame_border
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"frameBorder\"]"
        webkit_dom_html_iframe_element_get_frame_border ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
webkit_dom_html_iframe_element_get_frame_border ::
                                                  JSRef HTMLIFrameElement -> IO JSString
webkit_dom_html_iframe_element_get_frame_border = undefined
#endif
 
htmliFrameElementGetFrameBorder ::
                                (HTMLIFrameElementClass self, FromJSString result) =>
                                  self -> IO result
htmliFrameElementGetFrameBorder self
  = fromJSString <$>
      (webkit_dom_html_iframe_element_get_frame_border
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        webkit_dom_html_iframe_element_set_height ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_iframe_element_set_height ::
                                            JSRef HTMLIFrameElement -> JSString -> IO ()
webkit_dom_html_iframe_element_set_height = undefined
#endif
 
htmliFrameElementSetHeight ::
                           (HTMLIFrameElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmliFrameElementSetHeight self val
  = webkit_dom_html_iframe_element_set_height
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        webkit_dom_html_iframe_element_get_height ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
webkit_dom_html_iframe_element_get_height ::
                                            JSRef HTMLIFrameElement -> IO JSString
webkit_dom_html_iframe_element_get_height = undefined
#endif
 
htmliFrameElementGetHeight ::
                           (HTMLIFrameElementClass self, FromJSString result) =>
                             self -> IO result
htmliFrameElementGetHeight self
  = fromJSString <$>
      (webkit_dom_html_iframe_element_get_height
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"longDesc\"] = $2;"
        webkit_dom_html_iframe_element_set_long_desc ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_iframe_element_set_long_desc ::
                                               JSRef HTMLIFrameElement -> JSString -> IO ()
webkit_dom_html_iframe_element_set_long_desc = undefined
#endif
 
htmliFrameElementSetLongDesc ::
                             (HTMLIFrameElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmliFrameElementSetLongDesc self val
  = webkit_dom_html_iframe_element_set_long_desc
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"longDesc\"]"
        webkit_dom_html_iframe_element_get_long_desc ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
webkit_dom_html_iframe_element_get_long_desc ::
                                               JSRef HTMLIFrameElement -> IO JSString
webkit_dom_html_iframe_element_get_long_desc = undefined
#endif
 
htmliFrameElementGetLongDesc ::
                             (HTMLIFrameElementClass self, FromJSString result) =>
                               self -> IO result
htmliFrameElementGetLongDesc self
  = fromJSString <$>
      (webkit_dom_html_iframe_element_get_long_desc
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginHeight\"] = $2;"
        webkit_dom_html_iframe_element_set_margin_height ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_iframe_element_set_margin_height ::
                                                   JSRef HTMLIFrameElement -> JSString -> IO ()
webkit_dom_html_iframe_element_set_margin_height = undefined
#endif
 
htmliFrameElementSetMarginHeight ::
                                 (HTMLIFrameElementClass self, ToJSString val) =>
                                   self -> val -> IO ()
htmliFrameElementSetMarginHeight self val
  = webkit_dom_html_iframe_element_set_margin_height
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginHeight\"]"
        webkit_dom_html_iframe_element_get_margin_height ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
webkit_dom_html_iframe_element_get_margin_height ::
                                                   JSRef HTMLIFrameElement -> IO JSString
webkit_dom_html_iframe_element_get_margin_height = undefined
#endif
 
htmliFrameElementGetMarginHeight ::
                                 (HTMLIFrameElementClass self, FromJSString result) =>
                                   self -> IO result
htmliFrameElementGetMarginHeight self
  = fromJSString <$>
      (webkit_dom_html_iframe_element_get_margin_height
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginWidth\"] = $2;"
        webkit_dom_html_iframe_element_set_margin_width ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_iframe_element_set_margin_width ::
                                                  JSRef HTMLIFrameElement -> JSString -> IO ()
webkit_dom_html_iframe_element_set_margin_width = undefined
#endif
 
htmliFrameElementSetMarginWidth ::
                                (HTMLIFrameElementClass self, ToJSString val) =>
                                  self -> val -> IO ()
htmliFrameElementSetMarginWidth self val
  = webkit_dom_html_iframe_element_set_margin_width
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"marginWidth\"]"
        webkit_dom_html_iframe_element_get_margin_width ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
webkit_dom_html_iframe_element_get_margin_width ::
                                                  JSRef HTMLIFrameElement -> IO JSString
webkit_dom_html_iframe_element_get_margin_width = undefined
#endif
 
htmliFrameElementGetMarginWidth ::
                                (HTMLIFrameElementClass self, FromJSString result) =>
                                  self -> IO result
htmliFrameElementGetMarginWidth self
  = fromJSString <$>
      (webkit_dom_html_iframe_element_get_margin_width
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_iframe_element_set_name ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_iframe_element_set_name ::
                                          JSRef HTMLIFrameElement -> JSString -> IO ()
webkit_dom_html_iframe_element_set_name = undefined
#endif
 
htmliFrameElementSetName ::
                         (HTMLIFrameElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmliFrameElementSetName self val
  = webkit_dom_html_iframe_element_set_name
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_iframe_element_get_name ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
webkit_dom_html_iframe_element_get_name ::
                                          JSRef HTMLIFrameElement -> IO JSString
webkit_dom_html_iframe_element_get_name = undefined
#endif
 
htmliFrameElementGetName ::
                         (HTMLIFrameElementClass self, FromJSString result) =>
                           self -> IO result
htmliFrameElementGetName self
  = fromJSString <$>
      (webkit_dom_html_iframe_element_get_name
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"sandbox\"] = $2;"
        webkit_dom_html_iframe_element_set_sandbox ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_iframe_element_set_sandbox ::
                                             JSRef HTMLIFrameElement -> JSString -> IO ()
webkit_dom_html_iframe_element_set_sandbox = undefined
#endif
 
htmliFrameElementSetSandbox ::
                            (HTMLIFrameElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmliFrameElementSetSandbox self val
  = webkit_dom_html_iframe_element_set_sandbox
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"sandbox\"]"
        webkit_dom_html_iframe_element_get_sandbox ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
webkit_dom_html_iframe_element_get_sandbox ::
                                             JSRef HTMLIFrameElement -> IO JSString
webkit_dom_html_iframe_element_get_sandbox = undefined
#endif
 
htmliFrameElementGetSandbox ::
                            (HTMLIFrameElementClass self, FromJSString result) =>
                              self -> IO result
htmliFrameElementGetSandbox self
  = fromJSString <$>
      (webkit_dom_html_iframe_element_get_sandbox
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"seamless\"] = $2;"
        webkit_dom_html_iframe_element_set_seamless ::
        JSRef HTMLIFrameElement -> JSBool -> IO ()
#else 
webkit_dom_html_iframe_element_set_seamless ::
                                              JSRef HTMLIFrameElement -> JSBool -> IO ()
webkit_dom_html_iframe_element_set_seamless = undefined
#endif
 
htmliFrameElementSetSeamless ::
                             (HTMLIFrameElementClass self) => self -> Bool -> IO ()
htmliFrameElementSetSeamless self val
  = webkit_dom_html_iframe_element_set_seamless
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"seamless\"]"
        webkit_dom_html_iframe_element_get_seamless ::
        JSRef HTMLIFrameElement -> IO JSBool
#else 
webkit_dom_html_iframe_element_get_seamless ::
                                              JSRef HTMLIFrameElement -> IO JSBool
webkit_dom_html_iframe_element_get_seamless = undefined
#endif
 
htmliFrameElementGetSeamless ::
                             (HTMLIFrameElementClass self) => self -> IO Bool
htmliFrameElementGetSeamless self
  = fromJSBool <$>
      (webkit_dom_html_iframe_element_get_seamless
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrolling\"] = $2;"
        webkit_dom_html_iframe_element_set_scrolling ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_iframe_element_set_scrolling ::
                                               JSRef HTMLIFrameElement -> JSString -> IO ()
webkit_dom_html_iframe_element_set_scrolling = undefined
#endif
 
htmliFrameElementSetScrolling ::
                              (HTMLIFrameElementClass self, ToJSString val) =>
                                self -> val -> IO ()
htmliFrameElementSetScrolling self val
  = webkit_dom_html_iframe_element_set_scrolling
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrolling\"]"
        webkit_dom_html_iframe_element_get_scrolling ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
webkit_dom_html_iframe_element_get_scrolling ::
                                               JSRef HTMLIFrameElement -> IO JSString
webkit_dom_html_iframe_element_get_scrolling = undefined
#endif
 
htmliFrameElementGetScrolling ::
                              (HTMLIFrameElementClass self, FromJSString result) =>
                                self -> IO result
htmliFrameElementGetScrolling self
  = fromJSString <$>
      (webkit_dom_html_iframe_element_get_scrolling
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        webkit_dom_html_iframe_element_set_src ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_iframe_element_set_src ::
                                         JSRef HTMLIFrameElement -> JSString -> IO ()
webkit_dom_html_iframe_element_set_src = undefined
#endif
 
htmliFrameElementSetSrc ::
                        (HTMLIFrameElementClass self, ToJSString val) =>
                          self -> val -> IO ()
htmliFrameElementSetSrc self val
  = webkit_dom_html_iframe_element_set_src
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"]"
        webkit_dom_html_iframe_element_get_src ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
webkit_dom_html_iframe_element_get_src ::
                                         JSRef HTMLIFrameElement -> IO JSString
webkit_dom_html_iframe_element_get_src = undefined
#endif
 
htmliFrameElementGetSrc ::
                        (HTMLIFrameElementClass self, FromJSString result) =>
                          self -> IO result
htmliFrameElementGetSrc self
  = fromJSString <$>
      (webkit_dom_html_iframe_element_get_src
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"srcdoc\"] = $2;"
        webkit_dom_html_iframe_element_set_srcdoc ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_iframe_element_set_srcdoc ::
                                            JSRef HTMLIFrameElement -> JSString -> IO ()
webkit_dom_html_iframe_element_set_srcdoc = undefined
#endif
 
htmliFrameElementSetSrcdoc ::
                           (HTMLIFrameElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmliFrameElementSetSrcdoc self val
  = webkit_dom_html_iframe_element_set_srcdoc
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"srcdoc\"]"
        webkit_dom_html_iframe_element_get_srcdoc ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
webkit_dom_html_iframe_element_get_srcdoc ::
                                            JSRef HTMLIFrameElement -> IO JSString
webkit_dom_html_iframe_element_get_srcdoc = undefined
#endif
 
htmliFrameElementGetSrcdoc ::
                           (HTMLIFrameElementClass self, FromJSString result) =>
                             self -> IO result
htmliFrameElementGetSrcdoc self
  = fromJSString <$>
      (webkit_dom_html_iframe_element_get_srcdoc
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        webkit_dom_html_iframe_element_set_width ::
        JSRef HTMLIFrameElement -> JSString -> IO ()
#else 
webkit_dom_html_iframe_element_set_width ::
                                           JSRef HTMLIFrameElement -> JSString -> IO ()
webkit_dom_html_iframe_element_set_width = undefined
#endif
 
htmliFrameElementSetWidth ::
                          (HTMLIFrameElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmliFrameElementSetWidth self val
  = webkit_dom_html_iframe_element_set_width
      (unHTMLIFrameElement (toHTMLIFrameElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_html_iframe_element_get_width ::
        JSRef HTMLIFrameElement -> IO JSString
#else 
webkit_dom_html_iframe_element_get_width ::
                                           JSRef HTMLIFrameElement -> IO JSString
webkit_dom_html_iframe_element_get_width = undefined
#endif
 
htmliFrameElementGetWidth ::
                          (HTMLIFrameElementClass self, FromJSString result) =>
                            self -> IO result
htmliFrameElementGetWidth self
  = fromJSString <$>
      (webkit_dom_html_iframe_element_get_width
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"contentDocument\"]"
        webkit_dom_html_iframe_element_get_content_document ::
        JSRef HTMLIFrameElement -> IO (JSRef Document)
#else 
webkit_dom_html_iframe_element_get_content_document ::
                                                      JSRef HTMLIFrameElement -> IO (JSRef Document)
webkit_dom_html_iframe_element_get_content_document = undefined
#endif
 
htmliFrameElementGetContentDocument ::
                                    (HTMLIFrameElementClass self) => self -> IO (Maybe Document)
htmliFrameElementGetContentDocument self
  = fmap Document . maybeJSNull <$>
      (webkit_dom_html_iframe_element_get_content_document
         (unHTMLIFrameElement (toHTMLIFrameElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"contentWindow\"]"
        webkit_dom_html_iframe_element_get_content_window ::
        JSRef HTMLIFrameElement -> IO (JSRef DOMWindow)
#else 
webkit_dom_html_iframe_element_get_content_window ::
                                                    JSRef HTMLIFrameElement -> IO (JSRef DOMWindow)
webkit_dom_html_iframe_element_get_content_window = undefined
#endif
 
htmliFrameElementGetContentWindow ::
                                  (HTMLIFrameElementClass self) => self -> IO (Maybe DOMWindow)
htmliFrameElementGetContentWindow self
  = fmap DOMWindow . maybeJSNull <$>
      (webkit_dom_html_iframe_element_get_content_window
         (unHTMLIFrameElement (toHTMLIFrameElement self)))