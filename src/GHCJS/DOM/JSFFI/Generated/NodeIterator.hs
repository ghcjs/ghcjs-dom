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
 
foreign import javascript unsafe "$1[\"nextNode\"]()" js_nextNode
        :: JSRef NodeIterator -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.nextNode Mozilla NodeIterator.nextNode documentation> 
nextNode :: (MonadIO m) => NodeIterator -> m (Maybe Node)
nextNode self
  = liftIO ((js_nextNode (unNodeIterator self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"previousNode\"]()"
        js_previousNode :: JSRef NodeIterator -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.previousNode Mozilla NodeIterator.previousNode documentation> 
previousNode :: (MonadIO m) => NodeIterator -> m (Maybe Node)
previousNode self
  = liftIO ((js_previousNode (unNodeIterator self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"detach\"]()" js_detach ::
        JSRef NodeIterator -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.detach Mozilla NodeIterator.detach documentation> 
detach :: (MonadIO m) => NodeIterator -> m ()
detach self = liftIO (js_detach (unNodeIterator self))
 
foreign import javascript unsafe "$1[\"root\"]" js_getRoot ::
        JSRef NodeIterator -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.root Mozilla NodeIterator.root documentation> 
getRoot :: (MonadIO m) => NodeIterator -> m (Maybe Node)
getRoot self
  = liftIO ((js_getRoot (unNodeIterator self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"whatToShow\"]"
        js_getWhatToShow :: JSRef NodeIterator -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.whatToShow Mozilla NodeIterator.whatToShow documentation> 
getWhatToShow :: (MonadIO m) => NodeIterator -> m Word
getWhatToShow self
  = liftIO (js_getWhatToShow (unNodeIterator self))
 
foreign import javascript unsafe "$1[\"filter\"]" js_getFilter ::
        JSRef NodeIterator -> IO (JSRef NodeFilter)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.filter Mozilla NodeIterator.filter documentation> 
getFilter :: (MonadIO m) => NodeIterator -> m (Maybe NodeFilter)
getFilter self
  = liftIO ((js_getFilter (unNodeIterator self)) >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"expandEntityReferences\"] ? 1 : 0)"
        js_getExpandEntityReferences :: JSRef NodeIterator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.expandEntityReferences Mozilla NodeIterator.expandEntityReferences documentation> 
getExpandEntityReferences :: (MonadIO m) => NodeIterator -> m Bool
getExpandEntityReferences self
  = liftIO (js_getExpandEntityReferences (unNodeIterator self))
 
foreign import javascript unsafe "$1[\"referenceNode\"]"
        js_getReferenceNode :: JSRef NodeIterator -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.referenceNode Mozilla NodeIterator.referenceNode documentation> 
getReferenceNode :: (MonadIO m) => NodeIterator -> m (Maybe Node)
getReferenceNode self
  = liftIO
      ((js_getReferenceNode (unNodeIterator self)) >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"pointerBeforeReferenceNode\"] ? 1 : 0)"
        js_getPointerBeforeReferenceNode :: JSRef NodeIterator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.pointerBeforeReferenceNode Mozilla NodeIterator.pointerBeforeReferenceNode documentation> 
getPointerBeforeReferenceNode ::
                              (MonadIO m) => NodeIterator -> m Bool
getPointerBeforeReferenceNode self
  = liftIO (js_getPointerBeforeReferenceNode (unNodeIterator self))