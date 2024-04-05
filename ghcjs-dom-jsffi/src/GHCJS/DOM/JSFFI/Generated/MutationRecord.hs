{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MutationRecord
       (js_getType, getType, js_getTarget, getTarget, js_getAddedNodes,
        getAddedNodes, js_getRemovedNodes, getRemovedNodes,
        js_getPreviousSibling, getPreviousSibling,
        getPreviousSiblingUnsafe, getPreviousSiblingUnchecked,
        js_getNextSibling, getNextSibling, getNextSiblingUnsafe,
        getNextSiblingUnchecked, js_getAttributeName, getAttributeName,
        getAttributeNameUnsafe, getAttributeNameUnchecked,
        js_getAttributeNamespace, getAttributeNamespace,
        getAttributeNamespaceUnsafe, getAttributeNamespaceUnchecked,
        js_getOldValue, getOldValue, getOldValueUnsafe,
        getOldValueUnchecked, MutationRecord(..), gTypeMutationRecord)
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
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        MutationRecord -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.type Mozilla MutationRecord.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => MutationRecord -> m result
getType self = liftIO (fromJSString <$> (js_getType self))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        MutationRecord -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.target Mozilla MutationRecord.target documentation> 
getTarget :: (MonadIO m) => MutationRecord -> m Node
getTarget self = liftIO (js_getTarget self)
 
foreign import javascript unsafe "$1[\"addedNodes\"]"
        js_getAddedNodes :: MutationRecord -> IO NodeList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.addedNodes Mozilla MutationRecord.addedNodes documentation> 
getAddedNodes :: (MonadIO m) => MutationRecord -> m NodeList
getAddedNodes self = liftIO (js_getAddedNodes self)
 
foreign import javascript unsafe "$1[\"removedNodes\"]"
        js_getRemovedNodes :: MutationRecord -> IO NodeList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.removedNodes Mozilla MutationRecord.removedNodes documentation> 
getRemovedNodes :: (MonadIO m) => MutationRecord -> m NodeList
getRemovedNodes self = liftIO (js_getRemovedNodes self)
 
foreign import javascript unsafe "$1[\"previousSibling\"]"
        js_getPreviousSibling :: MutationRecord -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.previousSibling Mozilla MutationRecord.previousSibling documentation> 
getPreviousSibling ::
                   (MonadIO m) => MutationRecord -> m (Maybe Node)
getPreviousSibling self
  = liftIO (nullableToMaybe <$> (js_getPreviousSibling self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.previousSibling Mozilla MutationRecord.previousSibling documentation> 
getPreviousSiblingUnsafe ::
                         (MonadIO m, HasCallStack) => MutationRecord -> m Node
getPreviousSiblingUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPreviousSibling self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.previousSibling Mozilla MutationRecord.previousSibling documentation> 
getPreviousSiblingUnchecked ::
                            (MonadIO m) => MutationRecord -> m Node
getPreviousSiblingUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getPreviousSibling self))
 
foreign import javascript unsafe "$1[\"nextSibling\"]"
        js_getNextSibling :: MutationRecord -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.nextSibling Mozilla MutationRecord.nextSibling documentation> 
getNextSibling :: (MonadIO m) => MutationRecord -> m (Maybe Node)
getNextSibling self
  = liftIO (nullableToMaybe <$> (js_getNextSibling self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.nextSibling Mozilla MutationRecord.nextSibling documentation> 
getNextSiblingUnsafe ::
                     (MonadIO m, HasCallStack) => MutationRecord -> m Node
getNextSiblingUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getNextSibling self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.nextSibling Mozilla MutationRecord.nextSibling documentation> 
getNextSiblingUnchecked :: (MonadIO m) => MutationRecord -> m Node
getNextSiblingUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getNextSibling self))
 
foreign import javascript unsafe "$1[\"attributeName\"]"
        js_getAttributeName :: MutationRecord -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeName Mozilla MutationRecord.attributeName documentation> 
getAttributeName ::
                 (MonadIO m, FromJSString result) =>
                   MutationRecord -> m (Maybe result)
getAttributeName self
  = liftIO (fromMaybeJSString <$> (js_getAttributeName self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeName Mozilla MutationRecord.attributeName documentation> 
getAttributeNameUnsafe ::
                       (MonadIO m, HasCallStack, FromJSString result) =>
                         MutationRecord -> m result
getAttributeNameUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getAttributeName self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeName Mozilla MutationRecord.attributeName documentation> 
getAttributeNameUnchecked ::
                          (MonadIO m, FromJSString result) => MutationRecord -> m result
getAttributeNameUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getAttributeName self))
 
foreign import javascript unsafe "$1[\"attributeNamespace\"]"
        js_getAttributeNamespace ::
        MutationRecord -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeNamespace Mozilla MutationRecord.attributeNamespace documentation> 
getAttributeNamespace ::
                      (MonadIO m, FromJSString result) =>
                        MutationRecord -> m (Maybe result)
getAttributeNamespace self
  = liftIO (fromMaybeJSString <$> (js_getAttributeNamespace self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeNamespace Mozilla MutationRecord.attributeNamespace documentation> 
getAttributeNamespaceUnsafe ::
                            (MonadIO m, HasCallStack, FromJSString result) =>
                              MutationRecord -> m result
getAttributeNamespaceUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getAttributeNamespace self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeNamespace Mozilla MutationRecord.attributeNamespace documentation> 
getAttributeNamespaceUnchecked ::
                               (MonadIO m, FromJSString result) => MutationRecord -> m result
getAttributeNamespaceUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getAttributeNamespace self))
 
foreign import javascript unsafe "$1[\"oldValue\"]" js_getOldValue
        :: MutationRecord -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.oldValue Mozilla MutationRecord.oldValue documentation> 
getOldValue ::
            (MonadIO m, FromJSString result) =>
              MutationRecord -> m (Maybe result)
getOldValue self
  = liftIO (fromMaybeJSString <$> (js_getOldValue self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.oldValue Mozilla MutationRecord.oldValue documentation> 
getOldValueUnsafe ::
                  (MonadIO m, HasCallStack, FromJSString result) =>
                    MutationRecord -> m result
getOldValueUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getOldValue self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.oldValue Mozilla MutationRecord.oldValue documentation> 
getOldValueUnchecked ::
                     (MonadIO m, FromJSString result) => MutationRecord -> m result
getOldValueUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getOldValue self))