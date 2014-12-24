{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLOListElement
       (ghcjs_dom_htmlo_list_element_set_compact,
        htmloListElementSetCompact,
        ghcjs_dom_htmlo_list_element_get_compact,
        htmloListElementGetCompact, ghcjs_dom_htmlo_list_element_set_start,
        htmloListElementSetStart, ghcjs_dom_htmlo_list_element_get_start,
        htmloListElementGetStart,
        ghcjs_dom_htmlo_list_element_set_reversed,
        htmloListElementSetReversed,
        ghcjs_dom_htmlo_list_element_get_reversed,
        htmloListElementGetReversed, HTMLOListElement, IsHTMLOListElement,
        castToHTMLOListElement, gTypeHTMLOListElement, toHTMLOListElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"compact\"] = $2;"
        ghcjs_dom_htmlo_list_element_set_compact ::
        JSRef HTMLOListElement -> Bool -> IO ()
 
htmloListElementSetCompact ::
                           (IsHTMLOListElement self) => self -> Bool -> IO ()
htmloListElementSetCompact self val
  = ghcjs_dom_htmlo_list_element_set_compact
      (unHTMLOListElement (toHTMLOListElement self))
      val
 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_htmlo_list_element_get_compact ::
        JSRef HTMLOListElement -> IO Bool
 
htmloListElementGetCompact ::
                           (IsHTMLOListElement self) => self -> IO Bool
htmloListElementGetCompact self
  = ghcjs_dom_htmlo_list_element_get_compact
      (unHTMLOListElement (toHTMLOListElement self))
 
foreign import javascript unsafe "$1[\"start\"] = $2;"
        ghcjs_dom_htmlo_list_element_set_start ::
        JSRef HTMLOListElement -> Int -> IO ()
 
htmloListElementSetStart ::
                         (IsHTMLOListElement self) => self -> Int -> IO ()
htmloListElementSetStart self val
  = ghcjs_dom_htmlo_list_element_set_start
      (unHTMLOListElement (toHTMLOListElement self))
      val
 
foreign import javascript unsafe "$1[\"start\"]"
        ghcjs_dom_htmlo_list_element_get_start ::
        JSRef HTMLOListElement -> IO Int
 
htmloListElementGetStart ::
                         (IsHTMLOListElement self) => self -> IO Int
htmloListElementGetStart self
  = ghcjs_dom_htmlo_list_element_get_start
      (unHTMLOListElement (toHTMLOListElement self))
 
foreign import javascript unsafe "$1[\"reversed\"] = $2;"
        ghcjs_dom_htmlo_list_element_set_reversed ::
        JSRef HTMLOListElement -> Bool -> IO ()
 
htmloListElementSetReversed ::
                            (IsHTMLOListElement self) => self -> Bool -> IO ()
htmloListElementSetReversed self val
  = ghcjs_dom_htmlo_list_element_set_reversed
      (unHTMLOListElement (toHTMLOListElement self))
      val
 
foreign import javascript unsafe "($1[\"reversed\"] ? 1 : 0)"
        ghcjs_dom_htmlo_list_element_get_reversed ::
        JSRef HTMLOListElement -> IO Bool
 
htmloListElementGetReversed ::
                            (IsHTMLOListElement self) => self -> IO Bool
htmloListElementGetReversed self
  = ghcjs_dom_htmlo_list_element_get_reversed
      (unHTMLOListElement (toHTMLOListElement self))
#else
module GHCJS.DOM.HTMLOListElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLOListElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLOListElement
#endif
