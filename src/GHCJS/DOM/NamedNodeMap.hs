{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.NamedNodeMap
       (js_getNamedItem, getNamedItem, js_setNamedItem, setNamedItem,
        js_removeNamedItem, removeNamedItem, js_item, item,
        js_getNamedItemNS, getNamedItemNS, js_setNamedItemNS,
        setNamedItemNS, js_removeNamedItemNS, removeNamedItemNS,
        js_getLength, getLength, NamedNodeMap, castToNamedNodeMap,
        gTypeNamedNodeMap)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"getNamedItem\"]($2)"
        js_getNamedItem ::
        JSRef NamedNodeMap -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItem ::
             (MonadIO m, ToJSString name) =>
               NamedNodeMap -> name -> m (Maybe Node)
getNamedItem self name
  = liftIO
      ((js_getNamedItem (unNamedNodeMap self) (toJSString name)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"setNamedItem\"]($2)"
        js_setNamedItem ::
        JSRef NamedNodeMap -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItem ::
             (MonadIO m, IsNode node) =>
               NamedNodeMap -> Maybe node -> m (Maybe Node)
setNamedItem self node
  = liftIO
      ((js_setNamedItem (unNamedNodeMap self)
          (maybe jsNull (unNode . toNode) node))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeNamedItem\"]($2)"
        js_removeNamedItem ::
        JSRef NamedNodeMap -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItem Mozilla NamedNodeMap.removeNamedItem documentation> 
removeNamedItem ::
                (MonadIO m, ToJSString name) =>
                  NamedNodeMap -> name -> m (Maybe Node)
removeNamedItem self name
  = liftIO
      ((js_removeNamedItem (unNamedNodeMap self) (toJSString name)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        JSRef NamedNodeMap -> Word -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
item :: (MonadIO m) => NamedNodeMap -> Word -> m (Maybe Node)
item self index
  = liftIO ((js_item (unNamedNodeMap self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getNamedItemNS\"]($2, $3)"
        js_getNamedItemNS ::
        JSRef NamedNodeMap -> JSString -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNS ::
               (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                 NamedNodeMap -> namespaceURI -> localName -> m (Maybe Node)
getNamedItemNS self namespaceURI localName
  = liftIO
      ((js_getNamedItemNS (unNamedNodeMap self) (toJSString namespaceURI)
          (toJSString localName))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"setNamedItemNS\"]($2)"
        js_setNamedItemNS ::
        JSRef NamedNodeMap -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNS ::
               (MonadIO m, IsNode node) =>
                 NamedNodeMap -> Maybe node -> m (Maybe Node)
setNamedItemNS self node
  = liftIO
      ((js_setNamedItemNS (unNamedNodeMap self)
          (maybe jsNull (unNode . toNode) node))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"removeNamedItemNS\"]($2, $3)" js_removeNamedItemNS ::
        JSRef NamedNodeMap -> JSString -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItemNS Mozilla NamedNodeMap.removeNamedItemNS documentation> 
removeNamedItemNS ::
                  (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                    NamedNodeMap -> namespaceURI -> localName -> m (Maybe Node)
removeNamedItemNS self namespaceURI localName
  = liftIO
      ((js_removeNamedItemNS (unNamedNodeMap self)
          (toJSString namespaceURI)
          (toJSString localName))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef NamedNodeMap -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.length Mozilla NamedNodeMap.length documentation> 
getLength :: (MonadIO m) => NamedNodeMap -> m Word
getLength self = liftIO (js_getLength (unNamedNodeMap self))
#else
module GHCJS.DOM.NamedNodeMap (
  module Graphics.UI.Gtk.WebKit.DOM.NamedNodeMap
  ) where
import Graphics.UI.Gtk.WebKit.DOM.NamedNodeMap
#endif
