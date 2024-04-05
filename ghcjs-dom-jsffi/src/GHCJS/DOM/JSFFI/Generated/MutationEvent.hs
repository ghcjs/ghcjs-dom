{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MutationEvent
       (js_initMutationEvent, initMutationEvent, pattern MODIFICATION,
        pattern ADDITION, pattern REMOVAL, js_getRelatedNode,
        getRelatedNode, getRelatedNodeUnsafe, getRelatedNodeUnchecked,
        js_getPrevValue, getPrevValue, js_getNewValue, getNewValue,
        js_getAttrName, getAttrName, js_getAttrChange, getAttrChange,
        MutationEvent(..), gTypeMutationEvent)
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
 
foreign import javascript unsafe
        "$1[\"initMutationEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9)"
        js_initMutationEvent ::
        MutationEvent ->
          Optional JSString ->
            Bool ->
              Bool ->
                Optional Node ->
                  Optional JSString ->
                    Optional JSString -> Optional JSString -> Optional Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.initMutationEvent Mozilla MutationEvent.initMutationEvent documentation> 
initMutationEvent ::
                  (MonadIO m, ToJSString type', IsNode relatedNode,
                   ToJSString prevValue, ToJSString newValue, ToJSString attrName) =>
                    MutationEvent ->
                      Maybe type' ->
                        Bool ->
                          Bool ->
                            Maybe relatedNode ->
                              Maybe prevValue ->
                                Maybe newValue -> Maybe attrName -> Maybe Word -> m ()
initMutationEvent self type' canBubble cancelable relatedNode
  prevValue newValue attrName attrChange
  = liftIO
      (js_initMutationEvent self (toOptionalJSString type') canBubble
         cancelable
         (maybeToOptional (fmap toNode relatedNode))
         (toOptionalJSString prevValue)
         (toOptionalJSString newValue)
         (toOptionalJSString attrName)
         (maybeToOptional attrChange))
pattern MODIFICATION = 1
pattern ADDITION = 2
pattern REMOVAL = 3
 
foreign import javascript unsafe "$1[\"relatedNode\"]"
        js_getRelatedNode :: MutationEvent -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.relatedNode Mozilla MutationEvent.relatedNode documentation> 
getRelatedNode :: (MonadIO m) => MutationEvent -> m (Maybe Node)
getRelatedNode self
  = liftIO (nullableToMaybe <$> (js_getRelatedNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.relatedNode Mozilla MutationEvent.relatedNode documentation> 
getRelatedNodeUnsafe ::
                     (MonadIO m, HasCallStack) => MutationEvent -> m Node
getRelatedNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRelatedNode self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.relatedNode Mozilla MutationEvent.relatedNode documentation> 
getRelatedNodeUnchecked :: (MonadIO m) => MutationEvent -> m Node
getRelatedNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRelatedNode self))
 
foreign import javascript unsafe "$1[\"prevValue\"]"
        js_getPrevValue :: MutationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.prevValue Mozilla MutationEvent.prevValue documentation> 
getPrevValue ::
             (MonadIO m, FromJSString result) => MutationEvent -> m result
getPrevValue self
  = liftIO (fromJSString <$> (js_getPrevValue self))
 
foreign import javascript unsafe "$1[\"newValue\"]" js_getNewValue
        :: MutationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.newValue Mozilla MutationEvent.newValue documentation> 
getNewValue ::
            (MonadIO m, FromJSString result) => MutationEvent -> m result
getNewValue self = liftIO (fromJSString <$> (js_getNewValue self))
 
foreign import javascript unsafe "$1[\"attrName\"]" js_getAttrName
        :: MutationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.attrName Mozilla MutationEvent.attrName documentation> 
getAttrName ::
            (MonadIO m, FromJSString result) => MutationEvent -> m result
getAttrName self = liftIO (fromJSString <$> (js_getAttrName self))
 
foreign import javascript unsafe "$1[\"attrChange\"]"
        js_getAttrChange :: MutationEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.attrChange Mozilla MutationEvent.attrChange documentation> 
getAttrChange :: (MonadIO m) => MutationEvent -> m Word
getAttrChange self = liftIO (js_getAttrChange self)