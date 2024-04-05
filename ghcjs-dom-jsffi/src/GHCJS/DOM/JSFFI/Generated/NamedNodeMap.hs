{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.NamedNodeMap
       (js_item, item, item_, itemUnsafe, itemUnchecked, js_getNamedItem,
        getNamedItem, getNamedItem_, getNamedItemUnsafe,
        getNamedItemUnchecked, js_getNamedItemNS, getNamedItemNS,
        getNamedItemNS_, getNamedItemNSUnsafe, getNamedItemNSUnchecked,
        js_setNamedItem, setNamedItem, setNamedItem_, setNamedItemUnsafe,
        setNamedItemUnchecked, js_setNamedItemNS, setNamedItemNS,
        setNamedItemNS_, setNamedItemNSUnsafe, setNamedItemNSUnchecked,
        js_removeNamedItem, removeNamedItem, removeNamedItem_,
        js_removeNamedItemNS, removeNamedItemNS, removeNamedItemNS_,
        js_getLength, getLength, NamedNodeMap(..), gTypeNamedNodeMap)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[$2]" js_item ::
        NamedNodeMap -> Word -> IO (Nullable Attr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
item :: (MonadIO m) => NamedNodeMap -> Word -> m (Maybe Attr)
item self index = liftIO (nullableToMaybe <$> (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
item_ :: (MonadIO m) => NamedNodeMap -> Word -> m ()
item_ self index = liftIO (void (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack) => NamedNodeMap -> Word -> m Attr
itemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_item self index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
itemUnchecked :: (MonadIO m) => NamedNodeMap -> Word -> m Attr
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item self index))
 
foreign import javascript unsafe "$1[$2]" js_getNamedItem ::
        NamedNodeMap -> JSString -> IO (Nullable Attr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItem ::
             (MonadIO m, ToJSString qualifiedName) =>
               NamedNodeMap -> qualifiedName -> m (Maybe Attr)
getNamedItem self qualifiedName
  = liftIO
      (nullableToMaybe <$>
         (js_getNamedItem self (toJSString qualifiedName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItem_ ::
              (MonadIO m, ToJSString qualifiedName) =>
                NamedNodeMap -> qualifiedName -> m ()
getNamedItem_ self qualifiedName
  = liftIO (void (js_getNamedItem self (toJSString qualifiedName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItemUnsafe ::
                   (MonadIO m, ToJSString qualifiedName, HasCallStack) =>
                     NamedNodeMap -> qualifiedName -> m Attr
getNamedItemUnsafe self qualifiedName
  = liftIO
      ((nullableToMaybe <$>
          (js_getNamedItem self (toJSString qualifiedName)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItemUnchecked ::
                      (MonadIO m, ToJSString qualifiedName) =>
                        NamedNodeMap -> qualifiedName -> m Attr
getNamedItemUnchecked self qualifiedName
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getNamedItem self (toJSString qualifiedName)))
 
foreign import javascript unsafe "$1[\"getNamedItemNS\"]($2, $3)"
        js_getNamedItemNS ::
        NamedNodeMap -> Optional JSString -> JSString -> IO (Nullable Attr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNS ::
               (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                 NamedNodeMap -> Maybe namespaceURI -> localName -> m (Maybe Attr)
getNamedItemNS self namespaceURI localName
  = liftIO
      (nullableToMaybe <$>
         (js_getNamedItemNS self (toOptionalJSString namespaceURI)
            (toJSString localName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNS_ ::
                (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                  NamedNodeMap -> Maybe namespaceURI -> localName -> m ()
getNamedItemNS_ self namespaceURI localName
  = liftIO
      (void
         (js_getNamedItemNS self (toOptionalJSString namespaceURI)
            (toJSString localName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNSUnsafe ::
                     (MonadIO m, ToJSString namespaceURI, ToJSString localName,
                      HasCallStack) =>
                       NamedNodeMap -> Maybe namespaceURI -> localName -> m Attr
getNamedItemNSUnsafe self namespaceURI localName
  = liftIO
      ((nullableToMaybe <$>
          (js_getNamedItemNS self (toOptionalJSString namespaceURI)
             (toJSString localName)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNSUnchecked ::
                        (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                          NamedNodeMap -> Maybe namespaceURI -> localName -> m Attr
getNamedItemNSUnchecked self namespaceURI localName
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getNamedItemNS self (toOptionalJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript safe "$1[\"setNamedItem\"]($2)"
        js_setNamedItem :: NamedNodeMap -> Attr -> IO (Nullable Attr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItem ::
             (MonadIO m) => NamedNodeMap -> Attr -> m (Maybe Attr)
setNamedItem self attr
  = liftIO (nullableToMaybe <$> (js_setNamedItem self attr))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItem_ :: (MonadIO m) => NamedNodeMap -> Attr -> m ()
setNamedItem_ self attr = liftIO (void (js_setNamedItem self attr))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItemUnsafe ::
                   (MonadIO m, HasCallStack) => NamedNodeMap -> Attr -> m Attr
setNamedItemUnsafe self attr
  = liftIO
      ((nullableToMaybe <$> (js_setNamedItem self attr)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItemUnchecked ::
                      (MonadIO m) => NamedNodeMap -> Attr -> m Attr
setNamedItemUnchecked self attr
  = liftIO
      (fromJust . nullableToMaybe <$> (js_setNamedItem self attr))
 
foreign import javascript safe "$1[\"setNamedItemNS\"]($2)"
        js_setNamedItemNS :: NamedNodeMap -> Attr -> IO (Nullable Attr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNS ::
               (MonadIO m) => NamedNodeMap -> Attr -> m (Maybe Attr)
setNamedItemNS self attr
  = liftIO (nullableToMaybe <$> (js_setNamedItemNS self attr))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNS_ :: (MonadIO m) => NamedNodeMap -> Attr -> m ()
setNamedItemNS_ self attr
  = liftIO (void (js_setNamedItemNS self attr))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNSUnsafe ::
                     (MonadIO m, HasCallStack) => NamedNodeMap -> Attr -> m Attr
setNamedItemNSUnsafe self attr
  = liftIO
      ((nullableToMaybe <$> (js_setNamedItemNS self attr)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNSUnchecked ::
                        (MonadIO m) => NamedNodeMap -> Attr -> m Attr
setNamedItemNSUnchecked self attr
  = liftIO
      (fromJust . nullableToMaybe <$> (js_setNamedItemNS self attr))
 
foreign import javascript safe "$1[\"removeNamedItem\"]($2)"
        js_removeNamedItem :: NamedNodeMap -> JSString -> IO Attr

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItem Mozilla NamedNodeMap.removeNamedItem documentation> 
removeNamedItem ::
                (MonadIO m, ToJSString qualifiedName) =>
                  NamedNodeMap -> qualifiedName -> m Attr
removeNamedItem self qualifiedName
  = liftIO (js_removeNamedItem self (toJSString qualifiedName))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItem Mozilla NamedNodeMap.removeNamedItem documentation> 
removeNamedItem_ ::
                 (MonadIO m, ToJSString qualifiedName) =>
                   NamedNodeMap -> qualifiedName -> m ()
removeNamedItem_ self qualifiedName
  = liftIO
      (void (js_removeNamedItem self (toJSString qualifiedName)))
 
foreign import javascript safe "$1[\"removeNamedItemNS\"]($2, $3)"
        js_removeNamedItemNS ::
        NamedNodeMap -> Optional JSString -> JSString -> IO Attr

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItemNS Mozilla NamedNodeMap.removeNamedItemNS documentation> 
removeNamedItemNS ::
                  (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                    NamedNodeMap -> Maybe namespaceURI -> localName -> m Attr
removeNamedItemNS self namespaceURI localName
  = liftIO
      (js_removeNamedItemNS self (toOptionalJSString namespaceURI)
         (toJSString localName))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItemNS Mozilla NamedNodeMap.removeNamedItemNS documentation> 
removeNamedItemNS_ ::
                   (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                     NamedNodeMap -> Maybe namespaceURI -> localName -> m ()
removeNamedItemNS_ self namespaceURI localName
  = liftIO
      (void
         (js_removeNamedItemNS self (toOptionalJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        NamedNodeMap -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.length Mozilla NamedNodeMap.length documentation> 
getLength :: (MonadIO m) => NamedNodeMap -> m Word
getLength self = liftIO (js_getLength self)