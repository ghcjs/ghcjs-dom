{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DocumentFragment
       (webkit_dom_document_fragment_query_selector,
        documentFragmentQuerySelector,
        webkit_dom_document_fragment_query_selector_all,
        documentFragmentQuerySelectorAll)
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
        webkit_dom_document_fragment_query_selector ::
        JSRef DocumentFragment -> JSString -> IO (JSRef Element)
#else 
webkit_dom_document_fragment_query_selector ::
                                              JSRef DocumentFragment ->
                                                JSString -> IO (JSRef Element)
webkit_dom_document_fragment_query_selector = undefined
#endif
 
documentFragmentQuerySelector ::
                              (DocumentFragmentClass self, ToJSString selectors) =>
                                self -> selectors -> IO (Maybe Element)
documentFragmentQuerySelector self selectors
  = fmap Element . maybeJSNull <$>
      (webkit_dom_document_fragment_query_selector
         (unDocumentFragment (toDocumentFragment self))
         (toJSString selectors))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        webkit_dom_document_fragment_query_selector_all ::
        JSRef DocumentFragment -> JSString -> IO (JSRef NodeList)
#else 
webkit_dom_document_fragment_query_selector_all ::
                                                  JSRef DocumentFragment ->
                                                    JSString -> IO (JSRef NodeList)
webkit_dom_document_fragment_query_selector_all = undefined
#endif
 
documentFragmentQuerySelectorAll ::
                                 (DocumentFragmentClass self, ToJSString selectors) =>
                                   self -> selectors -> IO (Maybe NodeList)
documentFragmentQuerySelectorAll self selectors
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_document_fragment_query_selector_all
         (unDocumentFragment (toDocumentFragment self))
         (toJSString selectors))