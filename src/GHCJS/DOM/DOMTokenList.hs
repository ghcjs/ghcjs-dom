{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DOMTokenList
       (webkit_dom_dom_token_list_item, domTokenListItem,
        webkit_dom_dom_token_list_contains, domTokenListContains,
        webkit_dom_dom_token_list_add, domTokenListAdd,
        webkit_dom_dom_token_list_remove, domTokenListRemove,
        webkit_dom_dom_token_list_toggle, domTokenListToggle,
        webkit_dom_dom_token_list_get_length, domTokenListGetLength)
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
foreign import javascript unsafe "$1[\"item\"]($2)"
        webkit_dom_dom_token_list_item ::
        JSRef DOMTokenList -> Word -> IO JSString
#else 
webkit_dom_dom_token_list_item ::
                                 JSRef DOMTokenList -> Word -> IO JSString
webkit_dom_dom_token_list_item = undefined
#endif
 
domTokenListItem ::
                 (DOMTokenListClass self, FromJSString result) =>
                   self -> Word -> IO result
domTokenListItem self index
  = fromJSString <$>
      (webkit_dom_dom_token_list_item
         (unDOMTokenList (toDOMTokenList self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        webkit_dom_dom_token_list_contains ::
        JSRef DOMTokenList -> JSString -> IO JSBool
#else 
webkit_dom_dom_token_list_contains ::
                                     JSRef DOMTokenList -> JSString -> IO JSBool
webkit_dom_dom_token_list_contains = undefined
#endif
 
domTokenListContains ::
                     (DOMTokenListClass self, ToJSString token) =>
                       self -> token -> IO Bool
domTokenListContains self token
  = fromJSBool <$>
      (webkit_dom_dom_token_list_contains
         (unDOMTokenList (toDOMTokenList self))
         (toJSString token))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"add\"]($2)"
        webkit_dom_dom_token_list_add ::
        JSRef DOMTokenList -> JSString -> IO ()
#else 
webkit_dom_dom_token_list_add ::
                                JSRef DOMTokenList -> JSString -> IO ()
webkit_dom_dom_token_list_add = undefined
#endif
 
domTokenListAdd ::
                (DOMTokenListClass self, ToJSString token) =>
                  self -> token -> IO ()
domTokenListAdd self token
  = webkit_dom_dom_token_list_add
      (unDOMTokenList (toDOMTokenList self))
      (toJSString token)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"remove\"]($2)"
        webkit_dom_dom_token_list_remove ::
        JSRef DOMTokenList -> JSString -> IO ()
#else 
webkit_dom_dom_token_list_remove ::
                                   JSRef DOMTokenList -> JSString -> IO ()
webkit_dom_dom_token_list_remove = undefined
#endif
 
domTokenListRemove ::
                   (DOMTokenListClass self, ToJSString token) =>
                     self -> token -> IO ()
domTokenListRemove self token
  = webkit_dom_dom_token_list_remove
      (unDOMTokenList (toDOMTokenList self))
      (toJSString token)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"toggle\"]($2) ? 1 : 0)"
        webkit_dom_dom_token_list_toggle ::
        JSRef DOMTokenList -> JSString -> IO JSBool
#else 
webkit_dom_dom_token_list_toggle ::
                                   JSRef DOMTokenList -> JSString -> IO JSBool
webkit_dom_dom_token_list_toggle = undefined
#endif
 
domTokenListToggle ::
                   (DOMTokenListClass self, ToJSString token) =>
                     self -> token -> IO Bool
domTokenListToggle self token
  = fromJSBool <$>
      (webkit_dom_dom_token_list_toggle
         (unDOMTokenList (toDOMTokenList self))
         (toJSString token))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_dom_token_list_get_length ::
        JSRef DOMTokenList -> IO Word
#else 
webkit_dom_dom_token_list_get_length ::
                                       JSRef DOMTokenList -> IO Word
webkit_dom_dom_token_list_get_length = undefined
#endif
 
domTokenListGetLength ::
                      (DOMTokenListClass self) => self -> IO Word
domTokenListGetLength self
  = webkit_dom_dom_token_list_get_length
      (unDOMTokenList (toDOMTokenList self))