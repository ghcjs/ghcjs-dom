{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLPreElement
       (ghcjs_dom_html_pre_element_set_width, htmlPreElementSetWidth,
        ghcjs_dom_html_pre_element_get_width, htmlPreElementGetWidth,
        ghcjs_dom_html_pre_element_set_wrap, htmlPreElementSetWrap,
        ghcjs_dom_html_pre_element_get_wrap, htmlPreElementGetWrap,
        HTMLPreElement, IsHTMLPreElement, castToHTMLPreElement,
        gTypeHTMLPreElement, toHTMLPreElement)
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

 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_pre_element_set_width ::
        JSRef HTMLPreElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.width Mozilla HTMLPreElement.width documentation> 
htmlPreElementSetWidth ::
                       (MonadIO m, IsHTMLPreElement self) => self -> Int -> m ()
htmlPreElementSetWidth self val
  = liftIO
      (ghcjs_dom_html_pre_element_set_width
         (unHTMLPreElement (toHTMLPreElement self))
         val)
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_pre_element_get_width ::
        JSRef HTMLPreElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.width Mozilla HTMLPreElement.width documentation> 
htmlPreElementGetWidth ::
                       (MonadIO m, IsHTMLPreElement self) => self -> m Int
htmlPreElementGetWidth self
  = liftIO
      (ghcjs_dom_html_pre_element_get_width
         (unHTMLPreElement (toHTMLPreElement self)))
 
foreign import javascript unsafe "$1[\"wrap\"] = $2;"
        ghcjs_dom_html_pre_element_set_wrap ::
        JSRef HTMLPreElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.wrap Mozilla HTMLPreElement.wrap documentation> 
htmlPreElementSetWrap ::
                      (MonadIO m, IsHTMLPreElement self) => self -> Bool -> m ()
htmlPreElementSetWrap self val
  = liftIO
      (ghcjs_dom_html_pre_element_set_wrap
         (unHTMLPreElement (toHTMLPreElement self))
         val)
 
foreign import javascript unsafe "($1[\"wrap\"] ? 1 : 0)"
        ghcjs_dom_html_pre_element_get_wrap ::
        JSRef HTMLPreElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.wrap Mozilla HTMLPreElement.wrap documentation> 
htmlPreElementGetWrap ::
                      (MonadIO m, IsHTMLPreElement self) => self -> m Bool
htmlPreElementGetWrap self
  = liftIO
      (ghcjs_dom_html_pre_element_get_wrap
         (unHTMLPreElement (toHTMLPreElement self)))
#else
module GHCJS.DOM.HTMLPreElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLPreElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLPreElement
#endif
