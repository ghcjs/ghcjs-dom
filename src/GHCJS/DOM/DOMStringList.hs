{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DOMStringList
       (webkit_dom_dom_string_list_item, domStringListItem,
        webkit_dom_dom_string_list_contains, domStringListContains,
        webkit_dom_dom_string_list_get_length, domStringListGetLength)
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
        webkit_dom_dom_string_list_item ::
        JSRef DOMStringList -> Word -> IO JSString
#else 
webkit_dom_dom_string_list_item ::
                                  JSRef DOMStringList -> Word -> IO JSString
webkit_dom_dom_string_list_item = undefined
#endif
 
domStringListItem ::
                  (DOMStringListClass self, FromJSString result) =>
                    self -> Word -> IO result
domStringListItem self index
  = fromJSString <$>
      (webkit_dom_dom_string_list_item
         (unDOMStringList (toDOMStringList self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"contains\"]($2)"
        webkit_dom_dom_string_list_contains ::
        JSRef DOMStringList -> JSString -> IO JSBool
#else 
webkit_dom_dom_string_list_contains ::
                                      JSRef DOMStringList -> JSString -> IO JSBool
webkit_dom_dom_string_list_contains = undefined
#endif
 
domStringListContains ::
                      (DOMStringListClass self, ToJSString string) =>
                        self -> string -> IO Bool
domStringListContains self string
  = fromJSBool <$>
      (webkit_dom_dom_string_list_contains
         (unDOMStringList (toDOMStringList self))
         (toJSString string))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_dom_string_list_get_length ::
        JSRef DOMStringList -> IO Word
#else 
webkit_dom_dom_string_list_get_length ::
                                        JSRef DOMStringList -> IO Word
webkit_dom_dom_string_list_get_length = undefined
#endif
 
domStringListGetLength ::
                       (DOMStringListClass self) => self -> IO Word
domStringListGetLength self
  = webkit_dom_dom_string_list_get_length
      (unDOMStringList (toDOMStringList self))