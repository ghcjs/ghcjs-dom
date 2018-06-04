{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.NodeIterator
       (js_nextNode, nextNode, nextNode_, nextNodeUnsafe,
        nextNodeUnchecked, js_previousNode, previousNode, previousNode_,
        previousNodeUnsafe, previousNodeUnchecked, js_detach, detach,
        js_getRoot, getRoot, js_getReferenceNode, getReferenceNode,
        js_getPointerBeforeReferenceNode, getPointerBeforeReferenceNode,
        js_getWhatToShow, getWhatToShow, NodeIterator(..),
        gTypeNodeIterator)
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
 
foreign import javascript unsafe "$1[\"nextNode\"]()" js_nextNode
        :: NodeIterator -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.nextNode Mozilla NodeIterator.nextNode documentation> 
nextNode :: (MonadIO m) => NodeIterator -> m (Maybe Node)
nextNode self = liftIO (nullableToMaybe <$> (js_nextNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.nextNode Mozilla NodeIterator.nextNode documentation> 
nextNode_ :: (MonadIO m) => NodeIterator -> m ()
nextNode_ self = liftIO (void (js_nextNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.nextNode Mozilla NodeIterator.nextNode documentation> 
nextNodeUnsafe ::
               (MonadIO m, HasCallStack) => NodeIterator -> m Node
nextNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_nextNode self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.nextNode Mozilla NodeIterator.nextNode documentation> 
nextNodeUnchecked :: (MonadIO m) => NodeIterator -> m Node
nextNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_nextNode self))
 
foreign import javascript unsafe "$1[\"previousNode\"]()"
        js_previousNode :: NodeIterator -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.previousNode Mozilla NodeIterator.previousNode documentation> 
previousNode :: (MonadIO m) => NodeIterator -> m (Maybe Node)
previousNode self
  = liftIO (nullableToMaybe <$> (js_previousNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.previousNode Mozilla NodeIterator.previousNode documentation> 
previousNode_ :: (MonadIO m) => NodeIterator -> m ()
previousNode_ self = liftIO (void (js_previousNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.previousNode Mozilla NodeIterator.previousNode documentation> 
previousNodeUnsafe ::
                   (MonadIO m, HasCallStack) => NodeIterator -> m Node
previousNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_previousNode self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.previousNode Mozilla NodeIterator.previousNode documentation> 
previousNodeUnchecked :: (MonadIO m) => NodeIterator -> m Node
previousNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_previousNode self))
 
foreign import javascript unsafe "$1[\"detach\"]()" js_detach ::
        NodeIterator -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.detach Mozilla NodeIterator.detach documentation> 
detach :: (MonadIO m) => NodeIterator -> m ()
detach self = liftIO (js_detach self)
 
foreign import javascript unsafe "$1[\"root\"]" js_getRoot ::
        NodeIterator -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.root Mozilla NodeIterator.root documentation> 
getRoot :: (MonadIO m) => NodeIterator -> m Node
getRoot self = liftIO (js_getRoot self)
 
foreign import javascript unsafe "$1[\"referenceNode\"]"
        js_getReferenceNode :: NodeIterator -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.referenceNode Mozilla NodeIterator.referenceNode documentation> 
getReferenceNode :: (MonadIO m) => NodeIterator -> m Node
getReferenceNode self = liftIO (js_getReferenceNode self)
 
foreign import javascript unsafe
        "($1[\"pointerBeforeReferenceNode\"] ? 1 : 0)"
        js_getPointerBeforeReferenceNode :: NodeIterator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.pointerBeforeReferenceNode Mozilla NodeIterator.pointerBeforeReferenceNode documentation> 
getPointerBeforeReferenceNode ::
                              (MonadIO m) => NodeIterator -> m Bool
getPointerBeforeReferenceNode self
  = liftIO (js_getPointerBeforeReferenceNode self)
 
foreign import javascript unsafe "$1[\"whatToShow\"]"
        js_getWhatToShow :: NodeIterator -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.whatToShow Mozilla NodeIterator.whatToShow documentation> 
getWhatToShow :: (MonadIO m) => NodeIterator -> m Word
getWhatToShow self = liftIO (js_getWhatToShow self)