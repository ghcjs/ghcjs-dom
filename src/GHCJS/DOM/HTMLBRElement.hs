{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLBRElement
       (ghcjs_dom_htmlbr_element_set_clear, htmlbrElementSetClear,
        ghcjs_dom_htmlbr_element_get_clear, htmlbrElementGetClear)
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
foreign import javascript unsafe "$1[\"clear\"] = $2;"
        ghcjs_dom_htmlbr_element_set_clear ::
        JSRef HTMLBRElement -> JSString -> IO ()
#else 
ghcjs_dom_htmlbr_element_set_clear ::
                                     JSRef HTMLBRElement -> JSString -> IO ()
ghcjs_dom_htmlbr_element_set_clear = undefined
#endif
 
htmlbrElementSetClear ::
                      (IsHTMLBRElement self, ToJSString val) => self -> val -> IO ()
htmlbrElementSetClear self val
  = ghcjs_dom_htmlbr_element_set_clear
      (unHTMLBRElement (toHTMLBRElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clear\"]"
        ghcjs_dom_htmlbr_element_get_clear ::
        JSRef HTMLBRElement -> IO JSString
#else 
ghcjs_dom_htmlbr_element_get_clear ::
                                     JSRef HTMLBRElement -> IO JSString
ghcjs_dom_htmlbr_element_get_clear = undefined
#endif
 
htmlbrElementGetClear ::
                      (IsHTMLBRElement self, FromJSString result) => self -> IO result
htmlbrElementGetClear self
  = fromJSString <$>
      (ghcjs_dom_htmlbr_element_get_clear
         (unHTMLBRElement (toHTMLBRElement self)))
#else
module GHCJS.DOM.HTMLBRElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBRElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLBRElement
#endif
