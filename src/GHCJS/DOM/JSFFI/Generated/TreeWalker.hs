{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.TreeWalker
       (js_parentNode, parentNode, js_firstChild, firstChild,
        js_lastChild, lastChild, js_previousSibling, previousSibling,
        js_nextSibling, nextSibling, js_previousNode, previousNode,
        js_nextNode, nextNode, js_getRoot, getRoot, js_getWhatToShow,
        getWhatToShow, js_getFilter, getFilter,
        js_getExpandEntityReferences, getExpandEntityReferences,
        js_setCurrentNode, setCurrentNode, js_getCurrentNode,
        getCurrentNode, TreeWalker, castToTreeWalker, gTypeTreeWalker)
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
 
foreign import javascript unsafe "$1[\"parentNode\"]()"
        js_parentNode :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.parentNode Mozilla TreeWalker.parentNode documentation> 
parentNode :: (MonadIO m) => TreeWalker -> m (Maybe Node)
parentNode self
  = liftIO (nullableToMaybe <$> (js_parentNode (self)))
 
foreign import javascript unsafe "$1[\"firstChild\"]()"
        js_firstChild :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
firstChild :: (MonadIO m) => TreeWalker -> m (Maybe Node)
firstChild self
  = liftIO (nullableToMaybe <$> (js_firstChild (self)))
 
foreign import javascript unsafe "$1[\"lastChild\"]()" js_lastChild
        :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
lastChild :: (MonadIO m) => TreeWalker -> m (Maybe Node)
lastChild self = liftIO (nullableToMaybe <$> (js_lastChild (self)))
 
foreign import javascript unsafe "$1[\"previousSibling\"]()"
        js_previousSibling :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
previousSibling :: (MonadIO m) => TreeWalker -> m (Maybe Node)
previousSibling self
  = liftIO (nullableToMaybe <$> (js_previousSibling (self)))
 
foreign import javascript unsafe "$1[\"nextSibling\"]()"
        js_nextSibling :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
nextSibling :: (MonadIO m) => TreeWalker -> m (Maybe Node)
nextSibling self
  = liftIO (nullableToMaybe <$> (js_nextSibling (self)))
 
foreign import javascript unsafe "$1[\"previousNode\"]()"
        js_previousNode :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
previousNode :: (MonadIO m) => TreeWalker -> m (Maybe Node)
previousNode self
  = liftIO (nullableToMaybe <$> (js_previousNode (self)))
 
foreign import javascript unsafe "$1[\"nextNode\"]()" js_nextNode
        :: TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
nextNode :: (MonadIO m) => TreeWalker -> m (Maybe Node)
nextNode self = liftIO (nullableToMaybe <$> (js_nextNode (self)))
 
foreign import javascript unsafe "$1[\"root\"]" js_getRoot ::
        TreeWalker -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.root Mozilla TreeWalker.root documentation> 
getRoot :: (MonadIO m) => TreeWalker -> m (Maybe Node)
getRoot self = liftIO (nullableToMaybe <$> (js_getRoot (self)))
 
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