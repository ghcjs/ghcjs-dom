{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DOMPluginArray
       (webkit_dom_dom_plugin_array_item, domPluginArrayItem,
        webkit_dom_dom_plugin_array_named_item, domPluginArrayNamedItem,
        webkit_dom_dom_plugin_array_refresh, domPluginArrayRefresh,
        webkit_dom_dom_plugin_array_get_length, domPluginArrayGetLength)
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
foreign import javascript unsafe "$1[\"item\"]($2)"
        webkit_dom_dom_plugin_array_item ::
        JSRef DOMPluginArray -> Word -> IO (JSRef DOMPlugin)
#else 
webkit_dom_dom_plugin_array_item ::
                                   JSRef DOMPluginArray -> Word -> IO (JSRef DOMPlugin)
webkit_dom_dom_plugin_array_item = undefined
#endif
 
domPluginArrayItem ::
                   (DOMPluginArrayClass self) => self -> Word -> IO (Maybe DOMPlugin)
domPluginArrayItem self index
  = fmap DOMPlugin . maybeJSNull <$>
      (webkit_dom_dom_plugin_array_item
         (unDOMPluginArray (toDOMPluginArray self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        webkit_dom_dom_plugin_array_named_item ::
        JSRef DOMPluginArray -> JSString -> IO (JSRef DOMPlugin)
#else 
webkit_dom_dom_plugin_array_named_item ::
                                         JSRef DOMPluginArray -> JSString -> IO (JSRef DOMPlugin)
webkit_dom_dom_plugin_array_named_item = undefined
#endif
 
domPluginArrayNamedItem ::
                        (DOMPluginArrayClass self, ToJSString name) =>
                          self -> name -> IO (Maybe DOMPlugin)
domPluginArrayNamedItem self name
  = fmap DOMPlugin . maybeJSNull <$>
      (webkit_dom_dom_plugin_array_named_item
         (unDOMPluginArray (toDOMPluginArray self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"refresh\"]($2)"
        webkit_dom_dom_plugin_array_refresh ::
        JSRef DOMPluginArray -> JSBool -> IO ()
#else 
webkit_dom_dom_plugin_array_refresh ::
                                      JSRef DOMPluginArray -> JSBool -> IO ()
webkit_dom_dom_plugin_array_refresh = undefined
#endif
 
domPluginArrayRefresh ::
                      (DOMPluginArrayClass self) => self -> Bool -> IO ()
domPluginArrayRefresh self reload
  = webkit_dom_dom_plugin_array_refresh
      (unDOMPluginArray (toDOMPluginArray self))
      (toJSBool reload)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_dom_plugin_array_get_length ::
        JSRef DOMPluginArray -> IO Word
#else 
webkit_dom_dom_plugin_array_get_length ::
                                         JSRef DOMPluginArray -> IO Word
webkit_dom_dom_plugin_array_get_length = undefined
#endif
 
domPluginArrayGetLength ::
                        (DOMPluginArrayClass self) => self -> IO Word
domPluginArrayGetLength self
  = webkit_dom_dom_plugin_array_get_length
      (unDOMPluginArray (toDOMPluginArray self))