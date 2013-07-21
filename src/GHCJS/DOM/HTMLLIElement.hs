{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLLIElement
       (ghcjs_dom_htmlli_element_set_value, htmlliElementSetValue,
        ghcjs_dom_htmlli_element_get_value, htmlliElementGetValue)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_htmlli_element_set_value ::
        JSRef HTMLLIElement -> Int -> IO ()
#else 
ghcjs_dom_htmlli_element_set_value ::
                                     JSRef HTMLLIElement -> Int -> IO ()
ghcjs_dom_htmlli_element_set_value = undefined
#endif
 
htmlliElementSetValue ::
                      (IsHTMLLIElement self) => self -> Int -> IO ()
htmlliElementSetValue self val
  = ghcjs_dom_htmlli_element_set_value
      (unHTMLLIElement (toHTMLLIElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_htmlli_element_get_value :: JSRef HTMLLIElement -> IO Int
#else 
ghcjs_dom_htmlli_element_get_value :: JSRef HTMLLIElement -> IO Int
ghcjs_dom_htmlli_element_get_value = undefined
#endif
 
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
