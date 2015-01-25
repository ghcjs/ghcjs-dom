{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegList
       (ghcjs_dom_svg_path_seg_list_clear, svgPathSegListClear,
        ghcjs_dom_svg_path_seg_list_initialize, svgPathSegListInitialize,
        ghcjs_dom_svg_path_seg_list_get_item, svgPathSegListGetItem,
        ghcjs_dom_svg_path_seg_list_insert_item_before,
        svgPathSegListInsertItemBefore,
        ghcjs_dom_svg_path_seg_list_replace_item,
        svgPathSegListReplaceItem, ghcjs_dom_svg_path_seg_list_remove_item,
        svgPathSegListRemoveItem, ghcjs_dom_svg_path_seg_list_append_item,
        svgPathSegListAppendItem,
        ghcjs_dom_svg_path_seg_list_get_number_of_items,
        svgPathSegListGetNumberOfItems, SVGPathSegList, IsSVGPathSegList,
        castToSVGPathSegList, gTypeSVGPathSegList, toSVGPathSegList)
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
        ghcjs_dom_svg_path_seg_list_clear :: JSRef SVGPathSegList -> IO ()
 
svgPathSegListClear :: (IsSVGPathSegList self) => self -> IO ()
svgPathSegListClear self
  = ghcjs_dom_svg_path_seg_list_clear
      (unSVGPathSegList (toSVGPathSegList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        ghcjs_dom_svg_path_seg_list_initialize ::
        JSRef SVGPathSegList -> JSRef SVGPathSeg -> IO (JSRef SVGPathSeg)
 
svgPathSegListInitialize ::
                         (IsSVGPathSegList self, IsSVGPathSeg newItem) =>
                           self -> Maybe newItem -> IO (Maybe SVGPathSeg)
svgPathSegListInitialize self newItem
  = fmap SVGPathSeg . maybeJSNull <$>
      (ghcjs_dom_svg_path_seg_list_initialize
         (unSVGPathSegList (toSVGPathSegList self))
         (maybe jsNull (unSVGPathSeg . toSVGPathSeg) newItem))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        ghcjs_dom_svg_path_seg_list_get_item ::
        JSRef SVGPathSegList -> Word -> IO (JSRef SVGPathSeg)
 
svgPathSegListGetItem ::
                      (IsSVGPathSegList self) => self -> Word -> IO (Maybe SVGPathSeg)
svgPathSegListGetItem self index
  = fmap SVGPathSeg . maybeJSNull <$>
      (ghcjs_dom_svg_path_seg_list_get_item
         (unSVGPathSegList (toSVGPathSegList self))
         index)
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        ghcjs_dom_svg_path_seg_list_insert_item_before ::
        JSRef SVGPathSegList ->
          JSRef SVGPathSeg -> Word -> IO (JSRef SVGPathSeg)
 
svgPathSegListInsertItemBefore ::
                               (IsSVGPathSegList self, IsSVGPathSeg newItem) =>
                                 self -> Maybe newItem -> Word -> IO (Maybe SVGPathSeg)
svgPathSegListInsertItemBefore self newItem index
  = fmap SVGPathSeg . maybeJSNull <$>
      (ghcjs_dom_svg_path_seg_list_insert_item_before
         (unSVGPathSegList (toSVGPathSegList self))
         (maybe jsNull (unSVGPathSeg . toSVGPathSeg) newItem)
         index)
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        ghcjs_dom_svg_path_seg_list_replace_item ::
        JSRef SVGPathSegList ->
          JSRef SVGPathSeg -> Word -> IO (JSRef SVGPathSeg)
 
svgPathSegListReplaceItem ::
                          (IsSVGPathSegList self, IsSVGPathSeg newItem) =>
                            self -> Maybe newItem -> Word -> IO (Maybe SVGPathSeg)
svgPathSegListReplaceItem self newItem index
  = fmap SVGPathSeg . maybeJSNull <$>
      (ghcjs_dom_svg_path_seg_list_replace_item
         (unSVGPathSegList (toSVGPathSegList self))
         (maybe jsNull (unSVGPathSeg . toSVGPathSeg) newItem)
         index)
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        ghcjs_dom_svg_path_seg_list_remove_item ::
        JSRef SVGPathSegList -> Word -> IO (JSRef SVGPathSeg)
 
svgPathSegListRemoveItem ::
                         (IsSVGPathSegList self) => self -> Word -> IO (Maybe SVGPathSeg)
svgPathSegListRemoveItem self index
  = fmap SVGPathSeg . maybeJSNull <$>
      (ghcjs_dom_svg_path_seg_list_remove_item
         (unSVGPathSegList (toSVGPathSegList self))
         index)
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        ghcjs_dom_svg_path_seg_list_append_item ::
        JSRef SVGPathSegList -> JSRef SVGPathSeg -> IO (JSRef SVGPathSeg)
 
svgPathSegListAppendItem ::
                         (IsSVGPathSegList self, IsSVGPathSeg newItem) =>
                           self -> Maybe newItem -> IO (Maybe SVGPathSeg)
svgPathSegListAppendItem self newItem
  = fmap SVGPathSeg . maybeJSNull <$>
      (ghcjs_dom_svg_path_seg_list_append_item
         (unSVGPathSegList (toSVGPathSegList self))
         (maybe jsNull (unSVGPathSeg . toSVGPathSeg) newItem))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        ghcjs_dom_svg_path_seg_list_get_number_of_items ::
        JSRef SVGPathSegList -> IO Word
 
svgPathSegListGetNumberOfItems ::
                               (IsSVGPathSegList self) => self -> IO Word
svgPathSegListGetNumberOfItems self
  = ghcjs_dom_svg_path_seg_list_get_number_of_items
      (unSVGPathSegList (toSVGPathSegList self))
#else
module GHCJS.DOM.SVGPathSegList (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegList
#endif
