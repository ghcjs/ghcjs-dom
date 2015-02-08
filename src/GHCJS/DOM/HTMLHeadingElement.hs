{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLHeadingElement
       (ghcjs_dom_html_heading_element_set_align,
        htmlHeadingElementSetAlign,
        ghcjs_dom_html_heading_element_get_align,
        htmlHeadingElementGetAlign, HTMLHeadingElement,
        IsHTMLHeadingElement, castToHTMLHeadingElement,
        gTypeHTMLHeadingElement, toHTMLHeadingElement)
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

 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_heading_element_set_align ::
        JSRef HTMLHeadingElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadingElement.align Mozilla HTMLHeadingElement.align documentation> 
htmlHeadingElementSetAlign ::
                           (MonadIO m, IsHTMLHeadingElement self, ToJSString val) =>
                             self -> val -> m ()
htmlHeadingElementSetAlign self val
  = liftIO
      (ghcjs_dom_html_heading_element_set_align
         (unHTMLHeadingElement (toHTMLHeadingElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_heading_element_get_align ::
        JSRef HTMLHeadingElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadingElement.align Mozilla HTMLHeadingElement.align documentation> 
htmlHeadingElementGetAlign ::
                           (MonadIO m, IsHTMLHeadingElement self, FromJSString result) =>
                             self -> m result
htmlHeadingElementGetAlign self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_heading_element_get_align
            (unHTMLHeadingElement (toHTMLHeadingElement self))))
#else
module GHCJS.DOM.HTMLHeadingElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLHeadingElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLHeadingElement
#endif
