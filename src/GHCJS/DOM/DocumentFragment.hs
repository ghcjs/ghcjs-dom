{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DocumentFragment
       (ghcjs_dom_document_fragment_query_selector,
        documentFragmentQuerySelector,
        ghcjs_dom_document_fragment_query_selector_all,
        documentFragmentQuerySelectorAll, DocumentFragment,
        IsDocumentFragment, castToDocumentFragment, gTypeDocumentFragment,
        toDocumentFragment)
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
foreign import javascript unsafe "$1[\"querySelector\"]($2)"
        ghcjs_dom_document_fragment_query_selector ::
        JSRef DocumentFragment -> JSString -> IO (JSRef Element)
#else 
ghcjs_dom_document_fragment_query_selector ::
                                             JSRef DocumentFragment ->
                                               JSString -> IO (JSRef Element)
ghcjs_dom_document_fragment_query_selector = undefined
#endif
 
documentFragmentQuerySelector ::
                              (IsDocumentFragment self, ToJSString selectors) =>
                                self -> selectors -> IO (Maybe Element)
documentFragmentQuerySelector self selectors
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_document_fragment_query_selector
         (unDocumentFragment (toDocumentFragment self))
         (toJSString selectors))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        ghcjs_dom_document_fragment_query_selector_all ::
        JSRef DocumentFragment -> JSString -> IO (JSRef NodeList)
#else 
ghcjs_dom_document_fragment_query_selector_all ::
                                                 JSRef DocumentFragment ->
                                                   JSString -> IO (JSRef NodeList)
ghcjs_dom_document_fragment_query_selector_all = undefined
#endif
 
documentFragmentQuerySelectorAll ::
                                 (IsDocumentFragment self, ToJSString selectors) =>
                                   self -> selectors -> IO (Maybe NodeList)
documentFragmentQuerySelectorAll self selectors
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_document_fragment_query_selector_all
         (unDocumentFragment (toDocumentFragment self))
         (toJSString selectors))
#else
module GHCJS.DOM.DocumentFragment (
  module Graphics.UI.Gtk.WebKit.DOM.DocumentFragment
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DocumentFragment
#endif
