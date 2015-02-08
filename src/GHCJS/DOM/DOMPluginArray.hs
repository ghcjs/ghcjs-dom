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
        ghcjs_dom_dom_plugin_array_item ::
        JSRef DOMPluginArray -> Word -> IO (JSRef DOMPlugin)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.item Mozilla PluginArray.item documentation> 
domPluginArrayItem ::
                   (MonadIO m, IsDOMPluginArray self) =>
                     self -> Word -> m (Maybe DOMPlugin)
domPluginArrayItem self index
  = liftIO
      ((ghcjs_dom_dom_plugin_array_item
          (unDOMPluginArray (toDOMPluginArray self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_dom_plugin_array_named_item ::
        JSRef DOMPluginArray -> JSString -> IO (JSRef DOMPlugin)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.namedItem Mozilla PluginArray.namedItem documentation> 
domPluginArrayNamedItem ::
                        (MonadIO m, IsDOMPluginArray self, ToJSString name) =>
                          self -> name -> m (Maybe DOMPlugin)
domPluginArrayNamedItem self name
  = liftIO
      ((ghcjs_dom_dom_plugin_array_named_item
          (unDOMPluginArray (toDOMPluginArray self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"refresh\"]($2)"
        ghcjs_dom_dom_plugin_array_refresh ::
        JSRef DOMPluginArray -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.refresh Mozilla PluginArray.refresh documentation> 
domPluginArrayRefresh ::
                      (MonadIO m, IsDOMPluginArray self) => self -> Bool -> m ()
domPluginArrayRefresh self reload
  = liftIO
      (ghcjs_dom_dom_plugin_array_refresh
         (unDOMPluginArray (toDOMPluginArray self))
         reload)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_plugin_array_get_length ::
        JSRef DOMPluginArray -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.length Mozilla PluginArray.length documentation> 
domPluginArrayGetLength ::
                        (MonadIO m, IsDOMPluginArray self) => self -> m Word
domPluginArrayGetLength self
  = liftIO
      (ghcjs_dom_dom_plugin_array_get_length
         (unDOMPluginArray (toDOMPluginArray self)))
#else
module GHCJS.DOM.DOMPluginArray (
  module Graphics.UI.Gtk.WebKit.DOM.DOMPluginArray
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMPluginArray
#endif
