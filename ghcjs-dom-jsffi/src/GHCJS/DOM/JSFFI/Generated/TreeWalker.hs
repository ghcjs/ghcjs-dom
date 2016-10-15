{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.TreeWalker
       (js_parentNode, parentNode, parentNode_, parentNodeUnchecked,
        js_firstChild, firstChild, firstChild_, firstChildUnchecked,
        js_lastChild, lastChild, lastChild_, lastChildUnchecked,
        js_previousSibling, previousSibling, previousSibling_,
        previousSiblingUnchecked, js_nextSibling, nextSibling,
        nextSibling_, nextSiblingUnchecked, js_previousNode, previousNode,
        previousNode_, previousNodeUnchecked, js_nextNode, nextNode,
        nextNode_, nextNodeUnchecked, js_getRoot, getRoot,
        getRootUnchecked, js_getWhatToShow, getWhatToShow, js_getFilter,
        getFilter, getFilterUnchecked, js_getExpandEntityReferences,
        getExpandEntityReferences, js_setCurrentNode, setCurrentNode,
        js_getCurrentNode, getCurrentNode, getCurrentNodeUnchecked,
        TreeWalker(..), gTypeTreeWalker)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
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
 
foreign import javascript unsafe "$1[\"parentNode\"]()"
        js_parentNode :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.parentNode Mozilla TreeWalker.parentNode documentation> 
parentNode :: (MonadIO m) => TreeWalker -> m (Maybe Node)
parentNode self
  = liftIO (nullableToMaybe <$> (js_parentNode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.parentNode Mozilla TreeWalker.parentNode documentation> 
parentNode_ :: (MonadIO m) => TreeWalker -> m ()
parentNode_ self = liftIO (void (js_parentNode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.parentNode Mozilla TreeWalker.parentNode documentation> 
parentNodeUnchecked :: (MonadIO m) => TreeWalker -> m Node
parentNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_parentNode (self)))
 
foreign import javascript unsafe "$1[\"firstChild\"]()"
        js_firstChild :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
firstChild :: (MonadIO m) => TreeWalker -> m (Maybe Node)
firstChild self
  = liftIO (nullableToMaybe <$> (js_firstChild (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
firstChild_ :: (MonadIO m) => TreeWalker -> m ()
firstChild_ self = liftIO (void (js_firstChild (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
firstChildUnchecked :: (MonadIO m) => TreeWalker -> m Node
firstChildUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_firstChild (self)))
 
foreign import javascript unsafe "$1[\"lastChild\"]()" js_lastChild
        :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
lastChild :: (MonadIO m) => TreeWalker -> m (Maybe Node)
lastChild self = liftIO (nullableToMaybe <$> (js_lastChild (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
lastChild_ :: (MonadIO m) => TreeWalker -> m ()
lastChild_ self = liftIO (void (js_lastChild (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
lastChildUnchecked :: (MonadIO m) => TreeWalker -> m Node
lastChildUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_lastChild (self)))
 
foreign import javascript unsafe "$1[\"previousSibling\"]()"
        js_previousSibling :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
previousSibling :: (MonadIO m) => TreeWalker -> m (Maybe Node)
previousSibling self
  = liftIO (nullableToMaybe <$> (js_previousSibling (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
previousSibling_ :: (MonadIO m) => TreeWalker -> m ()
previousSibling_ self = liftIO (void (js_previousSibling (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
previousSiblingUnchecked :: (MonadIO m) => TreeWalker -> m Node
previousSiblingUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_previousSibling (self)))
 
foreign import javascript unsafe "$1[\"nextSibling\"]()"
        js_nextSibling :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
nextSibling :: (MonadIO m) => TreeWalker -> m (Maybe Node)
nextSibling self
  = liftIO (nullableToMaybe <$> (js_nextSibling (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
nextSibling_ :: (MonadIO m) => TreeWalker -> m ()
nextSibling_ self = liftIO (void (js_nextSibling (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
nextSiblingUnchecked :: (MonadIO m) => TreeWalker -> m Node
nextSiblingUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_nextSibling (self)))
 
foreign import javascript unsafe "$1[\"previousNode\"]()"
        js_previousNode :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
previousNode :: (MonadIO m) => TreeWalker -> m (Maybe Node)
previousNode self
  = liftIO (nullableToMaybe <$> (js_previousNode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
previousNode_ :: (MonadIO m) => TreeWalker -> m ()
previousNode_ self = liftIO (void (js_previousNode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
previousNodeUnchecked :: (MonadIO m) => TreeWalker -> m Node
previousNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_previousNode (self)))
 
foreign import javascript unsafe "$1[\"nextNode\"]()" js_nextNode
        :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
nextNode :: (MonadIO m) => TreeWalker -> m (Maybe Node)
nextNode self = liftIO (nullableToMaybe <$> (js_nextNode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
nextNode_ :: (MonadIO m) => TreeWalker -> m ()
nextNode_ self = liftIO (void (js_nextNode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
nextNodeUnchecked :: (MonadIO m) => TreeWalker -> m Node
nextNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_nextNode (self)))
 
foreign import javascript unsafe "$1[\"root\"]" js_getRoot ::
        TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.root Mozilla TreeWalker.root documentation> 
getRoot :: (MonadIO m) => TreeWalker -> m (Maybe Node)
getRoot self = liftIO (nullableToMaybe <$> (js_getRoot (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.root Mozilla TreeWalker.root documentation> 
getRootUnchecked :: (MonadIO m) => TreeWalker -> m Node
getRootUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRoot (self)))
 
foreign import javascript unsafe "$1[\"whatToShow\"]"
        js_getWhatToShow :: TreeWalker -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.whatToShow Mozilla TreeWalker.whatToShow documentation> 
getWhatToShow :: (MonadIO m) => TreeWalker -> m Word
getWhatToShow self = liftIO (js_getWhatToShow (self))
 
foreign import javascript unsafe "$1[\"filter\"]" js_getFilter ::
        TreeWalker -> IO (Nullable NodeFilter)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.filter Mozilla TreeWalker.filter documentation> 
getFilter :: (MonadIO m) => TreeWalker -> m (Maybe NodeFilter)
getFilter self = liftIO (nullableToMaybe <$> (js_getFilter (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.filter Mozilla TreeWalker.filter documentation> 
getFilterUnchecked :: (MonadIO m) => TreeWalker -> m NodeFilter
getFilterUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getFilter (self)))
 
foreign import javascript unsafe
        "($1[\"expandEntityReferences\"] ? 1 : 0)"
        js_getExpandEntityReferences :: TreeWalker -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.expandEntityReferences Mozilla TreeWalker.expandEntityReferences documentation> 
getExpandEntityReferences :: (MonadIO m) => TreeWalker -> m Bool
getExpandEntityReferences self
  = liftIO (js_getExpandEntityReferences (self))
 
foreign import javascript unsafe "$1[\"currentNode\"] = $2;"
        js_setCurrentNode :: TreeWalker -> Nullable Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.currentNode Mozilla TreeWalker.currentNode documentation> 
setCurrentNode ::
               (MonadIO m, IsNode val) => TreeWalker -> Maybe val -> m ()
setCurrentNode self val
  = liftIO
      (js_setCurrentNode (self) (maybeToNullable (fmap toNode val)))
 
foreign import javascript unsafe "$1[\"currentNode\"]"
        js_getCurrentNode :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.currentNode Mozilla TreeWalker.currentNode documentation> 
getCurrentNode :: (MonadIO m) => TreeWalker -> m (Maybe Node)
getCurrentNode self
  = liftIO (nullableToMaybe <$> (js_getCurrentNode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.currentNode Mozilla TreeWalker.currentNode documentation> 
getCurrentNodeUnchecked :: (MonadIO m) => TreeWalker -> m Node
getCurrentNodeUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getCurrentNode (self)))