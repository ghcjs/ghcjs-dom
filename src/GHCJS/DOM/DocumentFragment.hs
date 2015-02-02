{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DocumentFragment
       (ghcjs_dom_document_fragment_new, documentFragmentNew,
        ghcjs_dom_document_fragment_query_selector,
        documentFragmentQuerySelector,
        ghcjs_dom_document_fragment_query_selector_all,
        documentFragmentQuerySelectorAll, DocumentFragment,
        IsDocumentFragment, castToDocumentFragment, gTypeDocumentFragment,
        toDocumentFragment)
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

 
foreign import javascript unsafe
        "new window[\"DocumentFragment\"]()"
        ghcjs_dom_document_fragment_new :: IO (JSRef DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment Mozilla DocumentFragment documentation> 
documentFragmentNew :: IO DocumentFragment
documentFragmentNew
  = ghcjs_dom_document_fragment_new >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"querySelector\"]($2)"
        ghcjs_dom_document_fragment_query_selector ::
        JSRef DocumentFragment -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelector Mozilla DocumentFragment.querySelector documentation> 
documentFragmentQuerySelector ::
                              (IsDocumentFragment self, ToJSString selectors) =>
                                self -> selectors -> IO (Maybe Element)
documentFragmentQuerySelector self selectors
  = (ghcjs_dom_document_fragment_query_selector
       (unDocumentFragment (toDocumentFragment self))
       (toJSString selectors))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        ghcjs_dom_document_fragment_query_selector_all ::
        JSRef DocumentFragment -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelectorAll Mozilla DocumentFragment.querySelectorAll documentation> 
documentFragmentQuerySelectorAll ::
                                 (IsDocumentFragment self, ToJSString selectors) =>
                                   self -> selectors -> IO (Maybe NodeList)
documentFragmentQuerySelectorAll self selectors
  = (ghcjs_dom_document_fragment_query_selector_all
       (unDocumentFragment (toDocumentFragment self))
       (toJSString selectors))
      >>= fromJSRef
#else
module GHCJS.DOM.DocumentFragment (
  ) where
#endif
