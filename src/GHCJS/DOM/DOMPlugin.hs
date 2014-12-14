{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMPlugin
       (ghcjs_dom_dom_plugin_item, domPluginItem,
        ghcjs_dom_dom_plugin_named_item, domPluginNamedItem,
        ghcjs_dom_dom_plugin_get_name, domPluginGetName,
        ghcjs_dom_dom_plugin_get_filename, domPluginGetFilename,
        ghcjs_dom_dom_plugin_get_description, domPluginGetDescription,
        ghcjs_dom_dom_plugin_get_length, domPluginGetLength, DOMPlugin,
        IsDOMPlugin, castToDOMPlugin, gTypeDOMPlugin, toDOMPlugin)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_dom_plugin_item ::
        JSRef DOMPlugin -> Word -> IO (JSRef DOMMimeType)
 
domPluginItem ::
              (IsDOMPlugin self) => self -> Word -> IO (Maybe DOMMimeType)
domPluginItem self index
  = fmap DOMMimeType . maybeJSNull <$>
      (ghcjs_dom_dom_plugin_item (unDOMPlugin (toDOMPlugin self)) index)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_dom_plugin_named_item ::
        JSRef DOMPlugin -> JSString -> IO (JSRef DOMMimeType)
 
domPluginNamedItem ::
                   (IsDOMPlugin self, ToJSString name) =>
                     self -> name -> IO (Maybe DOMMimeType)
domPluginNamedItem self name
  = fmap DOMMimeType . maybeJSNull <$>
      (ghcjs_dom_dom_plugin_named_item (unDOMPlugin (toDOMPlugin self))
         (toJSString name))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_dom_plugin_get_name :: JSRef DOMPlugin -> IO JSString
 
domPluginGetName ::
                 (IsDOMPlugin self, FromJSString result) => self -> IO result
domPluginGetName self
  = fromJSString <$>
      (ghcjs_dom_dom_plugin_get_name (unDOMPlugin (toDOMPlugin self)))
 
foreign import javascript unsafe "$1[\"filename\"]"
        ghcjs_dom_dom_plugin_get_filename :: JSRef DOMPlugin -> IO JSString
 
domPluginGetFilename ::
                     (IsDOMPlugin self, FromJSString result) => self -> IO result
domPluginGetFilename self
  = fromJSString <$>
      (ghcjs_dom_dom_plugin_get_filename
         (unDOMPlugin (toDOMPlugin self)))
 
foreign import javascript unsafe "$1[\"description\"]"
        ghcjs_dom_dom_plugin_get_description ::
        JSRef DOMPlugin -> IO JSString
 
domPluginGetDescription ::
                        (IsDOMPlugin self, FromJSString result) => self -> IO result
domPluginGetDescription self
  = fromJSString <$>
      (ghcjs_dom_dom_plugin_get_description
         (unDOMPlugin (toDOMPlugin self)))
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_plugin_get_length :: JSRef DOMPlugin -> IO Word
 
domPluginGetLength :: (IsDOMPlugin self) => self -> IO Word
domPluginGetLength self
  = ghcjs_dom_dom_plugin_get_length (unDOMPlugin (toDOMPlugin self))
#else
module GHCJS.DOM.DOMPlugin (
  module Graphics.UI.Gtk.WebKit.DOM.DOMPlugin
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMPlugin
#endif
