{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MutationRecord
       (js_getTarget, getTarget, js_getAddedNodes, getAddedNodes,
        js_getRemovedNodes, getRemovedNodes, js_getPreviousSibling,
        getPreviousSibling, js_getNextSibling, getNextSibling,
        js_getAttributeName, getAttributeName, js_getAttributeNamespace,
        getAttributeNamespace, js_getOldValue, getOldValue, MutationRecord,
        castToMutationRecord, gTypeMutationRecord)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        JSRef MutationRecord -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.target Mozilla MutationRecord.target documentation> 
getTarget :: (MonadIO m) => MutationRecord -> m (Maybe Node)
getTarget self
  = liftIO ((js_getTarget (unMutationRecord self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"addedNodes\"]"
        js_getAddedNodes :: JSRef MutationRecord -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.addedNodes Mozilla MutationRecord.addedNodes documentation> 
getAddedNodes ::
              (MonadIO m) => MutationRecord -> m (Maybe NodeList)
getAddedNodes self
  = liftIO ((js_getAddedNodes (unMutationRecord self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removedNodes\"]"
        js_getRemovedNodes :: JSRef MutationRecord -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.removedNodes Mozilla MutationRecord.removedNodes documentation> 
getRemovedNodes ::
                (MonadIO m) => MutationRecord -> m (Maybe NodeList)
getRemovedNodes self
  = liftIO
      ((js_getRemovedNodes (unMutationRecord self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"previousSibling\"]"
        js_getPreviousSibling :: JSRef MutationRecord -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.previousSibling Mozilla MutationRecord.previousSibling documentation> 
getPreviousSibling ::
                   (MonadIO m) => MutationRecord -> m (Maybe Node)
getPreviousSibling self
  = liftIO
      ((js_getPreviousSibling (unMutationRecord self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"nextSibling\"]"
        js_getNextSibling :: JSRef MutationRecord -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.nextSibling Mozilla MutationRecord.nextSibling documentation> 
getNextSibling :: (MonadIO m) => MutationRecord -> m (Maybe Node)
getNextSibling self
  = liftIO
      ((js_getNextSibling (unMutationRecord self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"attributeName\"]"
        js_getAttributeName :: JSRef MutationRecord -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeName Mozilla MutationRecord.attributeName documentation> 
getAttributeName ::
                 (MonadIO m, FromJSString result) => MutationRecord -> m result
getAttributeName self
  = liftIO
      (fromJSString <$> (js_getAttributeName (unMutationRecord self)))
 
foreign import javascript unsafe "$1[\"attributeNamespace\"]"
        js_getAttributeNamespace :: JSRef MutationRecord -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeNamespace Mozilla MutationRecord.attributeNamespace documentation> 
getAttributeNamespace ::
                      (MonadIO m, FromJSString result) => MutationRecord -> m result
getAttributeNamespace self
  = liftIO
      (fromJSString <$>
         (js_getAttributeNamespace (unMutationRecord self)))
 
foreign import javascript unsafe "$1[\"oldValue\"]" js_getOldValue
        :: JSRef MutationRecord -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.oldValue Mozilla MutationRecord.oldValue documentation> 
getOldValue ::
            (MonadIO m, FromJSString result) => MutationRecord -> m result
getOldValue self
  = liftIO
      (fromJSString <$> (js_getOldValue (unMutationRecord self)))