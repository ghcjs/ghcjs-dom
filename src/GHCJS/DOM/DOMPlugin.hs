{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DOMPlugin
       (webkit_dom_dom_plugin_item, domPluginItem,
        webkit_dom_dom_plugin_named_item, domPluginNamedItem,
        webkit_dom_dom_plugin_get_name, domPluginGetName,
        webkit_dom_dom_plugin_get_filename, domPluginGetFilename,
        webkit_dom_dom_plugin_get_description, domPluginGetDescription,
        webkit_dom_dom_plugin_get_length, domPluginGetLength)
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
        webkit_dom_dom_plugin_item ::
        JSRef DOMPlugin -> Word -> IO (JSRef DOMMimeType)
#else 
webkit_dom_dom_plugin_item ::
                             JSRef DOMPlugin -> Word -> IO (JSRef DOMMimeType)
webkit_dom_dom_plugin_item = undefined
#endif
 
domPluginItem ::
              (DOMPluginClass self) => self -> Word -> IO (Maybe DOMMimeType)
domPluginItem self index
  = fmap DOMMimeType . maybeJSNull <$>
      (webkit_dom_dom_plugin_item (unDOMPlugin (toDOMPlugin self)) index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        webkit_dom_dom_plugin_named_item ::
        JSRef DOMPlugin -> JSString -> IO (JSRef DOMMimeType)
#else 
webkit_dom_dom_plugin_named_item ::
                                   JSRef DOMPlugin -> JSString -> IO (JSRef DOMMimeType)
webkit_dom_dom_plugin_named_item = undefined
#endif
 
domPluginNamedItem ::
                   (DOMPluginClass self, ToJSString name) =>
                     self -> name -> IO (Maybe DOMMimeType)
domPluginNamedItem self name
  = fmap DOMMimeType . maybeJSNull <$>
      (webkit_dom_dom_plugin_named_item (unDOMPlugin (toDOMPlugin self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_dom_plugin_get_name :: JSRef DOMPlugin -> IO JSString
#else 
webkit_dom_dom_plugin_get_name :: JSRef DOMPlugin -> IO JSString
webkit_dom_dom_plugin_get_name = undefined
#endif
 
domPluginGetName ::
                 (DOMPluginClass self, FromJSString result) => self -> IO result
domPluginGetName self
  = fromJSString <$>
      (webkit_dom_dom_plugin_get_name (unDOMPlugin (toDOMPlugin self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"filename\"]"
        webkit_dom_dom_plugin_get_filename ::
        JSRef DOMPlugin -> IO JSString
#else 
webkit_dom_dom_plugin_get_filename ::
                                     JSRef DOMPlugin -> IO JSString
webkit_dom_dom_plugin_get_filename = undefined
#endif
 
domPluginGetFilename ::
                     (DOMPluginClass self, FromJSString result) => self -> IO result
domPluginGetFilename self
  = fromJSString <$>
      (webkit_dom_dom_plugin_get_filename
         (unDOMPlugin (toDOMPlugin self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"description\"]"
        webkit_dom_dom_plugin_get_description ::
        JSRef DOMPlugin -> IO JSString
#else 
webkit_dom_dom_plugin_get_description ::
                                        JSRef DOMPlugin -> IO JSString
webkit_dom_dom_plugin_get_description = undefined
#endif
 
domPluginGetDescription ::
                        (DOMPluginClass self, FromJSString result) => self -> IO result
domPluginGetDescription self
  = fromJSString <$>
      (webkit_dom_dom_plugin_get_description
         (unDOMPlugin (toDOMPlugin self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_dom_plugin_get_length :: JSRef DOMPlugin -> IO Word
#else 
webkit_dom_dom_plugin_get_length :: JSRef DOMPlugin -> IO Word
webkit_dom_dom_plugin_get_length = undefined
#endif
 
domPluginGetLength :: (DOMPluginClass self) => self -> IO Word
domPluginGetLength self
  = webkit_dom_dom_plugin_get_length (unDOMPlugin (toDOMPlugin self))