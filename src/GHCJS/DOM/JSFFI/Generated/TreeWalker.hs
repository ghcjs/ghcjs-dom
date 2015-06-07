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
 
foreign import javascript unsafe "$1[\"parentNode\"]()"
        js_parentNode :: JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.parentNode Mozilla TreeWalker.parentNode documentation> 
parentNode :: (MonadIO m) => TreeWalker -> m (Maybe Node)
parentNode self
  = liftIO ((js_parentNode (unTreeWalker self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"firstChild\"]()"
        js_firstChild :: JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
firstChild :: (MonadIO m) => TreeWalker -> m (Maybe Node)
firstChild self
  = liftIO ((js_firstChild (unTreeWalker self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"lastChild\"]()" js_lastChild
        :: JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
lastChild :: (MonadIO m) => TreeWalker -> m (Maybe Node)
lastChild self
  = liftIO ((js_lastChild (unTreeWalker self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"previousSibling\"]()"
        js_previousSibling :: JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
previousSibling :: (MonadIO m) => TreeWalker -> m (Maybe Node)
previousSibling self
  = liftIO ((js_previousSibling (unTreeWalker self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"nextSibling\"]()"
        js_nextSibling :: JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
nextSibling :: (MonadIO m) => TreeWalker -> m (Maybe Node)
nextSibling self
  = liftIO ((js_nextSibling (unTreeWalker self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"previousNode\"]()"
        js_previousNode :: JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
previousNode :: (MonadIO m) => TreeWalker -> m (Maybe Node)
previousNode self
  = liftIO ((js_previousNode (unTreeWalker self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"nextNode\"]()" js_nextNode
        :: JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
nextNode :: (MonadIO m) => TreeWalker -> m (Maybe Node)
nextNode self
  = liftIO ((js_nextNode (unTreeWalker self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"root\"]" js_getRoot ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.root Mozilla TreeWalker.root documentation> 
getRoot :: (MonadIO m) => TreeWalker -> m (Maybe Node)
getRoot self
  = liftIO ((js_getRoot (unTreeWalker self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"whatToShow\"]"
        js_getWhatToShow :: JSRef TreeWalker -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.whatToShow Mozilla TreeWalker.whatToShow documentation> 
getWhatToShow :: (MonadIO m) => TreeWalker -> m Word
getWhatToShow self = liftIO (js_getWhatToShow (unTreeWalker self))
 
foreign import javascript unsafe "$1[\"filter\"]" js_getFilter ::
        JSRef TreeWalker -> IO (JSRef NodeFilter)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.filter Mozilla TreeWalker.filter documentation> 
getFilter :: (MonadIO m) => TreeWalker -> m (Maybe NodeFilter)
getFilter self
  = liftIO ((js_getFilter (unTreeWalker self)) >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"expandEntityReferences\"] ? 1 : 0)"
        js_getExpandEntityReferences :: JSRef TreeWalker -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.expandEntityReferences Mozilla TreeWalker.expandEntityReferences documentation> 
getExpandEntityReferences :: (MonadIO m) => TreeWalker -> m Bool
getExpandEntityReferences self
  = liftIO (js_getExpandEntityReferences (unTreeWalker self))
 
foreign import javascript unsafe "$1[\"currentNode\"] = $2;"
        js_setCurrentNode :: JSRef TreeWalker -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.currentNode Mozilla TreeWalker.currentNode documentation> 
setCurrentNode ::
               (MonadIO m, IsNode val) => TreeWalker -> Maybe val -> m ()
setCurrentNode self val
  = liftIO
      (js_setCurrentNode (unTreeWalker self)
         (maybe jsNull (unNode . toNode) val))
 
foreign import javascript unsafe "$1[\"currentNode\"]"
        js_getCurrentNode :: JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.currentNode Mozilla TreeWalker.currentNode documentation> 
getCurrentNode :: (MonadIO m) => TreeWalker -> m (Maybe Node)
getCurrentNode self
  = liftIO ((js_getCurrentNode (unTreeWalker self)) >>= fromJSRef)