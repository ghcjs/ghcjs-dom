{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLMapElement
       (webkit_dom_html_map_element_get_areas, htmlMapElementGetAreas,
        webkit_dom_html_map_element_set_name, htmlMapElementSetName,
        webkit_dom_html_map_element_get_name, htmlMapElementGetName)
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
foreign import javascript unsafe "$1[\"areas\"]"
        webkit_dom_html_map_element_get_areas ::
        JSRef HTMLMapElement -> IO (JSRef HTMLCollection)
#else 
webkit_dom_html_map_element_get_areas ::
                                        JSRef HTMLMapElement -> IO (JSRef HTMLCollection)
webkit_dom_html_map_element_get_areas = undefined
#endif
 
htmlMapElementGetAreas ::
                       (HTMLMapElementClass self) => self -> IO (Maybe HTMLCollection)
htmlMapElementGetAreas self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_html_map_element_get_areas
         (unHTMLMapElement (toHTMLMapElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_map_element_set_name ::
        JSRef HTMLMapElement -> JSString -> IO ()
#else 
webkit_dom_html_map_element_set_name ::
                                       JSRef HTMLMapElement -> JSString -> IO ()
webkit_dom_html_map_element_set_name = undefined
#endif
 
htmlMapElementSetName ::
                      (HTMLMapElementClass self, ToJSString val) => self -> val -> IO ()
htmlMapElementSetName self val
  = webkit_dom_html_map_element_set_name
      (unHTMLMapElement (toHTMLMapElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_map_element_get_name ::
        JSRef HTMLMapElement -> IO JSString
#else 
webkit_dom_html_map_element_get_name ::
                                       JSRef HTMLMapElement -> IO JSString
webkit_dom_html_map_element_get_name = undefined
#endif
 
htmlMapElementGetName ::
                      (HTMLMapElementClass self, FromJSString result) =>
                        self -> IO result
htmlMapElementGetName self
  = fromJSString <$>
      (webkit_dom_html_map_element_get_name
         (unHTMLMapElement (toHTMLMapElement self)))