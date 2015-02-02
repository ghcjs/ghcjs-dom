{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PerformanceEntryList
       (ghcjs_dom_performance_entry_list_item, performanceEntryListItem,
        ghcjs_dom_performance_entry_list_get_length,
        performanceEntryListGetLength, PerformanceEntryList,
        IsPerformanceEntryList, castToPerformanceEntryList,
        gTypePerformanceEntryList, toPerformanceEntryList)
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

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_performance_entry_list_item ::
        JSRef PerformanceEntryList -> Word -> IO (JSRef PerformanceEntry)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntryList.item Mozilla PerformanceEntryList.item documentation> 
performanceEntryListItem ::
                         (IsPerformanceEntryList self) =>
                           self -> Word -> IO (Maybe PerformanceEntry)
performanceEntryListItem self index
  = (ghcjs_dom_performance_entry_list_item
       (unPerformanceEntryList (toPerformanceEntryList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_performance_entry_list_get_length ::
        JSRef PerformanceEntryList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntryList.length Mozilla PerformanceEntryList.length documentation> 
performanceEntryListGetLength ::
                              (IsPerformanceEntryList self) => self -> IO Word
performanceEntryListGetLength self
  = ghcjs_dom_performance_entry_list_get_length
      (unPerformanceEntryList (toPerformanceEntryList self))
#else
module GHCJS.DOM.PerformanceEntryList (
  ) where
#endif
