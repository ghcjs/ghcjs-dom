{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGStringList
       (ghcjs_dom_svg_string_list_clear, svgStringListClear,
        ghcjs_dom_svg_string_list_initialize, svgStringListInitialize,
        ghcjs_dom_svg_string_list_get_item, svgStringListGetItem,
        ghcjs_dom_svg_string_list_insert_item_before,
        svgStringListInsertItemBefore,
        ghcjs_dom_svg_string_list_replace_item, svgStringListReplaceItem,
        ghcjs_dom_svg_string_list_remove_item, svgStringListRemoveItem,
        ghcjs_dom_svg_string_list_append_item, svgStringListAppendItem,
        ghcjs_dom_svg_string_list_get_number_of_items,
        svgStringListGetNumberOfItems, SVGStringList, IsSVGStringList,
        castToSVGStringList, gTypeSVGStringList, toSVGStringList)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"clear\"]()"
        ghcjs_dom_svg_string_list_clear :: JSRef SVGStringList -> IO ()
 
svgStringListClear :: (IsSVGStringList self) => self -> IO ()
svgStringListClear self
  = ghcjs_dom_svg_string_list_clear
      (unSVGStringList (toSVGStringList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        ghcjs_dom_svg_string_list_initialize ::
        JSRef SVGStringList -> JSString -> IO JSString
 
svgStringListInitialize ::
                        (IsSVGStringList self, ToJSString item, FromJSString result) =>
                          self -> item -> IO result
svgStringListInitialize self item
  = fromJSString <$>
      (ghcjs_dom_svg_string_list_initialize
         (unSVGStringList (toSVGStringList self))
         (toJSString item))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        ghcjs_dom_svg_string_list_get_item ::
        JSRef SVGStringList -> Word -> IO JSString
 
svgStringListGetItem ::
                     (IsSVGStringList self, FromJSString result) =>
                       self -> Word -> IO result
svgStringListGetItem self index
  = fromJSString <$>
      (ghcjs_dom_svg_string_list_get_item
         (unSVGStringList (toSVGStringList self))
         index)
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        ghcjs_dom_svg_string_list_insert_item_before ::
        JSRef SVGStringList -> JSString -> Word -> IO JSString
 
svgStringListInsertItemBefore ::
                              (IsSVGStringList self, ToJSString item, FromJSString result) =>
                                self -> item -> Word -> IO result
svgStringListInsertItemBefore self item index
  = fromJSString <$>
      (ghcjs_dom_svg_string_list_insert_item_before
         (unSVGStringList (toSVGStringList self))
         (toJSString item)
         index)
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        ghcjs_dom_svg_string_list_replace_item ::
        JSRef SVGStringList -> JSString -> Word -> IO JSString
 
svgStringListReplaceItem ::
                         (IsSVGStringList self, ToJSString item, FromJSString result) =>
                           self -> item -> Word -> IO result
svgStringListReplaceItem self item index
  = fromJSString <$>
      (ghcjs_dom_svg_string_list_replace_item
         (unSVGStringList (toSVGStringList self))
         (toJSString item)
         index)
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        ghcjs_dom_svg_string_list_remove_item ::
        JSRef SVGStringList -> Word -> IO JSString
 
svgStringListRemoveItem ::
                        (IsSVGStringList self, FromJSString result) =>
                          self -> Word -> IO result
svgStringListRemoveItem self index
  = fromJSString <$>
      (ghcjs_dom_svg_string_list_remove_item
         (unSVGStringList (toSVGStringList self))
         index)
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        ghcjs_dom_svg_string_list_append_item ::
        JSRef SVGStringList -> JSString -> IO JSString
 
svgStringListAppendItem ::
                        (IsSVGStringList self, ToJSString item, FromJSString result) =>
                          self -> item -> IO result
svgStringListAppendItem self item
  = fromJSString <$>
      (ghcjs_dom_svg_string_list_append_item
         (unSVGStringList (toSVGStringList self))
         (toJSString item))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        ghcjs_dom_svg_string_list_get_number_of_items ::
        JSRef SVGStringList -> IO Word
 
svgStringListGetNumberOfItems ::
                              (IsSVGStringList self) => self -> IO Word
svgStringListGetNumberOfItems self
  = ghcjs_dom_svg_string_list_get_number_of_items
      (unSVGStringList (toSVGStringList self))
#else
module GHCJS.DOM.SVGStringList (
  module Graphics.UI.Gtk.WebKit.DOM.SVGStringList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGStringList
#endif
