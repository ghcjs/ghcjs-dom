{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.TreeWalker
       (js_parentNode, parentNode, parentNode_, js_firstChild, firstChild,
        firstChild_, js_lastChild, lastChild, lastChild_,
        js_previousSibling, previousSibling, previousSibling_,
        js_nextSibling, nextSibling, nextSibling_, js_previousNode,
        previousNode, previousNode_, js_nextNode, nextNode, nextNode_,
        js_getRoot, getRoot, js_getWhatToShow, getWhatToShow,
        js_setCurrentNode, setCurrentNode, js_getCurrentNode,
        getCurrentNode, TreeWalker(..), gTypeTreeWalker)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"parentNode\"]()"
        js_parentNode :: TreeWalker -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.parentNode Mozilla TreeWalker.parentNode documentation> 
parentNode :: (MonadIO m) => TreeWalker -> m Node
parentNode self = liftIO (js_parentNode self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.parentNode Mozilla TreeWalker.parentNode documentation> 
parentNode_ :: (MonadIO m) => TreeWalker -> m ()
parentNode_ self = liftIO (void (js_parentNode self))
 
foreign import javascript unsafe "$1[\"firstChild\"]()"
        js_firstChild :: TreeWalker -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
firstChild :: (MonadIO m) => TreeWalker -> m Node
firstChild self = liftIO (js_firstChild self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
firstChild_ :: (MonadIO m) => TreeWalker -> m ()
firstChild_ self = liftIO (void (js_firstChild self))
 
foreign import javascript unsafe "$1[\"lastChild\"]()" js_lastChild
        :: TreeWalker -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
lastChild :: (MonadIO m) => TreeWalker -> m Node
lastChild self = liftIO (js_lastChild self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
lastChild_ :: (MonadIO m) => TreeWalker -> m ()
lastChild_ self = liftIO (void (js_lastChild self))
 
foreign import javascript unsafe "$1[\"previousSibling\"]()"
        js_previousSibling :: TreeWalker -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
previousSibling :: (MonadIO m) => TreeWalker -> m Node
previousSibling self = liftIO (js_previousSibling self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
previousSibling_ :: (MonadIO m) => TreeWalker -> m ()
previousSibling_ self = liftIO (void (js_previousSibling self))
 
foreign import javascript unsafe "$1[\"nextSibling\"]()"
        js_nextSibling :: TreeWalker -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
nextSibling :: (MonadIO m) => TreeWalker -> m Node
nextSibling self = liftIO (js_nextSibling self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
nextSibling_ :: (MonadIO m) => TreeWalker -> m ()
nextSibling_ self = liftIO (void (js_nextSibling self))
 
foreign import javascript unsafe "$1[\"previousNode\"]()"
        js_previousNode :: TreeWalker -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
previousNode :: (MonadIO m) => TreeWalker -> m Node
previousNode self = liftIO (js_previousNode self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
previousNode_ :: (MonadIO m) => TreeWalker -> m ()
previousNode_ self = liftIO (void (js_previousNode self))
 
foreign import javascript unsafe "$1[\"nextNode\"]()" js_nextNode
        :: TreeWalker -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
nextNode :: (MonadIO m) => TreeWalker -> m Node
nextNode self = liftIO (js_nextNode self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
nextNode_ :: (MonadIO m) => TreeWalker -> m ()
nextNode_ self = liftIO (void (js_nextNode self))
 
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