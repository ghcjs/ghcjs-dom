{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.XPathResult
       (js_iterateNext, iterateNext, js_snapshotItem, snapshotItem,
        pattern ANY_TYPE, pattern NUMBER_TYPE, pattern STRING_TYPE,
        pattern BOOLEAN_TYPE, pattern UNORDERED_NODE_ITERATOR_TYPE,
        pattern ORDERED_NODE_ITERATOR_TYPE,
        pattern UNORDERED_NODE_SNAPSHOT_TYPE,
        pattern ORDERED_NODE_SNAPSHOT_TYPE,
        pattern ANY_UNORDERED_NODE_TYPE, pattern FIRST_ORDERED_NODE_TYPE,
        js_getResultType, getResultType, js_getNumberValue, getNumberValue,
        js_getStringValue, getStringValue, js_getBooleanValue,
        getBooleanValue, js_getSingleNodeValue, getSingleNodeValue,
        js_getInvalidIteratorState, getInvalidIteratorState,
        js_getSnapshotLength, getSnapshotLength, XPathResult,
        castToXPathResult, gTypeXPathResult)
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
 
foreign import javascript unsafe "$1[\"iterateNext\"]()"
        js_iterateNext :: XPathResult -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.iterateNext Mozilla XPathResult.iterateNext documentation> 
iterateNext :: (MonadIO m) => XPathResult -> m (Maybe Node)
iterateNext self
  = liftIO (nullableToMaybe <$> (js_iterateNext (self)))
 
foreign import javascript unsafe "$1[\"snapshotItem\"]($2)"
        js_snapshotItem :: XPathResult -> Word -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.snapshotItem Mozilla XPathResult.snapshotItem documentation> 
snapshotItem ::
             (MonadIO m) => XPathResult -> Word -> m (Maybe Node)
snapshotItem self index
  = liftIO (nullableToMaybe <$> (js_snapshotItem (self) index))
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
getResultType self = liftIO (js_getResultType (self))
 
foreign import javascript unsafe "$1[\"numberValue\"]"
        js_getNumberValue :: XPathResult -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.numberValue Mozilla XPathResult.numberValue documentation> 
getNumberValue :: (MonadIO m) => XPathResult -> m Double
getNumberValue self = liftIO (js_getNumberValue (self))
 
foreign import javascript unsafe "$1[\"stringValue\"]"
        js_getStringValue :: XPathResult -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.stringValue Mozilla XPathResult.stringValue documentation> 
getStringValue ::
               (MonadIO m, FromJSString result) => XPathResult -> m result
getStringValue self
  = liftIO (fromJSString <$> (js_getStringValue (self)))
 
foreign import javascript unsafe "($1[\"booleanValue\"] ? 1 : 0)"
        js_getBooleanValue :: XPathResult -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.booleanValue Mozilla XPathResult.booleanValue documentation> 
getBooleanValue :: (MonadIO m) => XPathResult -> m Bool
getBooleanValue self = liftIO (js_getBooleanValue (self))
 
foreign import javascript unsafe "$1[\"singleNodeValue\"]"
        js_getSingleNodeValue :: XPathResult -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.singleNodeValue Mozilla XPathResult.singleNodeValue documentation> 
getSingleNodeValue :: (MonadIO m) => XPathResult -> m (Maybe Node)
getSingleNodeValue self
  = liftIO (nullableToMaybe <$> (js_getSingleNodeValue (self)))
 
foreign import javascript unsafe
        "($1[\"invalidIteratorState\"] ? 1 : 0)" js_getInvalidIteratorState
        :: XPathResult -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.invalidIteratorState Mozilla XPathResult.invalidIteratorState documentation> 
getInvalidIteratorState :: (MonadIO m) => XPathResult -> m Bool
getInvalidIteratorState self
  = liftIO (js_getInvalidIteratorState (self))
 
foreign import javascript unsafe "$1[\"snapshotLength\"]"
        js_getSnapshotLength :: XPathResult -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.snapshotLength Mozilla XPathResult.snapshotLength documentation> 
getSnapshotLength :: (MonadIO m) => XPathResult -> m Word
getSnapshotLength self = liftIO (js_getSnapshotLength (self))