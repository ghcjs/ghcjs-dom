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

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_dom_plugin_item ::
        JSRef DOMPlugin -> Word -> IO (JSRef DOMMimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.item Mozilla Plugin.item documentation> 
domPluginItem ::
              (MonadIO m, IsDOMPlugin self) =>
                self -> Word -> m (Maybe DOMMimeType)
domPluginItem self index
  = liftIO
      ((ghcjs_dom_dom_plugin_item (unDOMPlugin (toDOMPlugin self)) index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_dom_plugin_named_item ::
        JSRef DOMPlugin -> JSString -> IO (JSRef DOMMimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.namedItem Mozilla Plugin.namedItem documentation> 
domPluginNamedItem ::
                   (MonadIO m, IsDOMPlugin self, ToJSString name) =>
                     self -> name -> m (Maybe DOMMimeType)
domPluginNamedItem self name
  = liftIO
      ((ghcjs_dom_dom_plugin_named_item (unDOMPlugin (toDOMPlugin self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_dom_plugin_get_name :: JSRef DOMPlugin -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.name Mozilla Plugin.name documentation> 
domPluginGetName ::
                 (MonadIO m, IsDOMPlugin self, FromJSString result) =>
                   self -> m result
domPluginGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_dom_plugin_get_name (unDOMPlugin (toDOMPlugin self))))
 
foreign import javascript unsafe "$1[\"filename\"]"
        ghcjs_dom_dom_plugin_get_filename :: JSRef DOMPlugin -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.filename Mozilla Plugin.filename documentation> 
domPluginGetFilename ::
                     (MonadIO m, IsDOMPlugin self, FromJSString result) =>
                       self -> m result
domPluginGetFilename self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_dom_plugin_get_filename
            (unDOMPlugin (toDOMPlugin self))))
 
foreign import javascript unsafe "$1[\"description\"]"
        ghcjs_dom_dom_plugin_get_description ::
        JSRef DOMPlugin -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.description Mozilla Plugin.description documentation> 
domPluginGetDescription ::
                        (MonadIO m, IsDOMPlugin self, FromJSString result) =>
                          self -> m result
domPluginGetDescription self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_dom_plugin_get_description
            (unDOMPlugin (toDOMPlugin self))))
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_plugin_get_length :: JSRef DOMPlugin -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.length Mozilla Plugin.length documentation> 
domPluginGetLength ::
                   (MonadIO m, IsDOMPlugin self) => self -> m Word
domPluginGetLength self
  = liftIO
      (ghcjs_dom_dom_plugin_get_length (unDOMPlugin (toDOMPlugin self)))
#else
module GHCJS.DOM.DOMPlugin (
  module Graphics.UI.Gtk.WebKit.DOM.DOMPlugin
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMPlugin
#endif
