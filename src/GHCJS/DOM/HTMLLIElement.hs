{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLLIElement
       (ghcjs_dom_htmlli_element_set_value, htmlliElementSetValue,
        ghcjs_dom_htmlli_element_get_value, htmlliElementGetValue,
        HTMLLIElement, IsHTMLLIElement, castToHTMLLIElement,
        gTypeHTMLLIElement, toHTMLLIElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_htmlli_element_set_value ::
        JSRef HTMLLIElement -> Int -> IO ()
 
htmlliElementSetValue ::
                      (IsHTMLLIElement self) => self -> Int -> IO ()
htmlliElementSetValue self val
  = ghcjs_dom_htmlli_element_set_value
      (unHTMLLIElement (toHTMLLIElement self))
      val
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_htmlli_element_get_value :: JSRef HTMLLIElement -> IO Int
 
htmlliElementGetValue :: (IsHTMLLIElement self) => self -> IO Int
htmlliElementGetValue self
  = ghcjs_dom_htmlli_element_get_value
      (unHTMLLIElement (toHTMLLIElement self))
#else
module GHCJS.DOM.HTMLLIElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLLIElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLLIElement
#endif
