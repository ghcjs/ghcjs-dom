{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLMapElement
       (ghcjs_dom_html_map_element_get_areas, htmlMapElementGetAreas,
        ghcjs_dom_html_map_element_set_name, htmlMapElementSetName,
        ghcjs_dom_html_map_element_get_name, htmlMapElementGetName,
        HTMLMapElement, IsHTMLMapElement, castToHTMLMapElement,
        gTypeHTMLMapElement, toHTMLMapElement)
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

 
foreign import javascript unsafe "$1[\"areas\"]"
        ghcjs_dom_html_map_element_get_areas ::
        JSRef HTMLMapElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement.areas Mozilla HTMLMapElement.areas documentation> 
htmlMapElementGetAreas ::
                       (MonadIO m, IsHTMLMapElement self) =>
                         self -> m (Maybe HTMLCollection)
htmlMapElementGetAreas self
  = liftIO
      ((ghcjs_dom_html_map_element_get_areas
          (unHTMLMapElement (toHTMLMapElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_map_element_set_name ::
        JSRef HTMLMapElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement.name Mozilla HTMLMapElement.name documentation> 
htmlMapElementSetName ::
                      (MonadIO m, IsHTMLMapElement self, ToJSString val) =>
                        self -> val -> m ()
htmlMapElementSetName self val
  = liftIO
      (ghcjs_dom_html_map_element_set_name
         (unHTMLMapElement (toHTMLMapElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_map_element_get_name ::
        JSRef HTMLMapElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement.name Mozilla HTMLMapElement.name documentation> 
htmlMapElementGetName ::
                      (MonadIO m, IsHTMLMapElement self, FromJSString result) =>
                        self -> m result
htmlMapElementGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_map_element_get_name
            (unHTMLMapElement (toHTMLMapElement self))))
#else
module GHCJS.DOM.HTMLMapElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMapElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLMapElement
#endif
