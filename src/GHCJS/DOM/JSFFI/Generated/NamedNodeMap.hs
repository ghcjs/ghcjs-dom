{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.NamedNodeMap
       (js_getNamedItem, getNamedItem, js_setNamedItem, setNamedItem,
        js_removeNamedItem, removeNamedItem, js_item, item,
        js_getNamedItemNS, getNamedItemNS, js_setNamedItemNS,
        setNamedItemNS, js_removeNamedItemNS, removeNamedItemNS,
        js_getLength, getLength, NamedNodeMap, castToNamedNodeMap,
        gTypeNamedNodeMap)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"getNamedItem\"]($2)"
        js_getNamedItem :: NamedNodeMap -> JSString -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItem ::
             (MonadIO m, ToJSString name) =>
               NamedNodeMap -> name -> m (Maybe Node)
getNamedItem self name
  = liftIO
      (nullableToMaybe <$> (js_getNamedItem (self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"setNamedItem\"]($2)"
        js_setNamedItem ::
        NamedNodeMap -> Nullable Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItem ::
             (MonadIO m, IsNode node) =>
               NamedNodeMap -> Maybe node -> m (Maybe Node)
setNamedItem self node
  = liftIO
      (nullableToMaybe <$>
         (js_setNamedItem (self) (maybeToNullable (fmap toNode node))))
 
foreign import javascript unsafe "$1[\"removeNamedItem\"]($2)"
        js_removeNamedItem ::
        NamedNodeMap -> JSString -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItem Mozilla NamedNodeMap.removeNamedItem documentation> 
removeNamedItem ::
                (MonadIO m, ToJSString name) =>
                  NamedNodeMap -> name -> m (Maybe Node)
removeNamedItem self name
  = liftIO
      (nullableToMaybe <$> (js_removeNamedItem (self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        NamedNodeMap -> Word -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
item :: (MonadIO m) => NamedNodeMap -> Word -> m (Maybe Node)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"getNamedItemNS\"]($2, $3)"
        js_getNamedItemNS ::
        NamedNodeMap -> Nullable JSString -> JSString -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNS ::
               (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                 NamedNodeMap -> Maybe namespaceURI -> localName -> m (Maybe Node)
getNamedItemNS self namespaceURI localName
  = liftIO
      (nullableToMaybe <$>
         (js_getNamedItemNS (self) (toMaybeJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript unsafe "$1[\"setNamedItemNS\"]($2)"
        js_setNamedItemNS ::
        NamedNodeMap -> Nullable Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNS ::
               (MonadIO m, IsNode node) =>
                 NamedNodeMap -> Maybe node -> m (Maybe Node)
setNamedItemNS self node
  = liftIO
      (nullableToMaybe <$>
         (js_setNamedItemNS (self) (maybeToNullable (fmap toNode node))))
 
foreign import javascript unsafe
        "$1[\"removeNamedItemNS\"]($2, $3)" js_removeNamedItemNS ::
        NamedNodeMap -> Nullable JSString -> JSString -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItemNS Mozilla NamedNodeMap.removeNamedItemNS documentation> 
removeNamedItemNS ::
                  (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                    NamedNodeMap -> Maybe namespaceURI -> localName -> m (Maybe Node)
removeNamedItemNS self namespaceURI localName
  = liftIO
      (nullableToMaybe <$>
         (js_removeNamedItemNS (self) (toMaybeJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        NamedNodeMap -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.length Mozilla NamedNodeMap.length documentation> 
getLength :: (MonadIO m) => NamedNodeMap -> m Word
getLength self = liftIO (js_getLength (self))