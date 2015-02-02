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

 
foreign import javascript unsafe "$1[\"cols\"] = $2;"
        ghcjs_dom_html_frame_set_element_set_cols ::
        JSRef HTMLFrameSetElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.cols Mozilla HTMLFrameSetElement.cols documentation> 
htmlFrameSetElementSetCols ::
                           (IsHTMLFrameSetElement self, ToJSString val) =>
                             self -> val -> IO ()
htmlFrameSetElementSetCols self val
  = ghcjs_dom_html_frame_set_element_set_cols
      (unHTMLFrameSetElement (toHTMLFrameSetElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"cols\"]"
        ghcjs_dom_html_frame_set_element_get_cols ::
        JSRef HTMLFrameSetElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.cols Mozilla HTMLFrameSetElement.cols documentation> 
htmlFrameSetElementGetCols ::
                           (IsHTMLFrameSetElement self, FromJSString result) =>
                             self -> IO result
htmlFrameSetElementGetCols self
  = fromJSString <$>
      (ghcjs_dom_html_frame_set_element_get_cols
         (unHTMLFrameSetElement (toHTMLFrameSetElement self)))
 
foreign import javascript unsafe "$1[\"rows\"] = $2;"
        ghcjs_dom_html_frame_set_element_set_rows ::
        JSRef HTMLFrameSetElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.rows Mozilla HTMLFrameSetElement.rows documentation> 
htmlFrameSetElementSetRows ::
                           (IsHTMLFrameSetElement self, ToJSString val) =>
                             self -> val -> IO ()
htmlFrameSetElementSetRows self val
  = ghcjs_dom_html_frame_set_element_set_rows
      (unHTMLFrameSetElement (toHTMLFrameSetElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"rows\"]"
        ghcjs_dom_html_frame_set_element_get_rows ::
        JSRef HTMLFrameSetElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.rows Mozilla HTMLFrameSetElement.rows documentation> 
htmlFrameSetElementGetRows ::
                           (IsHTMLFrameSetElement self, FromJSString result) =>
                             self -> IO result
htmlFrameSetElementGetRows self
  = fromJSString <$>
      (ghcjs_dom_html_frame_set_element_get_rows
         (unHTMLFrameSetElement (toHTMLFrameSetElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onbeforeunload Mozilla HTMLFrameSetElement.onbeforeunload documentation> 
htmlFrameSetElementOnbeforeunload ::
                                  (IsHTMLFrameSetElement self) =>
                                    Signal self (EventM UIEvent self ())
htmlFrameSetElementOnbeforeunload = (connect "beforeunload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onhashchange Mozilla HTMLFrameSetElement.onhashchange documentation> 
htmlFrameSetElementOnhashchange ::
                                (IsHTMLFrameSetElement self) =>
                                  Signal self (EventM UIEvent self ())
htmlFrameSetElementOnhashchange = (connect "hashchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onmessage Mozilla HTMLFrameSetElement.onmessage documentation> 
htmlFrameSetElementOnmessage ::
                             (IsHTMLFrameSetElement self) =>
                               Signal self (EventM UIEvent self ())
htmlFrameSetElementOnmessage = (connect "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onoffline Mozilla HTMLFrameSetElement.onoffline documentation> 
htmlFrameSetElementOnoffline ::
                             (IsHTMLFrameSetElement self) =>
                               Signal self (EventM UIEvent self ())
htmlFrameSetElementOnoffline = (connect "offline")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.ononline Mozilla HTMLFrameSetElement.ononline documentation> 
htmlFrameSetElementOnonline ::
                            (IsHTMLFrameSetElement self) =>
                              Signal self (EventM UIEvent self ())
htmlFrameSetElementOnonline = (connect "online")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onpopstate Mozilla HTMLFrameSetElement.onpopstate documentation> 
htmlFrameSetElementOnpopstate ::
                              (IsHTMLFrameSetElement self) =>
                                Signal self (EventM UIEvent self ())
htmlFrameSetElementOnpopstate = (connect "popstate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onresize Mozilla HTMLFrameSetElement.onresize documentation> 
htmlFrameSetElementOnresize ::
                            (IsHTMLFrameSetElement self) =>
                              Signal self (EventM UIEvent self ())
htmlFrameSetElementOnresize = (connect "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onstorage Mozilla HTMLFrameSetElement.onstorage documentation> 
htmlFrameSetElementOnstorage ::
                             (IsHTMLFrameSetElement self) =>
                               Signal self (EventM UIEvent self ())
htmlFrameSetElementOnstorage = (connect "storage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onunload Mozilla HTMLFrameSetElement.onunload documentation> 
htmlFrameSetElementOnunload ::
                            (IsHTMLFrameSetElement self) =>
                              Signal self (EventM UIEvent self ())
htmlFrameSetElementOnunload = (connect "unload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onorientationchange Mozilla HTMLFrameSetElement.onorientationchange documentation> 
htmlFrameSetElementOnorientationchange ::
                                       (IsHTMLFrameSetElement self) =>
                                         Signal self (EventM UIEvent self ())
htmlFrameSetElementOnorientationchange
  = (connect "orientationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onblur Mozilla HTMLFrameSetElement.onblur documentation> 
htmlFrameSetElementOnblur ::
                          (IsHTMLFrameSetElement self) =>
                            Signal self (EventM UIEvent self ())
htmlFrameSetElementOnblur = (connect "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onerror Mozilla HTMLFrameSetElement.onerror documentation> 
htmlFrameSetElementOnerror ::
                           (IsHTMLFrameSetElement self) =>
                             Signal self (EventM UIEvent self ())
htmlFrameSetElementOnerror = (connect "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onfocus Mozilla HTMLFrameSetElement.onfocus documentation> 
htmlFrameSetElementOnfocus ::
                           (IsHTMLFrameSetElement self) =>
                             Signal self (EventM UIEvent self ())
htmlFrameSetElementOnfocus = (connect "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onload Mozilla HTMLFrameSetElement.onload documentation> 
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
