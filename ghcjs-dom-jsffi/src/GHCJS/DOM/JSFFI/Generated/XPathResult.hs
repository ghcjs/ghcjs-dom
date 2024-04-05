{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.XPathResult
       (js_iterateNext, iterateNext, iterateNext_, js_snapshotItem,
        snapshotItem, snapshotItem_, pattern ANY_TYPE, pattern NUMBER_TYPE,
        pattern STRING_TYPE, pattern BOOLEAN_TYPE,
        pattern UNORDERED_NODE_ITERATOR_TYPE,
        pattern ORDERED_NODE_ITERATOR_TYPE,
        pattern UNORDERED_NODE_SNAPSHOT_TYPE,
        pattern ORDERED_NODE_SNAPSHOT_TYPE,
        pattern ANY_UNORDERED_NODE_TYPE, pattern FIRST_ORDERED_NODE_TYPE,
        js_getResultType, getResultType, js_getNumberValue, getNumberValue,
        js_getStringValue, getStringValue, js_getBooleanValue,
        getBooleanValue, js_getSingleNodeValue, getSingleNodeValue,
        js_getInvalidIteratorState, getInvalidIteratorState,
        js_getSnapshotLength, getSnapshotLength, XPathResult(..),
        gTypeXPathResult)
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
 
foreign import javascript safe "$1[\"iterateNext\"]()"
        js_iterateNext :: XPathResult -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.iterateNext Mozilla XPathResult.iterateNext documentation> 
iterateNext :: (MonadIO m) => XPathResult -> m Node
iterateNext self = liftIO (js_iterateNext self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.iterateNext Mozilla XPathResult.iterateNext documentation> 
iterateNext_ :: (MonadIO m) => XPathResult -> m ()
iterateNext_ self = liftIO (void (js_iterateNext self))
 
foreign import javascript safe "$1[\"snapshotItem\"]($2)"
        js_snapshotItem :: XPathResult -> Optional Word -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.snapshotItem Mozilla XPathResult.snapshotItem documentation> 
snapshotItem :: (MonadIO m) => XPathResult -> Maybe Word -> m Node
snapshotItem self index
  = liftIO (js_snapshotItem self (maybeToOptional index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.snapshotItem Mozilla XPathResult.snapshotItem documentation> 
snapshotItem_ :: (MonadIO m) => XPathResult -> Maybe Word -> m ()
snapshotItem_ self index
  = liftIO (void (js_snapshotItem self (maybeToOptional index)))
pattern ANY_TYPE = 0
pattern NUMBER_TYPE = 1
pattern STRING_TYPE = 2
pattern BOOLEAN_TYPE = 3
pattern UNORDERED_NODE_ITERATOR_TYPE = 4
pattern ORDERED_NODE_ITERATOR_TYPE = 5
pattern UNORDERED_NODE_SNAPSHOT_TYPE = 6
pattern ORDERED_NODE_SNAPSHOT_TYPE = 7
pattern ANY_UNORDERED_NODE_TYPE = 8
pattern FIRST_ORDERED_NODE_TYPE = 9
 
foreign import javascript unsafe "$1[\"resultType\"]"
        js_getResultType :: XPathResult -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.resultType Mozilla XPathResult.resultType documentation> 
getResultType :: (MonadIO m) => XPathResult -> m Word
getResultType self = liftIO (js_getResultType self)
 
foreign import javascript safe "$1[\"numberValue\"]"
        js_getNumberValue :: XPathResult -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.numberValue Mozilla XPathResult.numberValue documentation> 
getNumberValue :: (MonadIO m) => XPathResult -> m Double
getNumberValue self = liftIO (js_getNumberValue self)
 
foreign import javascript safe "$1[\"stringValue\"]"
        js_getStringValue :: XPathResult -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.stringValue Mozilla XPathResult.stringValue documentation> 
getStringValue ::
               (MonadIO m, FromJSString result) => XPathResult -> m result
getStringValue self
  = liftIO (fromJSString <$> (js_getStringValue self))
 
foreign import javascript safe "($1[\"booleanValue\"] ? 1 : 0)"
        js_getBooleanValue :: XPathResult -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.booleanValue Mozilla XPathResult.booleanValue documentation> 
getBooleanValue :: (MonadIO m) => XPathResult -> m Bool
getBooleanValue self = liftIO (js_getBooleanValue self)
 
foreign import javascript safe "$1[\"singleNodeValue\"]"
        js_getSingleNodeValue :: XPathResult -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.singleNodeValue Mozilla XPathResult.singleNodeValue documentation> 
getSingleNodeValue :: (MonadIO m) => XPathResult -> m Node
getSingleNodeValue self = liftIO (js_getSingleNodeValue self)
 
foreign import javascript unsafe
        "($1[\"invalidIteratorState\"] ? 1 : 0)" js_getInvalidIteratorState
        :: XPathResult -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.invalidIteratorState Mozilla XPathResult.invalidIteratorState documentation> 
getInvalidIteratorState :: (MonadIO m) => XPathResult -> m Bool
getInvalidIteratorState self
  = liftIO (js_getInvalidIteratorState self)
 
foreign import javascript safe "$1[\"snapshotLength\"]"
        js_getSnapshotLength :: XPathResult -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.snapshotLength Mozilla XPathResult.snapshotLength documentation> 
getSnapshotLength :: (MonadIO m) => XPathResult -> m Word
getSnapshotLength self = liftIO (js_getSnapshotLength self)