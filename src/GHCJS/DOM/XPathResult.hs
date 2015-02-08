{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XPathResult
       (ghcjs_dom_xpath_result_iterate_next, xPathResultIterateNext,
        ghcjs_dom_xpath_result_snapshot_item, xPathResultSnapshotItem,
        cANY_TYPE, cNUMBER_TYPE, cSTRING_TYPE, cBOOLEAN_TYPE,
        cUNORDERED_NODE_ITERATOR_TYPE, cORDERED_NODE_ITERATOR_TYPE,
        cUNORDERED_NODE_SNAPSHOT_TYPE, cORDERED_NODE_SNAPSHOT_TYPE,
        cANY_UNORDERED_NODE_TYPE, cFIRST_ORDERED_NODE_TYPE,
        ghcjs_dom_xpath_result_get_result_type, xPathResultGetResultType,
        ghcjs_dom_xpath_result_get_number_value, xPathResultGetNumberValue,
        ghcjs_dom_xpath_result_get_string_value, xPathResultGetStringValue,
        ghcjs_dom_xpath_result_get_boolean_value,
        xPathResultGetBooleanValue,
        ghcjs_dom_xpath_result_get_single_node_value,
        xPathResultGetSingleNodeValue,
        ghcjs_dom_xpath_result_get_invalid_iterator_state,
        xPathResultGetInvalidIteratorState,
        ghcjs_dom_xpath_result_get_snapshot_length,
        xPathResultGetSnapshotLength, XPathResult, IsXPathResult,
        castToXPathResult, gTypeXPathResult, toXPathResult)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"iterateNext\"]()"
        ghcjs_dom_xpath_result_iterate_next ::
        JSRef XPathResult -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.iterateNext Mozilla XPathResult.iterateNext documentation> 
xPathResultIterateNext ::
                       (MonadIO m, IsXPathResult self) => self -> m (Maybe Node)
xPathResultIterateNext self
  = liftIO
      ((ghcjs_dom_xpath_result_iterate_next
          (unXPathResult (toXPathResult self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"snapshotItem\"]($2)"
        ghcjs_dom_xpath_result_snapshot_item ::
        JSRef XPathResult -> Word -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.snapshotItem Mozilla XPathResult.snapshotItem documentation> 
xPathResultSnapshotItem ::
                        (MonadIO m, IsXPathResult self) => self -> Word -> m (Maybe Node)
xPathResultSnapshotItem self index
  = liftIO
      ((ghcjs_dom_xpath_result_snapshot_item
          (unXPathResult (toXPathResult self))
          index)
         >>= fromJSRef)
cANY_TYPE = 0
cNUMBER_TYPE = 1
cSTRING_TYPE = 2
cBOOLEAN_TYPE = 3
cUNORDERED_NODE_ITERATOR_TYPE = 4
cORDERED_NODE_ITERATOR_TYPE = 5
cUNORDERED_NODE_SNAPSHOT_TYPE = 6
cORDERED_NODE_SNAPSHOT_TYPE = 7
cANY_UNORDERED_NODE_TYPE = 8
cFIRST_ORDERED_NODE_TYPE = 9
 
foreign import javascript unsafe "$1[\"resultType\"]"
        ghcjs_dom_xpath_result_get_result_type ::
        JSRef XPathResult -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.resultType Mozilla XPathResult.resultType documentation> 
xPathResultGetResultType ::
                         (MonadIO m, IsXPathResult self) => self -> m Word
xPathResultGetResultType self
  = liftIO
      (ghcjs_dom_xpath_result_get_result_type
         (unXPathResult (toXPathResult self)))
 
foreign import javascript unsafe "$1[\"numberValue\"]"
        ghcjs_dom_xpath_result_get_number_value ::
        JSRef XPathResult -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.numberValue Mozilla XPathResult.numberValue documentation> 
xPathResultGetNumberValue ::
                          (MonadIO m, IsXPathResult self) => self -> m Double
xPathResultGetNumberValue self
  = liftIO
      (ghcjs_dom_xpath_result_get_number_value
         (unXPathResult (toXPathResult self)))
 
foreign import javascript unsafe "$1[\"stringValue\"]"
        ghcjs_dom_xpath_result_get_string_value ::
        JSRef XPathResult -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.stringValue Mozilla XPathResult.stringValue documentation> 
xPathResultGetStringValue ::
                          (MonadIO m, IsXPathResult self, FromJSString result) =>
                            self -> m result
xPathResultGetStringValue self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_xpath_result_get_string_value
            (unXPathResult (toXPathResult self))))
 
foreign import javascript unsafe "($1[\"booleanValue\"] ? 1 : 0)"
        ghcjs_dom_xpath_result_get_boolean_value ::
        JSRef XPathResult -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.booleanValue Mozilla XPathResult.booleanValue documentation> 
xPathResultGetBooleanValue ::
                           (MonadIO m, IsXPathResult self) => self -> m Bool
xPathResultGetBooleanValue self
  = liftIO
      (ghcjs_dom_xpath_result_get_boolean_value
         (unXPathResult (toXPathResult self)))
 
foreign import javascript unsafe "$1[\"singleNodeValue\"]"
        ghcjs_dom_xpath_result_get_single_node_value ::
        JSRef XPathResult -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.singleNodeValue Mozilla XPathResult.singleNodeValue documentation> 
xPathResultGetSingleNodeValue ::
                              (MonadIO m, IsXPathResult self) => self -> m (Maybe Node)
xPathResultGetSingleNodeValue self
  = liftIO
      ((ghcjs_dom_xpath_result_get_single_node_value
          (unXPathResult (toXPathResult self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"invalidIteratorState\"] ? 1 : 0)"
        ghcjs_dom_xpath_result_get_invalid_iterator_state ::
        JSRef XPathResult -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.invalidIteratorState Mozilla XPathResult.invalidIteratorState documentation> 
xPathResultGetInvalidIteratorState ::
                                   (MonadIO m, IsXPathResult self) => self -> m Bool
xPathResultGetInvalidIteratorState self
  = liftIO
      (ghcjs_dom_xpath_result_get_invalid_iterator_state
         (unXPathResult (toXPathResult self)))
 
foreign import javascript unsafe "$1[\"snapshotLength\"]"
        ghcjs_dom_xpath_result_get_snapshot_length ::
        JSRef XPathResult -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.snapshotLength Mozilla XPathResult.snapshotLength documentation> 
xPathResultGetSnapshotLength ::
                             (MonadIO m, IsXPathResult self) => self -> m Word
xPathResultGetSnapshotLength self
  = liftIO
      (ghcjs_dom_xpath_result_get_snapshot_length
         (unXPathResult (toXPathResult self)))
#else
module GHCJS.DOM.XPathResult (
  module Graphics.UI.Gtk.WebKit.DOM.XPathResult
  ) where
import Graphics.UI.Gtk.WebKit.DOM.XPathResult
#endif
