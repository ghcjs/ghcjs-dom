{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTemplateElement
       (ghcjs_dom_html_template_element_get_content,
        htmlTemplateElementGetContent, HTMLTemplateElement,
        IsHTMLTemplateElement, castToHTMLTemplateElement,
        gTypeHTMLTemplateElement, toHTMLTemplateElement)
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

 
foreign import javascript unsafe "$1[\"content\"]"
        ghcjs_dom_html_template_element_get_content ::
        JSRef HTMLTemplateElement -> IO (JSRef DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement.content Mozilla HTMLTemplateElement.content documentation> 
htmlTemplateElementGetContent ::
                              (IsHTMLTemplateElement self) => self -> IO (Maybe DocumentFragment)
htmlTemplateElementGetContent self
  = (ghcjs_dom_html_template_element_get_content
       (unHTMLTemplateElement (toHTMLTemplateElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.HTMLTemplateElement (
  ) where
#endif
