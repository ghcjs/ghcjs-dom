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
import GHCJS.Types
import GHCJS.Foreign
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"areas\"]"
        ghcjs_dom_html_map_element_get_areas ::
        JSRef HTMLMapElement -> IO (JSRef HTMLCollection)
#else 
ghcjs_dom_html_map_element_get_areas ::
                                       JSRef HTMLMapElement -> IO (JSRef HTMLCollection)
ghcjs_dom_html_map_element_get_areas = undefined
#endif
 
htmlMapElementGetAreas ::
                       (IsHTMLMapElement self) => self -> IO (Maybe HTMLCollection)
htmlMapElementGetAreas self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_html_map_element_get_areas
         (unHTMLMapElement (toHTMLMapElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_map_element_set_name ::
        JSRef HTMLMapElement -> JSString -> IO ()
#else 
ghcjs_dom_html_map_element_set_name ::
                                      JSRef HTMLMapElement -> JSString -> IO ()
ghcjs_dom_html_map_element_set_name = undefined
#endif
 
htmlMapElementSetName ::
                      (IsHTMLMapElement self, ToJSString val) => self -> val -> IO ()
htmlMapElementSetName self val
  = ghcjs_dom_html_map_element_set_name
      (unHTMLMapElement (toHTMLMapElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_map_element_get_name ::
        JSRef HTMLMapElement -> IO JSString
#else 
ghcjs_dom_html_map_element_get_name ::
                                      JSRef HTMLMapElement -> IO JSString
ghcjs_dom_html_map_element_get_name = undefined
#endif
 
htmlMapElementGetName ::
                      (IsHTMLMapElement self, FromJSString result) => self -> IO result
htmlMapElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_map_element_get_name
         (unHTMLMapElement (toHTMLMapElement self)))
#else
module GHCJS.DOM.HTMLMapElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMapElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLMapElement
#endif
