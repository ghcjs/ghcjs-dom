{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DOMStringList
       (ghcjs_dom_dom_string_list_item, domStringListItem,
        ghcjs_dom_dom_string_list_contains, domStringListContains,
        ghcjs_dom_dom_string_list_get_length, domStringListGetLength)
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
        ghcjs_dom_dom_string_list_item ::
        JSRef DOMStringList -> Word -> IO JSString
#else 
ghcjs_dom_dom_string_list_item ::
                                 JSRef DOMStringList -> Word -> IO JSString
ghcjs_dom_dom_string_list_item = undefined
#endif
 
domStringListItem ::
                  (IsDOMStringList self, FromJSString result) =>
                    self -> Word -> IO result
domStringListItem self index
  = fromJSString <$>
      (ghcjs_dom_dom_string_list_item
         (unDOMStringList (toDOMStringList self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_string_list_contains ::
        JSRef DOMStringList -> JSString -> IO Bool
#else 
ghcjs_dom_dom_string_list_contains ::
                                     JSRef DOMStringList -> JSString -> IO Bool
ghcjs_dom_dom_string_list_contains = undefined
#endif
 
domStringListContains ::
                      (IsDOMStringList self, ToJSString string) =>
                        self -> string -> IO Bool
domStringListContains self string
  = ghcjs_dom_dom_string_list_contains
      (unDOMStringList (toDOMStringList self))
      (toJSString string)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_string_list_get_length ::
        JSRef DOMStringList -> IO Word
#else 
ghcjs_dom_dom_string_list_get_length ::
                                       JSRef DOMStringList -> IO Word
ghcjs_dom_dom_string_list_get_length = undefined
#endif
 
domStringListGetLength :: (IsDOMStringList self) => self -> IO Word
domStringListGetLength self
  = ghcjs_dom_dom_string_list_get_length
      (unDOMStringList (toDOMStringList self))