{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLDetailsElement
       (ghcjs_dom_html_details_element_set_open,
        htmlDetailsElementSetOpen, ghcjs_dom_html_details_element_get_open,
        htmlDetailsElementGetOpen, HTMLDetailsElement,
        IsHTMLDetailsElement, castToHTMLDetailsElement,
        gTypeHTMLDetailsElement, toHTMLDetailsElement)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"open\"] = $2;"
        ghcjs_dom_html_details_element_set_open ::
        JSRef HTMLDetailsElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement.open Mozilla HTMLDetailsElement.open documentation> 
htmlDetailsElementSetOpen ::
                          (IsHTMLDetailsElement self) => self -> Bool -> IO ()
htmlDetailsElementSetOpen self val
  = ghcjs_dom_html_details_element_set_open
      (unHTMLDetailsElement (toHTMLDetailsElement self))
      val
 
foreign import javascript unsafe "($1[\"open\"] ? 1 : 0)"
        ghcjs_dom_html_details_element_get_open ::
        JSRef HTMLDetailsElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement.open Mozilla HTMLDetailsElement.open documentation> 
htmlDetailsElementGetOpen ::
                          (IsHTMLDetailsElement self) => self -> IO Bool
htmlDetailsElementGetOpen self
  = ghcjs_dom_html_details_element_get_open
      (unHTMLDetailsElement (toHTMLDetailsElement self))
#else
module GHCJS.DOM.HTMLDetailsElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLDetailsElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLDetailsElement
#endif
