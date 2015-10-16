{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.NodeIterator
       (js_nextNode, nextNode, js_previousNode, previousNode, js_detach,
        detach, js_getRoot, getRoot, js_getWhatToShow, getWhatToShow,
        js_getFilter, getFilter, js_getExpandEntityReferences,
        getExpandEntityReferences, js_getReferenceNode, getReferenceNode,
        js_getPointerBeforeReferenceNode, getPointerBeforeReferenceNode,
        NodeIterator, castToNodeIterator, gTypeNodeIterator)
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
 
foreign import javascript unsafe "$1[\"nextNode\"]()" js_nextNode
        :: NodeIterator -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.nextNode Mozilla NodeIterator.nextNode documentation> 
nextNode :: (MonadIO m) => NodeIterator -> m (Maybe Node)
nextNode self = liftIO (nullableToMaybe <$> (js_nextNode (self)))
 
foreign import javascript unsafe "$1[\"previousNode\"]()"
        js_previousNode :: NodeIterator -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.previousNode Mozilla NodeIterator.previousNode documentation> 
previousNode :: (MonadIO m) => NodeIterator -> m (Maybe Node)
previousNode self
  = liftIO (nullableToMaybe <$> (js_previousNode (self)))
 
foreign import javascript unsafe "$1[\"detach\"]()" js_detach ::
        NodeIterator -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.detach Mozilla NodeIterator.detach documentation> 
detach :: (MonadIO m) => NodeIterator -> m ()
detach self = liftIO (js_detach (self))
 
foreign import javascript unsafe "$1[\"root\"]" js_getRoot ::
        NodeIterator -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.root Mozilla NodeIterator.root documentation> 
getRoot :: (MonadIO m) => NodeIterator -> m (Maybe Node)
getRoot self = liftIO (nullableToMaybe <$> (js_getRoot (self)))
 
foreign import javascript unsafe "$1[\"whatToShow\"]"
        js_getWhatToShow :: NodeIterator -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.whatToShow Mozilla NodeIterator.whatToShow documentation> 
getWhatToShow :: (MonadIO m) => NodeIterator -> m Word
getWhatToShow self = liftIO (js_getWhatToShow (self))
 
foreign import javascript unsafe "$1[\"filter\"]" js_getFilter ::
        NodeIterator -> IO (Nullable NodeFilter)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.filter Mozilla NodeIterator.filter documentation> 
getFilter :: (MonadIO m) => NodeIterator -> m (Maybe NodeFilter)
getFilter self = liftIO (nullableToMaybe <$> (js_getFilter (self)))
 
foreign import javascript unsafe
        "($1[\"expandEntityReferences\"] ? 1 : 0)"
        js_getExpandEntityReferences :: NodeIterator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.expandEntityReferences Mozilla NodeIterator.expandEntityReferences documentation> 
getExpandEntityReferences :: (MonadIO m) => NodeIterator -> m Bool
getExpandEntityReferences self
  = liftIO (js_getExpandEntityReferences (self))
 
foreign import javascript unsafe "$1[\"referenceNode\"]"
        js_getReferenceNode :: NodeIterator -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.referenceNode Mozilla NodeIterator.referenceNode documentation> 
getReferenceNode :: (MonadIO m) => NodeIterator -> m (Maybe Node)
getReferenceNode self
  = liftIO (nullableToMaybe <$> (js_getReferenceNode (self)))
 
foreign import javascript unsafe
        "($1[\"pointerBeforeReferenceNode\"] ? 1 : 0)"
        js_getPointerBeforeReferenceNode :: NodeIterator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.pointerBeforeReferenceNode Mozilla NodeIterator.pointerBeforeReferenceNode documentation> 
getPointerBeforeReferenceNode ::
                              (MonadIO m) => NodeIterator -> m Bool
getPointerBeforeReferenceNode self
  = liftIO (js_getPointerBeforeReferenceNode (self))