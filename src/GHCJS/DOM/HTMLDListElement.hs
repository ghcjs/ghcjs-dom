{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLDListElement
       (ghcjs_dom_htmld_list_element_set_compact,
        htmldListElementSetCompact,
        ghcjs_dom_htmld_list_element_get_compact,
        htmldListElementGetCompact, HTMLDListElement, IsHTMLDListElement,
        castToHTMLDListElement, gTypeHTMLDListElement, toHTMLDListElement)
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

 
foreign import javascript unsafe "$1[\"compact\"] = $2;"
        ghcjs_dom_htmld_list_element_set_compact ::
        JSRef HTMLDListElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDListElement.compact Mozilla HTMLDListElement.compact documentation> 
htmldListElementSetCompact ::
                           (MonadIO m, IsHTMLDListElement self) => self -> Bool -> m ()
htmldListElementSetCompact self val
  = liftIO
      (ghcjs_dom_htmld_list_element_set_compact
         (unHTMLDListElement (toHTMLDListElement self))
         val)
 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_htmld_list_element_get_compact ::
        JSRef HTMLDListElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDListElement.compact Mozilla HTMLDListElement.compact documentation> 
htmldListElementGetCompact ::
                           (MonadIO m, IsHTMLDListElement self) => self -> m Bool
htmldListElementGetCompact self
  = liftIO
      (ghcjs_dom_htmld_list_element_get_compact
         (unHTMLDListElement (toHTMLDListElement self)))
#else
module GHCJS.DOM.HTMLDListElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLDListElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLDListElement
#endif
