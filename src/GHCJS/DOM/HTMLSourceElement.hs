{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLSourceElement
       (ghcjs_dom_html_source_element_set_src, htmlSourceElementSetSrc,
        ghcjs_dom_html_source_element_get_src, htmlSourceElementGetSrc,
        ghcjs_dom_html_source_element_set_media, htmlSourceElementSetMedia,
        ghcjs_dom_html_source_element_get_media, htmlSourceElementGetMedia,
        HTMLSourceElement, IsHTMLSourceElement, castToHTMLSourceElement,
        gTypeHTMLSourceElement, toHTMLSourceElement)
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

 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_source_element_set_src ::
        JSRef HTMLSourceElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.src Mozilla HTMLSourceElement.src documentation> 
htmlSourceElementSetSrc ::
                        (IsHTMLSourceElement self, ToJSString val) => self -> val -> IO ()
htmlSourceElementSetSrc self val
  = ghcjs_dom_html_source_element_set_src
      (unHTMLSourceElement (toHTMLSourceElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_source_element_get_src ::
        JSRef HTMLSourceElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.src Mozilla HTMLSourceElement.src documentation> 
htmlSourceElementGetSrc ::
                        (IsHTMLSourceElement self, FromJSString result) =>
                          self -> IO result
htmlSourceElementGetSrc self
  = fromJSString <$>
      (ghcjs_dom_html_source_element_get_src
         (unHTMLSourceElement (toHTMLSourceElement self)))
 
foreign import javascript unsafe "$1[\"media\"] = $2;"
        ghcjs_dom_html_source_element_set_media ::
        JSRef HTMLSourceElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.media Mozilla HTMLSourceElement.media documentation> 
htmlSourceElementSetMedia ::
                          (IsHTMLSourceElement self, ToJSString val) => self -> val -> IO ()
htmlSourceElementSetMedia self val
  = ghcjs_dom_html_source_element_set_media
      (unHTMLSourceElement (toHTMLSourceElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"media\"]"
        ghcjs_dom_html_source_element_get_media ::
        JSRef HTMLSourceElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.media Mozilla HTMLSourceElement.media documentation> 
htmlSourceElementGetMedia ::
                          (IsHTMLSourceElement self, FromJSString result) =>
                            self -> IO result
htmlSourceElementGetMedia self
  = fromJSString <$>
      (ghcjs_dom_html_source_element_get_media
         (unHTMLSourceElement (toHTMLSourceElement self)))
#else
module GHCJS.DOM.HTMLSourceElement (
  ) where
#endif
