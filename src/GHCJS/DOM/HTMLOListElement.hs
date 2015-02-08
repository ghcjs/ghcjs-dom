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
        ghcjs_dom_htmlo_list_element_set_compact ::
        JSRef HTMLOListElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.compact Mozilla HTMLOListElement.compact documentation> 
htmloListElementSetCompact ::
                           (MonadIO m, IsHTMLOListElement self) => self -> Bool -> m ()
htmloListElementSetCompact self val
  = liftIO
      (ghcjs_dom_htmlo_list_element_set_compact
         (unHTMLOListElement (toHTMLOListElement self))
         val)
 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_htmlo_list_element_get_compact ::
        JSRef HTMLOListElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.compact Mozilla HTMLOListElement.compact documentation> 
htmloListElementGetCompact ::
                           (MonadIO m, IsHTMLOListElement self) => self -> m Bool
htmloListElementGetCompact self
  = liftIO
      (ghcjs_dom_htmlo_list_element_get_compact
         (unHTMLOListElement (toHTMLOListElement self)))
 
foreign import javascript unsafe "$1[\"start\"] = $2;"
        ghcjs_dom_htmlo_list_element_set_start ::
        JSRef HTMLOListElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.start Mozilla HTMLOListElement.start documentation> 
htmloListElementSetStart ::
                         (MonadIO m, IsHTMLOListElement self) => self -> Int -> m ()
htmloListElementSetStart self val
  = liftIO
      (ghcjs_dom_htmlo_list_element_set_start
         (unHTMLOListElement (toHTMLOListElement self))
         val)
 
foreign import javascript unsafe "$1[\"start\"]"
        ghcjs_dom_htmlo_list_element_get_start ::
        JSRef HTMLOListElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.start Mozilla HTMLOListElement.start documentation> 
htmloListElementGetStart ::
                         (MonadIO m, IsHTMLOListElement self) => self -> m Int
htmloListElementGetStart self
  = liftIO
      (ghcjs_dom_htmlo_list_element_get_start
         (unHTMLOListElement (toHTMLOListElement self)))
 
foreign import javascript unsafe "$1[\"reversed\"] = $2;"
        ghcjs_dom_htmlo_list_element_set_reversed ::
        JSRef HTMLOListElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.reversed Mozilla HTMLOListElement.reversed documentation> 
htmloListElementSetReversed ::
                            (MonadIO m, IsHTMLOListElement self) => self -> Bool -> m ()
htmloListElementSetReversed self val
  = liftIO
      (ghcjs_dom_htmlo_list_element_set_reversed
         (unHTMLOListElement (toHTMLOListElement self))
         val)
 
foreign import javascript unsafe "($1[\"reversed\"] ? 1 : 0)"
        ghcjs_dom_htmlo_list_element_get_reversed ::
        JSRef HTMLOListElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.reversed Mozilla HTMLOListElement.reversed documentation> 
htmloListElementGetReversed ::
                            (MonadIO m, IsHTMLOListElement self) => self -> m Bool
htmloListElementGetReversed self
  = liftIO
      (ghcjs_dom_htmlo_list_element_get_reversed
         (unHTMLOListElement (toHTMLOListElement self)))
#else
module GHCJS.DOM.HTMLOListElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLOListElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLOListElement
#endif
