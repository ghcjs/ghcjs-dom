{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLFrameSetElement
       (ghcjs_dom_html_frame_set_element_set_cols,
        htmlFrameSetElementSetCols,
        ghcjs_dom_html_frame_set_element_get_cols,
        htmlFrameSetElementGetCols,
        ghcjs_dom_html_frame_set_element_set_rows,
        htmlFrameSetElementSetRows,
        ghcjs_dom_html_frame_set_element_get_rows,
        htmlFrameSetElementGetRows, htmlFrameSetElementOnbeforeunload,
        htmlFrameSetElementOnhashchange, htmlFrameSetElementOnmessage,
        htmlFrameSetElementOnoffline, htmlFrameSetElementOnonline,
        htmlFrameSetElementOnpopstate, htmlFrameSetElementOnresize,
        htmlFrameSetElementOnstorage, htmlFrameSetElementOnunload,
        htmlFrameSetElementOnorientationchange, htmlFrameSetElementOnblur,
        htmlFrameSetElementOnerror, htmlFrameSetElementOnfocus,
        htmlFrameSetElementOnload, HTMLFrameSetElement,
        IsHTMLFrameSetElement, castToHTMLFrameSetElement,
        gTypeHTMLFrameSetElement, toHTMLFrameSetElement)
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



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"cols\"] = $2;"
        ghcjs_dom_html_frame_set_element_set_cols ::
        JSRef HTMLFrameSetElement -> JSString -> IO ()
#else 
ghcjs_dom_html_frame_set_element_set_cols ::
                                            JSRef HTMLFrameSetElement -> JSString -> IO ()
ghcjs_dom_html_frame_set_element_set_cols = undefined
#endif
 
htmlFrameSetElementSetCols ::
                           (IsHTMLFrameSetElement self, ToJSString val) =>
                             self -> val -> IO ()
htmlFrameSetElementSetCols self val
  = ghcjs_dom_html_frame_set_element_set_cols
      (unHTMLFrameSetElement (toHTMLFrameSetElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"cols\"]"
        ghcjs_dom_html_frame_set_element_get_cols ::
        JSRef HTMLFrameSetElement -> IO JSString
#else 
ghcjs_dom_html_frame_set_element_get_cols ::
                                            JSRef HTMLFrameSetElement -> IO JSString
ghcjs_dom_html_frame_set_element_get_cols = undefined
#endif
 
htmlFrameSetElementGetCols ::
                           (IsHTMLFrameSetElement self, FromJSString result) =>
                             self -> IO result
htmlFrameSetElementGetCols self
  = fromJSString <$>
      (ghcjs_dom_html_frame_set_element_get_cols
         (unHTMLFrameSetElement (toHTMLFrameSetElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"rows\"] = $2;"
        ghcjs_dom_html_frame_set_element_set_rows ::
        JSRef HTMLFrameSetElement -> JSString -> IO ()
#else 
ghcjs_dom_html_frame_set_element_set_rows ::
                                            JSRef HTMLFrameSetElement -> JSString -> IO ()
ghcjs_dom_html_frame_set_element_set_rows = undefined
#endif
 
htmlFrameSetElementSetRows ::
                           (IsHTMLFrameSetElement self, ToJSString val) =>
                             self -> val -> IO ()
htmlFrameSetElementSetRows self val
  = ghcjs_dom_html_frame_set_element_set_rows
      (unHTMLFrameSetElement (toHTMLFrameSetElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"rows\"]"
        ghcjs_dom_html_frame_set_element_get_rows ::
        JSRef HTMLFrameSetElement -> IO JSString
#else 
ghcjs_dom_html_frame_set_element_get_rows ::
                                            JSRef HTMLFrameSetElement -> IO JSString
ghcjs_dom_html_frame_set_element_get_rows = undefined
#endif
 
htmlFrameSetElementGetRows ::
                           (IsHTMLFrameSetElement self, FromJSString result) =>
                             self -> IO result
htmlFrameSetElementGetRows self
  = fromJSString <$>
      (ghcjs_dom_html_frame_set_element_get_rows
         (unHTMLFrameSetElement (toHTMLFrameSetElement self)))
 
htmlFrameSetElementOnbeforeunload ::
                                  (IsHTMLFrameSetElement self) =>
                                    Signal self (EventM UIEvent self ())
htmlFrameSetElementOnbeforeunload = (connect "beforeunload")
 
htmlFrameSetElementOnhashchange ::
                                (IsHTMLFrameSetElement self) =>
                                  Signal self (EventM UIEvent self ())
htmlFrameSetElementOnhashchange = (connect "hashchange")
 
htmlFrameSetElementOnmessage ::
                             (IsHTMLFrameSetElement self) =>
                               Signal self (EventM UIEvent self ())
htmlFrameSetElementOnmessage = (connect "message")
 
htmlFrameSetElementOnoffline ::
                             (IsHTMLFrameSetElement self) =>
                               Signal self (EventM UIEvent self ())
htmlFrameSetElementOnoffline = (connect "offline")
 
htmlFrameSetElementOnonline ::
                            (IsHTMLFrameSetElement self) =>
                              Signal self (EventM UIEvent self ())
htmlFrameSetElementOnonline = (connect "online")
 
htmlFrameSetElementOnpopstate ::
                              (IsHTMLFrameSetElement self) =>
                                Signal self (EventM UIEvent self ())
htmlFrameSetElementOnpopstate = (connect "popstate")
 
htmlFrameSetElementOnresize ::
                            (IsHTMLFrameSetElement self) =>
                              Signal self (EventM UIEvent self ())
htmlFrameSetElementOnresize = (connect "resize")
 
htmlFrameSetElementOnstorage ::
                             (IsHTMLFrameSetElement self) =>
                               Signal self (EventM UIEvent self ())
htmlFrameSetElementOnstorage = (connect "storage")
 
htmlFrameSetElementOnunload ::
                            (IsHTMLFrameSetElement self) =>
                              Signal self (EventM UIEvent self ())
htmlFrameSetElementOnunload = (connect "unload")
 
htmlFrameSetElementOnorientationchange ::
                                       (IsHTMLFrameSetElement self) =>
                                         Signal self (EventM UIEvent self ())
htmlFrameSetElementOnorientationchange
  = (connect "orientationchange")
 
htmlFrameSetElementOnblur ::
                          (IsHTMLFrameSetElement self) =>
                            Signal self (EventM UIEvent self ())
htmlFrameSetElementOnblur = (connect "blur")
 
htmlFrameSetElementOnerror ::
                           (IsHTMLFrameSetElement self) =>
                             Signal self (EventM UIEvent self ())
htmlFrameSetElementOnerror = (connect "error")
 
htmlFrameSetElementOnfocus ::
                           (IsHTMLFrameSetElement self) =>
                             Signal self (EventM UIEvent self ())
htmlFrameSetElementOnfocus = (connect "focus")
 
htmlFrameSetElementOnload ::
                          (IsHTMLFrameSetElement self) =>
                            Signal self (EventM UIEvent self ())
htmlFrameSetElementOnload = (connect "load")
#else
module GHCJS.DOM.HTMLFrameSetElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFrameSetElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLFrameSetElement
#endif
