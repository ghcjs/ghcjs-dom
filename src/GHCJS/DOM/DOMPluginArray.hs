{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMPluginArray
       (ghcjs_dom_dom_plugin_array_item, domPluginArrayItem,
        ghcjs_dom_dom_plugin_array_named_item, domPluginArrayNamedItem,
        ghcjs_dom_dom_plugin_array_refresh, domPluginArrayRefresh,
        ghcjs_dom_dom_plugin_array_get_length, domPluginArrayGetLength,
        DOMPluginArray, IsDOMPluginArray, castToDOMPluginArray,
        gTypeDOMPluginArray, toDOMPluginArray)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_dom_plugin_array_item ::
        JSRef DOMPluginArray -> Word -> IO (JSRef DOMPlugin)
 
domPluginArrayItem ::
                   (IsDOMPluginArray self) => self -> Word -> IO (Maybe DOMPlugin)
domPluginArrayItem self index
  = fmap DOMPlugin . maybeJSNull <$>
      (ghcjs_dom_dom_plugin_array_item
         (unDOMPluginArray (toDOMPluginArray self))
         index)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_dom_plugin_array_named_item ::
        JSRef DOMPluginArray -> JSString -> IO (JSRef DOMPlugin)
 
domPluginArrayNamedItem ::
                        (IsDOMPluginArray self, ToJSString name) =>
                          self -> name -> IO (Maybe DOMPlugin)
domPluginArrayNamedItem self name
  = fmap DOMPlugin . maybeJSNull <$>
      (ghcjs_dom_dom_plugin_array_named_item
         (unDOMPluginArray (toDOMPluginArray self))
         (toJSString name))
 
foreign import javascript unsafe "$1[\"refresh\"]($2)"
        ghcjs_dom_dom_plugin_array_refresh ::
        JSRef DOMPluginArray -> Bool -> IO ()
 
domPluginArrayRefresh ::
                      (IsDOMPluginArray self) => self -> Bool -> IO ()
domPluginArrayRefresh self reload
  = ghcjs_dom_dom_plugin_array_refresh
      (unDOMPluginArray (toDOMPluginArray self))
      reload
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_plugin_array_get_length ::
        JSRef DOMPluginArray -> IO Word
 
domPluginArrayGetLength ::
                        (IsDOMPluginArray self) => self -> IO Word
domPluginArrayGetLength self
  = ghcjs_dom_dom_plugin_array_get_length
      (unDOMPluginArray (toDOMPluginArray self))
#else
module GHCJS.DOM.DOMPluginArray (
  module Graphics.UI.Gtk.WebKit.DOM.DOMPluginArray
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMPluginArray
#endif
