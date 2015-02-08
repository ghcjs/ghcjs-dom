{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLLegendElement
       (ghcjs_dom_html_legend_element_get_form, htmlLegendElementGetForm,
        ghcjs_dom_html_legend_element_set_align, htmlLegendElementSetAlign,
        ghcjs_dom_html_legend_element_get_align, htmlLegendElementGetAlign,
        HTMLLegendElement, IsHTMLLegendElement, castToHTMLLegendElement,
        gTypeHTMLLegendElement, toHTMLLegendElement)
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

 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_legend_element_get_form ::
        JSRef HTMLLegendElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement.form Mozilla HTMLLegendElement.form documentation> 
htmlLegendElementGetForm ::
                         (MonadIO m, IsHTMLLegendElement self) =>
                           self -> m (Maybe HTMLFormElement)
htmlLegendElementGetForm self
  = liftIO
      ((ghcjs_dom_html_legend_element_get_form
          (unHTMLLegendElement (toHTMLLegendElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_legend_element_set_align ::
        JSRef HTMLLegendElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement.align Mozilla HTMLLegendElement.align documentation> 
htmlLegendElementSetAlign ::
                          (MonadIO m, IsHTMLLegendElement self, ToJSString val) =>
                            self -> val -> m ()
htmlLegendElementSetAlign self val
  = liftIO
      (ghcjs_dom_html_legend_element_set_align
         (unHTMLLegendElement (toHTMLLegendElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_legend_element_get_align ::
        JSRef HTMLLegendElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement.align Mozilla HTMLLegendElement.align documentation> 
htmlLegendElementGetAlign ::
                          (MonadIO m, IsHTMLLegendElement self, FromJSString result) =>
                            self -> m result
htmlLegendElementGetAlign self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_legend_element_get_align
            (unHTMLLegendElement (toHTMLLegendElement self))))
#else
module GHCJS.DOM.HTMLLegendElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLLegendElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLLegendElement
#endif
