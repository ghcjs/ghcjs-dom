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

 
foreign import javascript unsafe "$1[\"clear\"]()"
        ghcjs_dom_svg_path_seg_list_clear :: JSRef SVGPathSegList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.clear Mozilla SVGPathSegList.clear documentation> 
svgPathSegListClear :: (IsSVGPathSegList self) => self -> IO ()
svgPathSegListClear self
  = ghcjs_dom_svg_path_seg_list_clear
      (unSVGPathSegList (toSVGPathSegList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        ghcjs_dom_svg_path_seg_list_initialize ::
        JSRef SVGPathSegList -> JSRef SVGPathSeg -> IO (JSRef SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.initialize Mozilla SVGPathSegList.initialize documentation> 
svgPathSegListInitialize ::
                         (IsSVGPathSegList self, IsSVGPathSeg newItem) =>
                           self -> Maybe newItem -> IO (Maybe SVGPathSeg)
svgPathSegListInitialize self newItem
  = (ghcjs_dom_svg_path_seg_list_initialize
       (unSVGPathSegList (toSVGPathSegList self))
       (maybe jsNull (unSVGPathSeg . toSVGPathSeg) newItem))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        ghcjs_dom_svg_path_seg_list_get_item ::
        JSRef SVGPathSegList -> Word -> IO (JSRef SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.item Mozilla SVGPathSegList.item documentation> 
svgPathSegListGetItem ::
                      (IsSVGPathSegList self) => self -> Word -> IO (Maybe SVGPathSeg)
svgPathSegListGetItem self index
  = (ghcjs_dom_svg_path_seg_list_get_item
       (unSVGPathSegList (toSVGPathSegList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        ghcjs_dom_svg_path_seg_list_insert_item_before ::
        JSRef SVGPathSegList ->
          JSRef SVGPathSeg -> Word -> IO (JSRef SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.insertItemBefore Mozilla SVGPathSegList.insertItemBefore documentation> 
svgPathSegListInsertItemBefore ::
                               (IsSVGPathSegList self, IsSVGPathSeg newItem) =>
                                 self -> Maybe newItem -> Word -> IO (Maybe SVGPathSeg)
svgPathSegListInsertItemBefore self newItem index
  = (ghcjs_dom_svg_path_seg_list_insert_item_before
       (unSVGPathSegList (toSVGPathSegList self))
       (maybe jsNull (unSVGPathSeg . toSVGPathSeg) newItem)
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        ghcjs_dom_svg_path_seg_list_replace_item ::
        JSRef SVGPathSegList ->
          JSRef SVGPathSeg -> Word -> IO (JSRef SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.replaceItem Mozilla SVGPathSegList.replaceItem documentation> 
svgPathSegListReplaceItem ::
                          (IsSVGPathSegList self, IsSVGPathSeg newItem) =>
                            self -> Maybe newItem -> Word -> IO (Maybe SVGPathSeg)
svgPathSegListReplaceItem self newItem index
  = (ghcjs_dom_svg_path_seg_list_replace_item
       (unSVGPathSegList (toSVGPathSegList self))
       (maybe jsNull (unSVGPathSeg . toSVGPathSeg) newItem)
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        ghcjs_dom_svg_path_seg_list_remove_item ::
        JSRef SVGPathSegList -> Word -> IO (JSRef SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.removeItem Mozilla SVGPathSegList.removeItem documentation> 
svgPathSegListRemoveItem ::
                         (IsSVGPathSegList self) => self -> Word -> IO (Maybe SVGPathSeg)
svgPathSegListRemoveItem self index
  = (ghcjs_dom_svg_path_seg_list_remove_item
       (unSVGPathSegList (toSVGPathSegList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        ghcjs_dom_svg_path_seg_list_append_item ::
        JSRef SVGPathSegList -> JSRef SVGPathSeg -> IO (JSRef SVGPathSeg)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.appendItem Mozilla SVGPathSegList.appendItem documentation> 
svgPathSegListAppendItem ::
                         (IsSVGPathSegList self, IsSVGPathSeg newItem) =>
                           self -> Maybe newItem -> IO (Maybe SVGPathSeg)
svgPathSegListAppendItem self newItem
  = (ghcjs_dom_svg_path_seg_list_append_item
       (unSVGPathSegList (toSVGPathSegList self))
       (maybe jsNull (unSVGPathSeg . toSVGPathSeg) newItem))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        ghcjs_dom_svg_path_seg_list_get_number_of_items ::
        JSRef SVGPathSegList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.numberOfItems Mozilla SVGPathSegList.numberOfItems documentation> 
svgPathSegListGetNumberOfItems ::
                               (IsSVGPathSegList self) => self -> IO Word
svgPathSegListGetNumberOfItems self
  = ghcjs_dom_svg_path_seg_list_get_number_of_items
      (unSVGPathSegList (toSVGPathSegList self))
#else
module GHCJS.DOM.SVGPathSegList (
  ) where
#endif
