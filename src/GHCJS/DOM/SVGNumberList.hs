{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGNumberList
       (ghcjs_dom_svg_number_list_clear, svgNumberListClear,
        ghcjs_dom_svg_number_list_initialize, svgNumberListInitialize,
        ghcjs_dom_svg_number_list_get_item, svgNumberListGetItem,
        ghcjs_dom_svg_number_list_insert_item_before,
        svgNumberListInsertItemBefore,
        ghcjs_dom_svg_number_list_replace_item, svgNumberListReplaceItem,
        ghcjs_dom_svg_number_list_remove_item, svgNumberListRemoveItem,
        ghcjs_dom_svg_number_list_append_item, svgNumberListAppendItem,
        ghcjs_dom_svg_number_list_get_number_of_items,
        svgNumberListGetNumberOfItems, SVGNumberList, IsSVGNumberList,
        castToSVGNumberList, gTypeSVGNumberList, toSVGNumberList)
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
        ghcjs_dom_svg_number_list_clear :: JSRef SVGNumberList -> IO ()
 
svgNumberListClear :: (IsSVGNumberList self) => self -> IO ()
svgNumberListClear self
  = ghcjs_dom_svg_number_list_clear
      (unSVGNumberList (toSVGNumberList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        ghcjs_dom_svg_number_list_initialize ::
        JSRef SVGNumberList -> JSRef SVGNumber -> IO (JSRef SVGNumber)
 
svgNumberListInitialize ::
                        (IsSVGNumberList self, IsSVGNumber item) =>
                          self -> Maybe item -> IO (Maybe SVGNumber)
svgNumberListInitialize self item
  = fmap SVGNumber . maybeJSNull <$>
      (ghcjs_dom_svg_number_list_initialize
         (unSVGNumberList (toSVGNumberList self))
         (maybe jsNull (unSVGNumber . toSVGNumber) item))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        ghcjs_dom_svg_number_list_get_item ::
        JSRef SVGNumberList -> Word -> IO (JSRef SVGNumber)
 
svgNumberListGetItem ::
                     (IsSVGNumberList self) => self -> Word -> IO (Maybe SVGNumber)
svgNumberListGetItem self index
  = fmap SVGNumber . maybeJSNull <$>
      (ghcjs_dom_svg_number_list_get_item
         (unSVGNumberList (toSVGNumberList self))
         index)
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        ghcjs_dom_svg_number_list_insert_item_before ::
        JSRef SVGNumberList ->
          JSRef SVGNumber -> Word -> IO (JSRef SVGNumber)
 
svgNumberListInsertItemBefore ::
                              (IsSVGNumberList self, IsSVGNumber item) =>
                                self -> Maybe item -> Word -> IO (Maybe SVGNumber)
svgNumberListInsertItemBefore self item index
  = fmap SVGNumber . maybeJSNull <$>
      (ghcjs_dom_svg_number_list_insert_item_before
         (unSVGNumberList (toSVGNumberList self))
         (maybe jsNull (unSVGNumber . toSVGNumber) item)
         index)
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        ghcjs_dom_svg_number_list_replace_item ::
        JSRef SVGNumberList ->
          JSRef SVGNumber -> Word -> IO (JSRef SVGNumber)
 
svgNumberListReplaceItem ::
                         (IsSVGNumberList self, IsSVGNumber item) =>
                           self -> Maybe item -> Word -> IO (Maybe SVGNumber)
svgNumberListReplaceItem self item index
  = fmap SVGNumber . maybeJSNull <$>
      (ghcjs_dom_svg_number_list_replace_item
         (unSVGNumberList (toSVGNumberList self))
         (maybe jsNull (unSVGNumber . toSVGNumber) item)
         index)
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        ghcjs_dom_svg_number_list_remove_item ::
        JSRef SVGNumberList -> Word -> IO (JSRef SVGNumber)
 
svgNumberListRemoveItem ::
                        (IsSVGNumberList self) => self -> Word -> IO (Maybe SVGNumber)
svgNumberListRemoveItem self index
  = fmap SVGNumber . maybeJSNull <$>
      (ghcjs_dom_svg_number_list_remove_item
         (unSVGNumberList (toSVGNumberList self))
         index)
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        ghcjs_dom_svg_number_list_append_item ::
        JSRef SVGNumberList -> JSRef SVGNumber -> IO (JSRef SVGNumber)
 
svgNumberListAppendItem ::
                        (IsSVGNumberList self, IsSVGNumber item) =>
                          self -> Maybe item -> IO (Maybe SVGNumber)
svgNumberListAppendItem self item
  = fmap SVGNumber . maybeJSNull <$>
      (ghcjs_dom_svg_number_list_append_item
         (unSVGNumberList (toSVGNumberList self))
         (maybe jsNull (unSVGNumber . toSVGNumber) item))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        ghcjs_dom_svg_number_list_get_number_of_items ::
        JSRef SVGNumberList -> IO Word
 
svgNumberListGetNumberOfItems ::
                              (IsSVGNumberList self) => self -> IO Word
svgNumberListGetNumberOfItems self
  = ghcjs_dom_svg_number_list_get_number_of_items
      (unSVGNumberList (toSVGNumberList self))
#else
module GHCJS.DOM.SVGNumberList (
  module Graphics.UI.Gtk.WebKit.DOM.SVGNumberList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGNumberList
#endif
