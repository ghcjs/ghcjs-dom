{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.NamedNodeMap
       (js_getNamedItem, getNamedItem, getNamedItem_, getNamedItemUnsafe,
        getNamedItemUnchecked, js_setNamedItem, setNamedItem,
        setNamedItem_, setNamedItemUnsafe, setNamedItemUnchecked,
        js_removeNamedItem, removeNamedItem, removeNamedItem_,
        removeNamedItemUnsafe, removeNamedItemUnchecked, js_item, item,
        item_, itemUnsafe, itemUnchecked, js_getNamedItemNS,
        getNamedItemNS, getNamedItemNS_, getNamedItemNSUnsafe,
        getNamedItemNSUnchecked, js_setNamedItemNS, setNamedItemNS,
        setNamedItemNS_, setNamedItemNSUnsafe, setNamedItemNSUnchecked,
        js_removeNamedItemNS, removeNamedItemNS, removeNamedItemNS_,
        removeNamedItemNSUnsafe, removeNamedItemNSUnchecked, js_getLength,
        getLength, NamedNodeMap(..), gTypeNamedNodeMap)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"getNamedItem\"]($2)"
        js_getNamedItem :: NamedNodeMap -> JSString -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItem ::
             (MonadIO m, ToJSString name) =>
               NamedNodeMap -> name -> m (Maybe Node)
getNamedItem self name
  = liftIO
      (nullableToMaybe <$> (js_getNamedItem (self) (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItem_ ::
              (MonadIO m, ToJSString name) => NamedNodeMap -> name -> m ()
getNamedItem_ self name
  = liftIO (void (js_getNamedItem (self) (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItemUnsafe ::
                   (MonadIO m, ToJSString name, HasCallStack) =>
                     NamedNodeMap -> name -> m Node
getNamedItemUnsafe self name
  = liftIO
      ((nullableToMaybe <$> (js_getNamedItem (self) (toJSString name)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItemUnchecked ::
                      (MonadIO m, ToJSString name) => NamedNodeMap -> name -> m Node
getNamedItemUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getNamedItem (self) (toJSString name)))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItem_ ::
              (MonadIO m, IsNode node) => NamedNodeMap -> Maybe node -> m ()
setNamedItem_ self node
  = liftIO
      (void
         (js_setNamedItem (self) (maybeToNullable (fmap toNode node))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItemUnsafe ::
                   (MonadIO m, IsNode node, HasCallStack) =>
                     NamedNodeMap -> Maybe node -> m Node
setNamedItemUnsafe self node
  = liftIO
      ((nullableToMaybe <$>
          (js_setNamedItem (self) (maybeToNullable (fmap toNode node))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItemUnchecked ::
                      (MonadIO m, IsNode node) => NamedNodeMap -> Maybe node -> m Node
setNamedItemUnchecked self node
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItem Mozilla NamedNodeMap.removeNamedItem documentation> 
removeNamedItem_ ::
                 (MonadIO m, ToJSString name) => NamedNodeMap -> name -> m ()
removeNamedItem_ self name
  = liftIO (void (js_removeNamedItem (self) (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItem Mozilla NamedNodeMap.removeNamedItem documentation> 
removeNamedItemUnsafe ::
                      (MonadIO m, ToJSString name, HasCallStack) =>
                        NamedNodeMap -> name -> m Node
removeNamedItemUnsafe self name
  = liftIO
      ((nullableToMaybe <$>
          (js_removeNamedItem (self) (toJSString name)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItem Mozilla NamedNodeMap.removeNamedItem documentation> 
removeNamedItemUnchecked ::
                         (MonadIO m, ToJSString name) => NamedNodeMap -> name -> m Node
removeNamedItemUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_removeNamedItem (self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        NamedNodeMap -> Word -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
item :: (MonadIO m) => NamedNodeMap -> Word -> m (Maybe Node)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
item_ :: (MonadIO m) => NamedNodeMap -> Word -> m ()
item_ self index = liftIO (void (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack) => NamedNodeMap -> Word -> m Node
itemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_item (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
itemUnchecked :: (MonadIO m) => NamedNodeMap -> Word -> m Node
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item (self) index))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNS_ ::
                (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                  NamedNodeMap -> Maybe namespaceURI -> localName -> m ()
getNamedItemNS_ self namespaceURI localName
  = liftIO
      (void
         (js_getNamedItemNS (self) (toMaybeJSString namespaceURI)
            (toJSString localName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNSUnsafe ::
                     (MonadIO m, ToJSString namespaceURI, ToJSString localName,
                      HasCallStack) =>
                       NamedNodeMap -> Maybe namespaceURI -> localName -> m Node
getNamedItemNSUnsafe self namespaceURI localName
  = liftIO
      ((nullableToMaybe <$>
          (js_getNamedItemNS (self) (toMaybeJSString namespaceURI)
             (toJSString localName)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNSUnchecked ::
                        (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                          NamedNodeMap -> Maybe namespaceURI -> localName -> m Node
getNamedItemNSUnchecked self namespaceURI localName
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNS_ ::
                (MonadIO m, IsNode node) => NamedNodeMap -> Maybe node -> m ()
setNamedItemNS_ self node
  = liftIO
      (void
         (js_setNamedItemNS (self) (maybeToNullable (fmap toNode node))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNSUnsafe ::
                     (MonadIO m, IsNode node, HasCallStack) =>
                       NamedNodeMap -> Maybe node -> m Node
setNamedItemNSUnsafe self node
  = liftIO
      ((nullableToMaybe <$>
          (js_setNamedItemNS (self) (maybeToNullable (fmap toNode node))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNSUnchecked ::
                        (MonadIO m, IsNode node) => NamedNodeMap -> Maybe node -> m Node
setNamedItemNSUnchecked self node
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItemNS Mozilla NamedNodeMap.removeNamedItemNS documentation> 
removeNamedItemNS_ ::
                   (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                     NamedNodeMap -> Maybe namespaceURI -> localName -> m ()
removeNamedItemNS_ self namespaceURI localName
  = liftIO
      (void
         (js_removeNamedItemNS (self) (toMaybeJSString namespaceURI)
            (toJSString localName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItemNS Mozilla NamedNodeMap.removeNamedItemNS documentation> 
removeNamedItemNSUnsafe ::
                        (MonadIO m, ToJSString namespaceURI, ToJSString localName,
                         HasCallStack) =>
                          NamedNodeMap -> Maybe namespaceURI -> localName -> m Node
removeNamedItemNSUnsafe self namespaceURI localName
  = liftIO
      ((nullableToMaybe <$>
          (js_removeNamedItemNS (self) (toMaybeJSString namespaceURI)
             (toJSString localName)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItemNS Mozilla NamedNodeMap.removeNamedItemNS documentation> 
removeNamedItemNSUnchecked ::
                           (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                             NamedNodeMap -> Maybe namespaceURI -> localName -> m Node
removeNamedItemNSUnchecked self namespaceURI localName
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_removeNamedItemNS (self) (toMaybeJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        NamedNodeMap -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.length Mozilla NamedNodeMap.length documentation> 
getLength :: (MonadIO m) => NamedNodeMap -> m Word
getLength self = liftIO (js_getLength (self))