{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLDataListElement
       (ghcjs_dom_html_data_list_element_get_options,
        htmlDataListElementGetOptions, HTMLDataListElement,
        IsHTMLDataListElement, castToHTMLDataListElement,
        gTypeHTMLDataListElement, toHTMLDataListElement)
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

 
foreign import javascript unsafe "$1[\"options\"]"
        ghcjs_dom_html_data_list_element_get_options ::
        JSRef HTMLDataListElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataListElement.options Mozilla HTMLDataListElement.options documentation> 
htmlDataListElementGetOptions ::
                              (IsHTMLDataListElement self) => self -> IO (Maybe HTMLCollection)
htmlDataListElementGetOptions self
  = (ghcjs_dom_html_data_list_element_get_options
       (unHTMLDataListElement (toHTMLDataListElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.HTMLDataListElement (
  ) where
#endif
