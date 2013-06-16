{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLFrameSetElement
       (webkit_dom_html_frame_set_element_set_cols,
        htmlFrameSetElementSetCols,
        webkit_dom_html_frame_set_element_get_cols,
        htmlFrameSetElementGetCols,
        webkit_dom_html_frame_set_element_set_rows,
        htmlFrameSetElementSetRows,
        webkit_dom_html_frame_set_element_get_rows,
        htmlFrameSetElementGetRows, htmlFrameSetElementOnbeforeunload,
        htmlFrameSetElementOnhashchange, htmlFrameSetElementOnmessage,
        htmlFrameSetElementOnoffline, htmlFrameSetElementOnonline,
        htmlFrameSetElementOnpopstate, htmlFrameSetElementOnresize,
        htmlFrameSetElementOnstorage, htmlFrameSetElementOnunload,
        htmlFrameSetElementOnorientationchange, htmlFrameSetElementOnblur,
        htmlFrameSetElementOnerror, htmlFrameSetElementOnfocus,
        htmlFrameSetElementOnload)
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
foreign import javascript unsafe "$1[\"cols\"] = $2;"
        webkit_dom_html_frame_set_element_set_cols ::
        JSRef HTMLFrameSetElement -> JSString -> IO ()
#else 
webkit_dom_html_frame_set_element_set_cols ::
                                             JSRef HTMLFrameSetElement -> JSString -> IO ()
webkit_dom_html_frame_set_element_set_cols = undefined
#endif
 
htmlFrameSetElementSetCols ::
                           (HTMLFrameSetElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlFrameSetElementSetCols self val
  = webkit_dom_html_frame_set_element_set_cols
      (unHTMLFrameSetElement (toHTMLFrameSetElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cols\"]"
        webkit_dom_html_frame_set_element_get_cols ::
        JSRef HTMLFrameSetElement -> IO JSString
#else 
webkit_dom_html_frame_set_element_get_cols ::
                                             JSRef HTMLFrameSetElement -> IO JSString
webkit_dom_html_frame_set_element_get_cols = undefined
#endif
 
htmlFrameSetElementGetCols ::
                           (HTMLFrameSetElementClass self, FromJSString result) =>
                             self -> IO result
htmlFrameSetElementGetCols self
  = fromJSString <$>
      (webkit_dom_html_frame_set_element_get_cols
         (unHTMLFrameSetElement (toHTMLFrameSetElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rows\"] = $2;"
        webkit_dom_html_frame_set_element_set_rows ::
        JSRef HTMLFrameSetElement -> JSString -> IO ()
#else 
webkit_dom_html_frame_set_element_set_rows ::
                                             JSRef HTMLFrameSetElement -> JSString -> IO ()
webkit_dom_html_frame_set_element_set_rows = undefined
#endif
 
htmlFrameSetElementSetRows ::
                           (HTMLFrameSetElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlFrameSetElementSetRows self val
  = webkit_dom_html_frame_set_element_set_rows
      (unHTMLFrameSetElement (toHTMLFrameSetElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rows\"]"
        webkit_dom_html_frame_set_element_get_rows ::
        JSRef HTMLFrameSetElement -> IO JSString
#else 
webkit_dom_html_frame_set_element_get_rows ::
                                             JSRef HTMLFrameSetElement -> IO JSString
webkit_dom_html_frame_set_element_get_rows = undefined
#endif
 
htmlFrameSetElementGetRows ::
                           (HTMLFrameSetElementClass self, FromJSString result) =>
                             self -> IO result
htmlFrameSetElementGetRows self
  = fromJSString <$>
      (webkit_dom_html_frame_set_element_get_rows
         (unHTMLFrameSetElement (toHTMLFrameSetElement self)))
 
htmlFrameSetElementOnbeforeunload ::
                                  (HTMLFrameSetElementClass self) =>
                                    Signal self (EventM UIEvent self ())
htmlFrameSetElementOnbeforeunload = (connect "beforeunload")
 
htmlFrameSetElementOnhashchange ::
                                (HTMLFrameSetElementClass self) =>
                                  Signal self (EventM UIEvent self ())
htmlFrameSetElementOnhashchange = (connect "hashchange")
 
htmlFrameSetElementOnmessage ::
                             (HTMLFrameSetElementClass self) =>
                               Signal self (EventM UIEvent self ())
htmlFrameSetElementOnmessage = (connect "message")
 
htmlFrameSetElementOnoffline ::
                             (HTMLFrameSetElementClass self) =>
                               Signal self (EventM UIEvent self ())
htmlFrameSetElementOnoffline = (connect "offline")
 
htmlFrameSetElementOnonline ::
                            (HTMLFrameSetElementClass self) =>
                              Signal self (EventM UIEvent self ())
htmlFrameSetElementOnonline = (connect "online")
 
htmlFrameSetElementOnpopstate ::
                              (HTMLFrameSetElementClass self) =>
                                Signal self (EventM UIEvent self ())
htmlFrameSetElementOnpopstate = (connect "popstate")
 
htmlFrameSetElementOnresize ::
                            (HTMLFrameSetElementClass self) =>
                              Signal self (EventM UIEvent self ())
htmlFrameSetElementOnresize = (connect "resize")
 
htmlFrameSetElementOnstorage ::
                             (HTMLFrameSetElementClass self) =>
                               Signal self (EventM UIEvent self ())
htmlFrameSetElementOnstorage = (connect "storage")
 
htmlFrameSetElementOnunload ::
                            (HTMLFrameSetElementClass self) =>
                              Signal self (EventM UIEvent self ())
htmlFrameSetElementOnunload = (connect "unload")
 
htmlFrameSetElementOnorientationchange ::
                                       (HTMLFrameSetElementClass self) =>
                                         Signal self (EventM UIEvent self ())
htmlFrameSetElementOnorientationchange
  = (connect "orientationchange")
 
htmlFrameSetElementOnblur ::
                          (HTMLFrameSetElementClass self) =>
                            Signal self (EventM UIEvent self ())
htmlFrameSetElementOnblur = (connect "blur")
 
htmlFrameSetElementOnerror ::
                           (HTMLFrameSetElementClass self) =>
                             Signal self (EventM UIEvent self ())
htmlFrameSetElementOnerror = (connect "error")
 
htmlFrameSetElementOnfocus ::
                           (HTMLFrameSetElementClass self) =>
                             Signal self (EventM UIEvent self ())
htmlFrameSetElementOnfocus = (connect "focus")
 
htmlFrameSetElementOnload ::
                          (HTMLFrameSetElementClass self) =>
                            Signal self (EventM UIEvent self ())
htmlFrameSetElementOnload = (connect "load")