{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.TreeWalker
       (js_parentNode, parentNode, parentNode_, parentNodeUnsafe,
        parentNodeUnchecked, js_firstChild, firstChild, firstChild_,
        firstChildUnsafe, firstChildUnchecked, js_lastChild, lastChild,
        lastChild_, lastChildUnsafe, lastChildUnchecked,
        js_previousSibling, previousSibling, previousSibling_,
        previousSiblingUnsafe, previousSiblingUnchecked, js_nextSibling,
        nextSibling, nextSibling_, nextSiblingUnsafe, nextSiblingUnchecked,
        js_previousNode, previousNode, previousNode_, previousNodeUnsafe,
        previousNodeUnchecked, js_nextNode, nextNode, nextNode_,
        nextNodeUnsafe, nextNodeUnchecked, js_getRoot, getRoot,
        js_getWhatToShow, getWhatToShow, js_setCurrentNode, setCurrentNode,
        js_getCurrentNode, getCurrentNode, TreeWalker(..), gTypeTreeWalker)
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
 
foreign import javascript unsafe "$1[\"parentNode\"]()"
        js_parentNode :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.parentNode Mozilla TreeWalker.parentNode documentation> 
parentNode :: (MonadIO m) => TreeWalker -> m (Maybe Node)
parentNode self = liftIO (nullableToMaybe <$> (js_parentNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.parentNode Mozilla TreeWalker.parentNode documentation> 
parentNode_ :: (MonadIO m) => TreeWalker -> m ()
parentNode_ self = liftIO (void (js_parentNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.parentNode Mozilla TreeWalker.parentNode documentation> 
parentNodeUnsafe ::
                 (MonadIO m, HasCallStack) => TreeWalker -> m Node
parentNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_parentNode self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.parentNode Mozilla TreeWalker.parentNode documentation> 
parentNodeUnchecked :: (MonadIO m) => TreeWalker -> m Node
parentNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_parentNode self))
 
foreign import javascript unsafe "$1[\"firstChild\"]()"
        js_firstChild :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
firstChild :: (MonadIO m) => TreeWalker -> m (Maybe Node)
firstChild self = liftIO (nullableToMaybe <$> (js_firstChild self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
firstChild_ :: (MonadIO m) => TreeWalker -> m ()
firstChild_ self = liftIO (void (js_firstChild self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
firstChildUnsafe ::
                 (MonadIO m, HasCallStack) => TreeWalker -> m Node
firstChildUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_firstChild self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
firstChildUnchecked :: (MonadIO m) => TreeWalker -> m Node
firstChildUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_firstChild self))
 
foreign import javascript unsafe "$1[\"lastChild\"]()" js_lastChild
        :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
lastChild :: (MonadIO m) => TreeWalker -> m (Maybe Node)
lastChild self = liftIO (nullableToMaybe <$> (js_lastChild self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
lastChild_ :: (MonadIO m) => TreeWalker -> m ()
lastChild_ self = liftIO (void (js_lastChild self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
lastChildUnsafe ::
                (MonadIO m, HasCallStack) => TreeWalker -> m Node
lastChildUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_lastChild self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
lastChildUnchecked :: (MonadIO m) => TreeWalker -> m Node
lastChildUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_lastChild self))
 
foreign import javascript unsafe "$1[\"previousSibling\"]()"
        js_previousSibling :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
previousSibling :: (MonadIO m) => TreeWalker -> m (Maybe Node)
previousSibling self
  = liftIO (nullableToMaybe <$> (js_previousSibling self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
previousSibling_ :: (MonadIO m) => TreeWalker -> m ()
previousSibling_ self = liftIO (void (js_previousSibling self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
previousSiblingUnsafe ::
                      (MonadIO m, HasCallStack) => TreeWalker -> m Node
previousSiblingUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_previousSibling self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
previousSiblingUnchecked :: (MonadIO m) => TreeWalker -> m Node
previousSiblingUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_previousSibling self))
 
foreign import javascript unsafe "$1[\"nextSibling\"]()"
        js_nextSibling :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
nextSibling :: (MonadIO m) => TreeWalker -> m (Maybe Node)
nextSibling self
  = liftIO (nullableToMaybe <$> (js_nextSibling self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
nextSibling_ :: (MonadIO m) => TreeWalker -> m ()
nextSibling_ self = liftIO (void (js_nextSibling self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
nextSiblingUnsafe ::
                  (MonadIO m, HasCallStack) => TreeWalker -> m Node
nextSiblingUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_nextSibling self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
nextSiblingUnchecked :: (MonadIO m) => TreeWalker -> m Node
nextSiblingUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_nextSibling self))
 
foreign import javascript unsafe "$1[\"previousNode\"]()"
        js_previousNode :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
previousNode :: (MonadIO m) => TreeWalker -> m (Maybe Node)
previousNode self
  = liftIO (nullableToMaybe <$> (js_previousNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
previousNode_ :: (MonadIO m) => TreeWalker -> m ()
previousNode_ self = liftIO (void (js_previousNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
previousNodeUnsafe ::
                   (MonadIO m, HasCallStack) => TreeWalker -> m Node
previousNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_previousNode self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
previousNodeUnchecked :: (MonadIO m) => TreeWalker -> m Node
previousNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_previousNode self))
 
foreign import javascript unsafe "$1[\"nextNode\"]()" js_nextNode
        :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
nextNode :: (MonadIO m) => TreeWalker -> m (Maybe Node)
nextNode self = liftIO (nullableToMaybe <$> (js_nextNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
nextNode_ :: (MonadIO m) => TreeWalker -> m ()
nextNode_ self = liftIO (void (js_nextNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
nextNodeUnsafe :: (MonadIO m, HasCallStack) => TreeWalker -> m Node
nextNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_nextNode self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
nextNodeUnchecked :: (MonadIO m) => TreeWalker -> m Node
nextNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_nextNode self))
 
foreign import javascript unsafe "$1[\"root\"]" js_getRoot ::
        TreeWalker -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.root Mozilla TreeWalker.root documentation> 
getRoot :: (MonadIO m) => TreeWalker -> m Node
getRoot self = liftIO (js_getRoot self)
 
foreign import javascript unsafe "$1[\"whatToShow\"]"
        js_getWhatToShow :: TreeWalker -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.whatToShow Mozilla TreeWalker.whatToShow documentation> 
getWhatToShow :: (MonadIO m) => TreeWalker -> m Word
getWhatToShow self = liftIO (js_getWhatToShow self)
 
foreign import javascript unsafe "$1[\"currentNode\"] = $2;"
        js_setCurrentNode :: TreeWalker -> Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.currentNode Mozilla TreeWalker.currentNode documentation> 
setCurrentNode ::
               (MonadIO m, IsNode val) => TreeWalker -> val -> m ()
setCurrentNode self val
  = liftIO (js_setCurrentNode self (toNode val))
 
foreign import javascript unsafe "$1[\"currentNode\"]"
        js_getCurrentNode :: TreeWalker -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.currentNode Mozilla TreeWalker.currentNode documentation> 
getCurrentNode :: (MonadIO m) => TreeWalker -> m Node
getCurrentNode self = liftIO (js_getCurrentNode self)