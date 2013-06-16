{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.XPathResult
       (webkit_dom_xpath_result_iterate_next, xPathResultIterateNext,
        webkit_dom_xpath_result_snapshot_item, xPathResultSnapshotItem,
        cANY_TYPE, cNUMBER_TYPE, cSTRING_TYPE, cBOOLEAN_TYPE,
        cUNORDERED_NODE_ITERATOR_TYPE, cORDERED_NODE_ITERATOR_TYPE,
        cUNORDERED_NODE_SNAPSHOT_TYPE, cORDERED_NODE_SNAPSHOT_TYPE,
        cANY_UNORDERED_NODE_TYPE, cFIRST_ORDERED_NODE_TYPE,
        webkit_dom_xpath_result_get_result_type, xPathResultGetResultType,
        webkit_dom_xpath_result_get_number_value,
        xPathResultGetNumberValue,
        webkit_dom_xpath_result_get_string_value,
        xPathResultGetStringValue,
        webkit_dom_xpath_result_get_boolean_value,
        xPathResultGetBooleanValue,
        webkit_dom_xpath_result_get_single_node_value,
        xPathResultGetSingleNodeValue,
        webkit_dom_xpath_result_get_invalid_iterator_state,
        xPathResultGetInvalidIteratorState,
        webkit_dom_xpath_result_get_snapshot_length,
        xPathResultGetSnapshotLength)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"iterateNext\"]()"
        webkit_dom_xpath_result_iterate_next ::
        JSRef XPathResult -> IO (JSRef Node)
#else 
webkit_dom_xpath_result_iterate_next ::
                                       JSRef XPathResult -> IO (JSRef Node)
webkit_dom_xpath_result_iterate_next = undefined
#endif
 
xPathResultIterateNext ::
                       (XPathResultClass self) => self -> IO (Maybe Node)
xPathResultIterateNext self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_xpath_result_iterate_next
         (unXPathResult (toXPathResult self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"snapshotItem\"]($2)"
        webkit_dom_xpath_result_snapshot_item ::
        JSRef XPathResult -> Word -> IO (JSRef Node)
#else 
webkit_dom_xpath_result_snapshot_item ::
                                        JSRef XPathResult -> Word -> IO (JSRef Node)
webkit_dom_xpath_result_snapshot_item = undefined
#endif
 
xPathResultSnapshotItem ::
                        (XPathResultClass self) => self -> Word -> IO (Maybe Node)
xPathResultSnapshotItem self index
  = fmap Node . maybeJSNull <$>
      (webkit_dom_xpath_result_snapshot_item
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


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"resultType\"]"
        webkit_dom_xpath_result_get_result_type ::
        JSRef XPathResult -> IO Word
#else 
webkit_dom_xpath_result_get_result_type ::
                                          JSRef XPathResult -> IO Word
webkit_dom_xpath_result_get_result_type = undefined
#endif
 
xPathResultGetResultType ::
                         (XPathResultClass self) => self -> IO Word
xPathResultGetResultType self
  = webkit_dom_xpath_result_get_result_type
      (unXPathResult (toXPathResult self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"numberValue\"]"
        webkit_dom_xpath_result_get_number_value ::
        JSRef XPathResult -> IO Double
#else 
webkit_dom_xpath_result_get_number_value ::
                                           JSRef XPathResult -> IO Double
webkit_dom_xpath_result_get_number_value = undefined
#endif
 
xPathResultGetNumberValue ::
                          (XPathResultClass self) => self -> IO Double
xPathResultGetNumberValue self
  = webkit_dom_xpath_result_get_number_value
      (unXPathResult (toXPathResult self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"stringValue\"]"
        webkit_dom_xpath_result_get_string_value ::
        JSRef XPathResult -> IO JSString
#else 
webkit_dom_xpath_result_get_string_value ::
                                           JSRef XPathResult -> IO JSString
webkit_dom_xpath_result_get_string_value = undefined
#endif
 
xPathResultGetStringValue ::
                          (XPathResultClass self, FromJSString result) => self -> IO result
xPathResultGetStringValue self
  = fromJSString <$>
      (webkit_dom_xpath_result_get_string_value
         (unXPathResult (toXPathResult self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"booleanValue\"]"
        webkit_dom_xpath_result_get_boolean_value ::
        JSRef XPathResult -> IO JSBool
#else 
webkit_dom_xpath_result_get_boolean_value ::
                                            JSRef XPathResult -> IO JSBool
webkit_dom_xpath_result_get_boolean_value = undefined
#endif
 
xPathResultGetBooleanValue ::
                           (XPathResultClass self) => self -> IO Bool
xPathResultGetBooleanValue self
  = fromJSBool <$>
      (webkit_dom_xpath_result_get_boolean_value
         (unXPathResult (toXPathResult self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"singleNodeValue\"]"
        webkit_dom_xpath_result_get_single_node_value ::
        JSRef XPathResult -> IO (JSRef Node)
#else 
webkit_dom_xpath_result_get_single_node_value ::
                                                JSRef XPathResult -> IO (JSRef Node)
webkit_dom_xpath_result_get_single_node_value = undefined
#endif
 
xPathResultGetSingleNodeValue ::
                              (XPathResultClass self) => self -> IO (Maybe Node)
xPathResultGetSingleNodeValue self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_xpath_result_get_single_node_value
         (unXPathResult (toXPathResult self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"invalidIteratorState\"]"
        webkit_dom_xpath_result_get_invalid_iterator_state ::
        JSRef XPathResult -> IO JSBool
#else 
webkit_dom_xpath_result_get_invalid_iterator_state ::
                                                     JSRef XPathResult -> IO JSBool
webkit_dom_xpath_result_get_invalid_iterator_state = undefined
#endif
 
xPathResultGetInvalidIteratorState ::
                                   (XPathResultClass self) => self -> IO Bool
xPathResultGetInvalidIteratorState self
  = fromJSBool <$>
      (webkit_dom_xpath_result_get_invalid_iterator_state
         (unXPathResult (toXPathResult self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"snapshotLength\"]"
        webkit_dom_xpath_result_get_snapshot_length ::
        JSRef XPathResult -> IO Word
#else 
webkit_dom_xpath_result_get_snapshot_length ::
                                              JSRef XPathResult -> IO Word
webkit_dom_xpath_result_get_snapshot_length = undefined
#endif
 
xPathResultGetSnapshotLength ::
                             (XPathResultClass self) => self -> IO Word
xPathResultGetSnapshotLength self
  = webkit_dom_xpath_result_get_snapshot_length
      (unXPathResult (toXPathResult self))