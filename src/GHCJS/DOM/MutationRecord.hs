{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MutationRecord
       (ghcjs_dom_mutation_record_get_target, mutationRecordGetTarget,
        ghcjs_dom_mutation_record_get_added_nodes,
        mutationRecordGetAddedNodes,
        ghcjs_dom_mutation_record_get_removed_nodes,
        mutationRecordGetRemovedNodes,
        ghcjs_dom_mutation_record_get_previous_sibling,
        mutationRecordGetPreviousSibling,
        ghcjs_dom_mutation_record_get_next_sibling,
        mutationRecordGetNextSibling,
        ghcjs_dom_mutation_record_get_attribute_name,
        mutationRecordGetAttributeName,
        ghcjs_dom_mutation_record_get_attribute_namespace,
        mutationRecordGetAttributeNamespace,
        ghcjs_dom_mutation_record_get_old_value, mutationRecordGetOldValue,
        MutationRecord, IsMutationRecord, castToMutationRecord,
        gTypeMutationRecord, toMutationRecord)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_mutation_record_get_target ::
        JSRef MutationRecord -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.target Mozilla MutationRecord.target documentation> 
mutationRecordGetTarget ::
                        (IsMutationRecord self) => self -> IO (Maybe Node)
mutationRecordGetTarget self
  = (ghcjs_dom_mutation_record_get_target
       (unMutationRecord (toMutationRecord self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"addedNodes\"]"
        ghcjs_dom_mutation_record_get_added_nodes ::
        JSRef MutationRecord -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.addedNodes Mozilla MutationRecord.addedNodes documentation> 
mutationRecordGetAddedNodes ::
                            (IsMutationRecord self) => self -> IO (Maybe NodeList)
mutationRecordGetAddedNodes self
  = (ghcjs_dom_mutation_record_get_added_nodes
       (unMutationRecord (toMutationRecord self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"removedNodes\"]"
        ghcjs_dom_mutation_record_get_removed_nodes ::
        JSRef MutationRecord -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.removedNodes Mozilla MutationRecord.removedNodes documentation> 
mutationRecordGetRemovedNodes ::
                              (IsMutationRecord self) => self -> IO (Maybe NodeList)
mutationRecordGetRemovedNodes self
  = (ghcjs_dom_mutation_record_get_removed_nodes
       (unMutationRecord (toMutationRecord self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"previousSibling\"]"
        ghcjs_dom_mutation_record_get_previous_sibling ::
        JSRef MutationRecord -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.previousSibling Mozilla MutationRecord.previousSibling documentation> 
mutationRecordGetPreviousSibling ::
                                 (IsMutationRecord self) => self -> IO (Maybe Node)
mutationRecordGetPreviousSibling self
  = (ghcjs_dom_mutation_record_get_previous_sibling
       (unMutationRecord (toMutationRecord self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"nextSibling\"]"
        ghcjs_dom_mutation_record_get_next_sibling ::
        JSRef MutationRecord -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.nextSibling Mozilla MutationRecord.nextSibling documentation> 
mutationRecordGetNextSibling ::
                             (IsMutationRecord self) => self -> IO (Maybe Node)
mutationRecordGetNextSibling self
  = (ghcjs_dom_mutation_record_get_next_sibling
       (unMutationRecord (toMutationRecord self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"attributeName\"]"
        ghcjs_dom_mutation_record_get_attribute_name ::
        JSRef MutationRecord -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeName Mozilla MutationRecord.attributeName documentation> 
mutationRecordGetAttributeName ::
                               (IsMutationRecord self, FromJSString result) => self -> IO result
mutationRecordGetAttributeName self
  = fromJSString <$>
      (ghcjs_dom_mutation_record_get_attribute_name
         (unMutationRecord (toMutationRecord self)))
 
foreign import javascript unsafe "$1[\"attributeNamespace\"]"
        ghcjs_dom_mutation_record_get_attribute_namespace ::
        JSRef MutationRecord -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.attributeNamespace Mozilla MutationRecord.attributeNamespace documentation> 
mutationRecordGetAttributeNamespace ::
                                    (IsMutationRecord self, FromJSString result) =>
                                      self -> IO result
mutationRecordGetAttributeNamespace self
  = fromJSString <$>
      (ghcjs_dom_mutation_record_get_attribute_namespace
         (unMutationRecord (toMutationRecord self)))
 
foreign import javascript unsafe "$1[\"oldValue\"]"
        ghcjs_dom_mutation_record_get_old_value ::
        JSRef MutationRecord -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord.oldValue Mozilla MutationRecord.oldValue documentation> 
mutationRecordGetOldValue ::
                          (IsMutationRecord self, FromJSString result) => self -> IO result
mutationRecordGetOldValue self
  = fromJSString <$>
      (ghcjs_dom_mutation_record_get_old_value
         (unMutationRecord (toMutationRecord self)))
#else
module GHCJS.DOM.MutationRecord (
  ) where
#endif
