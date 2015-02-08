{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLModElement
       (ghcjs_dom_html_mod_element_set_cite, htmlModElementSetCite,
        ghcjs_dom_html_mod_element_get_cite, htmlModElementGetCite,
        ghcjs_dom_html_mod_element_set_date_time,
        htmlModElementSetDateTime,
        ghcjs_dom_html_mod_element_get_date_time,
        htmlModElementGetDateTime, HTMLModElement, IsHTMLModElement,
        castToHTMLModElement, gTypeHTMLModElement, toHTMLModElement)
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

 
foreign import javascript unsafe "$1[\"cite\"] = $2;"
        ghcjs_dom_html_mod_element_set_cite ::
        JSRef HTMLModElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.cite Mozilla HTMLModElement.cite documentation> 
htmlModElementSetCite ::
                      (MonadIO m, IsHTMLModElement self, ToJSString val) =>
                        self -> val -> m ()
htmlModElementSetCite self val
  = liftIO
      (ghcjs_dom_html_mod_element_set_cite
         (unHTMLModElement (toHTMLModElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"cite\"]"
        ghcjs_dom_html_mod_element_get_cite ::
        JSRef HTMLModElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.cite Mozilla HTMLModElement.cite documentation> 
htmlModElementGetCite ::
                      (MonadIO m, IsHTMLModElement self, FromJSString result) =>
                        self -> m result
htmlModElementGetCite self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_mod_element_get_cite
            (unHTMLModElement (toHTMLModElement self))))
 
foreign import javascript unsafe "$1[\"dateTime\"] = $2;"
        ghcjs_dom_html_mod_element_set_date_time ::
        JSRef HTMLModElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.dateTime Mozilla HTMLModElement.dateTime documentation> 
htmlModElementSetDateTime ::
                          (MonadIO m, IsHTMLModElement self, ToJSString val) =>
                            self -> val -> m ()
htmlModElementSetDateTime self val
  = liftIO
      (ghcjs_dom_html_mod_element_set_date_time
         (unHTMLModElement (toHTMLModElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"dateTime\"]"
        ghcjs_dom_html_mod_element_get_date_time ::
        JSRef HTMLModElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.dateTime Mozilla HTMLModElement.dateTime documentation> 
htmlModElementGetDateTime ::
                          (MonadIO m, IsHTMLModElement self, FromJSString result) =>
                            self -> m result
htmlModElementGetDateTime self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_mod_element_get_date_time
            (unHTMLModElement (toHTMLModElement self))))
#else
module GHCJS.DOM.HTMLModElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLModElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLModElement
#endif
