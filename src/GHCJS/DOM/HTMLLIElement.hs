{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLLIElement
       (ghcjs_dom_htmlli_element_set_value, htmlliElementSetValue,
        ghcjs_dom_htmlli_element_get_value, htmlliElementGetValue,
        HTMLLIElement, IsHTMLLIElement, castToHTMLLIElement,
        gTypeHTMLLIElement, toHTMLLIElement)
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

 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_htmlli_element_set_value ::
        JSRef HTMLLIElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement.value Mozilla HTMLLIElement.value documentation> 
htmlliElementSetValue ::
                      (MonadIO m, IsHTMLLIElement self) => self -> Int -> m ()
htmlliElementSetValue self val
  = liftIO
      (ghcjs_dom_htmlli_element_set_value
         (unHTMLLIElement (toHTMLLIElement self))
         val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_htmlli_element_get_value :: JSRef HTMLLIElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement.value Mozilla HTMLLIElement.value documentation> 
htmlliElementGetValue ::
                      (MonadIO m, IsHTMLLIElement self) => self -> m Int
htmlliElementGetValue self
  = liftIO
      (ghcjs_dom_htmlli_element_get_value
         (unHTMLLIElement (toHTMLLIElement self)))
#else
module GHCJS.DOM.HTMLLIElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLLIElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLLIElement
#endif
