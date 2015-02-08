{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTitleElement
       (ghcjs_dom_html_title_element_set_text, htmlTitleElementSetText,
        ghcjs_dom_html_title_element_get_text, htmlTitleElementGetText,
        HTMLTitleElement, IsHTMLTitleElement, castToHTMLTitleElement,
        gTypeHTMLTitleElement, toHTMLTitleElement)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"text\"] = $2;"
        ghcjs_dom_html_title_element_set_text ::
        JSRef HTMLTitleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement.text Mozilla HTMLTitleElement.text documentation> 
htmlTitleElementSetText ::
                        (MonadIO m, IsHTMLTitleElement self, ToJSString val) =>
                          self -> val -> m ()
htmlTitleElementSetText self val
  = liftIO
      (ghcjs_dom_html_title_element_set_text
         (unHTMLTitleElement (toHTMLTitleElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_html_title_element_get_text ::
        JSRef HTMLTitleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement.text Mozilla HTMLTitleElement.text documentation> 
htmlTitleElementGetText ::
                        (MonadIO m, IsHTMLTitleElement self, FromJSString result) =>
                          self -> m result
htmlTitleElementGetText self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_title_element_get_text
            (unHTMLTitleElement (toHTMLTitleElement self))))
#else
module GHCJS.DOM.HTMLTitleElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTitleElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTitleElement
#endif
