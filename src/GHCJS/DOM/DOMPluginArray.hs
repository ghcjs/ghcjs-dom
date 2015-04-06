{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMPluginArray
       (js_item, item, js_namedItem, namedItem, js_refresh, refresh,
        js_getLength, getLength, DOMPluginArray, castToDOMPluginArray,
        gTypeDOMPluginArray)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        JSRef DOMPluginArray -> Word -> IO (JSRef DOMPlugin)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.item Mozilla PluginArray.item documentation> 
item ::
     (MonadIO m) => DOMPluginArray -> Word -> m (Maybe DOMPlugin)
item self index
  = liftIO ((js_item (unDOMPluginArray self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem ::
        JSRef DOMPluginArray -> JSString -> IO (JSRef DOMPlugin)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.namedItem Mozilla PluginArray.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            DOMPluginArray -> name -> m (Maybe DOMPlugin)
namedItem self name
  = liftIO
      ((js_namedItem (unDOMPluginArray self) (toJSString name)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"refresh\"]($2)" js_refresh
        :: JSRef DOMPluginArray -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.refresh Mozilla PluginArray.refresh documentation> 
refresh :: (MonadIO m) => DOMPluginArray -> Bool -> m ()
refresh self reload
  = liftIO (js_refresh (unDOMPluginArray self) reload)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef DOMPluginArray -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.length Mozilla PluginArray.length documentation> 
getLength :: (MonadIO m) => DOMPluginArray -> m Word
getLength self = liftIO (js_getLength (unDOMPluginArray self))
#else
module GHCJS.DOM.DOMPluginArray (
  module Graphics.UI.Gtk.WebKit.DOM.DOMPluginArray
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMPluginArray
#endif
