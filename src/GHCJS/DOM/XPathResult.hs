{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XPathResult
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
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"iterateNext\"]()"
        js_iterateNext :: JSRef XPathResult -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.iterateNext Mozilla XPathResult.iterateNext documentation> 
iterateNext :: (MonadIO m) => XPathResult -> m (Maybe Node)
iterateNext self
  = liftIO ((js_iterateNext (unXPathResult self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"snapshotItem\"]($2)"
        js_snapshotItem :: JSRef XPathResult -> Word -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.snapshotItem Mozilla XPathResult.snapshotItem documentation> 
snapshotItem ::
             (MonadIO m) => XPathResult -> Word -> m (Maybe Node)
snapshotItem self index
  = liftIO
      ((js_snapshotItem (unXPathResult self) index) >>= fromJSRef)
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
        js_getResultType :: JSRef XPathResult -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.resultType Mozilla XPathResult.resultType documentation> 
getResultType :: (MonadIO m) => XPathResult -> m Word
getResultType self = liftIO (js_getResultType (unXPathResult self))
 
foreign import javascript unsafe "$1[\"numberValue\"]"
        js_getNumberValue :: JSRef XPathResult -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.numberValue Mozilla XPathResult.numberValue documentation> 
getNumberValue :: (MonadIO m) => XPathResult -> m Double
getNumberValue self
  = liftIO (js_getNumberValue (unXPathResult self))
 
foreign import javascript unsafe "$1[\"stringValue\"]"
        js_getStringValue :: JSRef XPathResult -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.stringValue Mozilla XPathResult.stringValue documentation> 
getStringValue ::
               (MonadIO m, FromJSString result) => XPathResult -> m result
getStringValue self
  = liftIO
      (fromJSString <$> (js_getStringValue (unXPathResult self)))
 
foreign import javascript unsafe "($1[\"booleanValue\"] ? 1 : 0)"
        js_getBooleanValue :: JSRef XPathResult -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.booleanValue Mozilla XPathResult.booleanValue documentation> 
getBooleanValue :: (MonadIO m) => XPathResult -> m Bool
getBooleanValue self
  = liftIO (js_getBooleanValue (unXPathResult self))
 
foreign import javascript unsafe "$1[\"singleNodeValue\"]"
        js_getSingleNodeValue :: JSRef XPathResult -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.singleNodeValue Mozilla XPathResult.singleNodeValue documentation> 
getSingleNodeValue :: (MonadIO m) => XPathResult -> m (Maybe Node)
getSingleNodeValue self
  = liftIO
      ((js_getSingleNodeValue (unXPathResult self)) >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"invalidIteratorState\"] ? 1 : 0)" js_getInvalidIteratorState
        :: JSRef XPathResult -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.invalidIteratorState Mozilla XPathResult.invalidIteratorState documentation> 
getInvalidIteratorState :: (MonadIO m) => XPathResult -> m Bool
getInvalidIteratorState self
  = liftIO (js_getInvalidIteratorState (unXPathResult self))
 
foreign import javascript unsafe "$1[\"snapshotLength\"]"
        js_getSnapshotLength :: JSRef XPathResult -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.snapshotLength Mozilla XPathResult.snapshotLength documentation> 
getSnapshotLength :: (MonadIO m) => XPathResult -> m Word
getSnapshotLength self
  = liftIO (js_getSnapshotLength (unXPathResult self))
#else
module GHCJS.DOM.XPathResult (
  module Graphics.UI.Gtk.WebKit.DOM.XPathResult
  ) where
import Graphics.UI.Gtk.WebKit.DOM.XPathResult
#endif
