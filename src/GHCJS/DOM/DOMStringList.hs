{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMStringList
       (ghcjs_dom_dom_string_list_item, domStringListItem,
        ghcjs_dom_dom_string_list_contains, domStringListContains,
        ghcjs_dom_dom_string_list_get_length, domStringListGetLength,
        DOMStringList, IsDOMStringList, castToDOMStringList,
        gTypeDOMStringList, toDOMStringList)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_dom_string_list_item ::
        JSRef DOMStringList -> Word -> IO JSString
 
domStringListItem ::
                  (IsDOMStringList self, FromJSString result) =>
                    self -> Word -> IO result
domStringListItem self index
  = fromJSString <$>
      (ghcjs_dom_dom_string_list_item
         (unDOMStringList (toDOMStringList self))
         index)
 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_string_list_contains ::
        JSRef DOMStringList -> JSString -> IO Bool
 
domStringListContains ::
                      (IsDOMStringList self, ToJSString string) =>
                        self -> string -> IO Bool
domStringListContains self string
  = ghcjs_dom_dom_string_list_contains
      (unDOMStringList (toDOMStringList self))
      (toJSString string)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_string_list_get_length ::
        JSRef DOMStringList -> IO Word
 
domStringListGetLength :: (IsDOMStringList self) => self -> IO Word
domStringListGetLength self
  = ghcjs_dom_dom_string_list_get_length
      (unDOMStringList (toDOMStringList self))
#else
module GHCJS.DOM.DOMStringList (
  module Graphics.UI.Gtk.WebKit.DOM.DOMStringList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMStringList
#endif
