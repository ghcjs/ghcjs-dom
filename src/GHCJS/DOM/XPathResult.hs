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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"iterateNext\"]()"
        ghcjs_dom_xpath_result_iterate_next ::
        JSRef XPathResult -> IO (JSRef Node)
#else 
ghcjs_dom_xpath_result_iterate_next ::
                                      JSRef XPathResult -> IO (JSRef Node)
ghcjs_dom_xpath_result_iterate_next = undefined
#endif
 
xPathResultIterateNext ::
                       (IsXPathResult self) => self -> IO (Maybe Node)
xPathResultIterateNext self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_xpath_result_iterate_next
         (unXPathResult (toXPathResult self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"snapshotItem\"]($2)"
        ghcjs_dom_xpath_result_snapshot_item ::
        JSRef XPathResult -> Word -> IO (JSRef Node)
#else 
ghcjs_dom_xpath_result_snapshot_item ::
                                       JSRef XPathResult -> Word -> IO (JSRef Node)
ghcjs_dom_xpath_result_snapshot_item = undefined
#endif
 
xPathResultSnapshotItem ::
                        (IsXPathResult self) => self -> Word -> IO (Maybe Node)
xPathResultSnapshotItem self index
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_xpath_result_snapshot_item
         (unXPathResult (toXPathResult self))
         index)
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


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"resultType\"]"
        ghcjs_dom_xpath_result_get_result_type ::
        JSRef XPathResult -> IO Word
#else 
ghcjs_dom_xpath_result_get_result_type ::
                                         JSRef XPathResult -> IO Word
ghcjs_dom_xpath_result_get_result_type = undefined
#endif
 
xPathResultGetResultType :: (IsXPathResult self) => self -> IO Word
xPathResultGetResultType self
  = ghcjs_dom_xpath_result_get_result_type
      (unXPathResult (toXPathResult self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"numberValue\"]"
        ghcjs_dom_xpath_result_get_number_value ::
        JSRef XPathResult -> IO Double
#else 
ghcjs_dom_xpath_result_get_number_value ::
                                          JSRef XPathResult -> IO Double
ghcjs_dom_xpath_result_get_number_value = undefined
#endif
 
xPathResultGetNumberValue ::
                          (IsXPathResult self) => self -> IO Double
xPathResultGetNumberValue self
  = ghcjs_dom_xpath_result_get_number_value
      (unXPathResult (toXPathResult self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"stringValue\"]"
        ghcjs_dom_xpath_result_get_string_value ::
        JSRef XPathResult -> IO JSString
#else 
ghcjs_dom_xpath_result_get_string_value ::
                                          JSRef XPathResult -> IO JSString
ghcjs_dom_xpath_result_get_string_value = undefined
#endif
 
xPathResultGetStringValue ::
                          (IsXPathResult self, FromJSString result) => self -> IO result
xPathResultGetStringValue self
  = fromJSString <$>
      (ghcjs_dom_xpath_result_get_string_value
         (unXPathResult (toXPathResult self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"booleanValue\"] ? 1 : 0)"
        ghcjs_dom_xpath_result_get_boolean_value ::
        JSRef XPathResult -> IO Bool
#else 
ghcjs_dom_xpath_result_get_boolean_value ::
                                           JSRef XPathResult -> IO Bool
ghcjs_dom_xpath_result_get_boolean_value = undefined
#endif
 
xPathResultGetBooleanValue ::
                           (IsXPathResult self) => self -> IO Bool
xPathResultGetBooleanValue self
  = ghcjs_dom_xpath_result_get_boolean_value
      (unXPathResult (toXPathResult self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"singleNodeValue\"]"
        ghcjs_dom_xpath_result_get_single_node_value ::
        JSRef XPathResult -> IO (JSRef Node)
#else 
ghcjs_dom_xpath_result_get_single_node_value ::
                                               JSRef XPathResult -> IO (JSRef Node)
ghcjs_dom_xpath_result_get_single_node_value = undefined
#endif
 
xPathResultGetSingleNodeValue ::
                              (IsXPathResult self) => self -> IO (Maybe Node)
xPathResultGetSingleNodeValue self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_xpath_result_get_single_node_value
         (unXPathResult (toXPathResult self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "($1[\"invalidIteratorState\"] ? 1 : 0)"
        ghcjs_dom_xpath_result_get_invalid_iterator_state ::
        JSRef XPathResult -> IO Bool
#else 
ghcjs_dom_xpath_result_get_invalid_iterator_state ::
                                                    JSRef XPathResult -> IO Bool
ghcjs_dom_xpath_result_get_invalid_iterator_state = undefined
#endif
 
xPathResultGetInvalidIteratorState ::
                                   (IsXPathResult self) => self -> IO Bool
xPathResultGetInvalidIteratorState self
  = ghcjs_dom_xpath_result_get_invalid_iterator_state
      (unXPathResult (toXPathResult self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"snapshotLength\"]"
        ghcjs_dom_xpath_result_get_snapshot_length ::
        JSRef XPathResult -> IO Word
#else 
ghcjs_dom_xpath_result_get_snapshot_length ::
                                             JSRef XPathResult -> IO Word
ghcjs_dom_xpath_result_get_snapshot_length = undefined
#endif
 
xPathResultGetSnapshotLength ::
                             (IsXPathResult self) => self -> IO Word
xPathResultGetSnapshotLength self
  = ghcjs_dom_xpath_result_get_snapshot_length
      (unXPathResult (toXPathResult self))
#else
module GHCJS.DOM.XPathResult (
  module Graphics.UI.Gtk.WebKit.DOM.XPathResult
  ) where
import Graphics.UI.Gtk.WebKit.DOM.XPathResult
#endif
