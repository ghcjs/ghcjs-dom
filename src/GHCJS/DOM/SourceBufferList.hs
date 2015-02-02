{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SourceBufferList
       (ghcjs_dom_source_buffer_list_item, sourceBufferListItem,
        ghcjs_dom_source_buffer_list_get_length, sourceBufferListGetLength,
        SourceBufferList, IsSourceBufferList, castToSourceBufferList,
        gTypeSourceBufferList, toSourceBufferList)
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
        ghcjs_dom_source_buffer_list_item ::
        JSRef SourceBufferList -> Word -> IO (JSRef SourceBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.item Mozilla SourceBufferList.item documentation> 
sourceBufferListItem ::
                     (IsSourceBufferList self) =>
                       self -> Word -> IO (Maybe SourceBuffer)
sourceBufferListItem self index
  = (ghcjs_dom_source_buffer_list_item
       (unSourceBufferList (toSourceBufferList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_source_buffer_list_get_length ::
        JSRef SourceBufferList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.length Mozilla SourceBufferList.length documentation> 
sourceBufferListGetLength ::
                          (IsSourceBufferList self) => self -> IO Word
sourceBufferListGetLength self
  = ghcjs_dom_source_buffer_list_get_length
      (unSourceBufferList (toSourceBufferList self))
#else
module GHCJS.DOM.SourceBufferList (
  ) where
#endif
