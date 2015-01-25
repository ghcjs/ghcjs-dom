{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPointList
       (ghcjs_dom_svg_point_list_clear, svgPointListClear,
        ghcjs_dom_svg_point_list_initialize, svgPointListInitialize,
        ghcjs_dom_svg_point_list_get_item, svgPointListGetItem,
        ghcjs_dom_svg_point_list_insert_item_before,
        svgPointListInsertItemBefore,
        ghcjs_dom_svg_point_list_replace_item, svgPointListReplaceItem,
        ghcjs_dom_svg_point_list_remove_item, svgPointListRemoveItem,
        ghcjs_dom_svg_point_list_append_item, svgPointListAppendItem,
        ghcjs_dom_svg_point_list_get_number_of_items,
        svgPointListGetNumberOfItems, SVGPointList, IsSVGPointList,
        castToSVGPointList, gTypeSVGPointList, toSVGPointList)
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
        ghcjs_dom_svg_point_list_clear :: JSRef SVGPointList -> IO ()
 
svgPointListClear :: (IsSVGPointList self) => self -> IO ()
svgPointListClear self
  = ghcjs_dom_svg_point_list_clear
      (unSVGPointList (toSVGPointList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        ghcjs_dom_svg_point_list_initialize ::
        JSRef SVGPointList -> JSRef SVGPoint -> IO (JSRef SVGPoint)
 
svgPointListInitialize ::
                       (IsSVGPointList self, IsSVGPoint item) =>
                         self -> Maybe item -> IO (Maybe SVGPoint)
svgPointListInitialize self item
  = fmap SVGPoint . maybeJSNull <$>
      (ghcjs_dom_svg_point_list_initialize
         (unSVGPointList (toSVGPointList self))
         (maybe jsNull (unSVGPoint . toSVGPoint) item))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        ghcjs_dom_svg_point_list_get_item ::
        JSRef SVGPointList -> Word -> IO (JSRef SVGPoint)
 
svgPointListGetItem ::
                    (IsSVGPointList self) => self -> Word -> IO (Maybe SVGPoint)
svgPointListGetItem self index
  = fmap SVGPoint . maybeJSNull <$>
      (ghcjs_dom_svg_point_list_get_item
         (unSVGPointList (toSVGPointList self))
         index)
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        ghcjs_dom_svg_point_list_insert_item_before ::
        JSRef SVGPointList -> JSRef SVGPoint -> Word -> IO (JSRef SVGPoint)
 
svgPointListInsertItemBefore ::
                             (IsSVGPointList self, IsSVGPoint item) =>
                               self -> Maybe item -> Word -> IO (Maybe SVGPoint)
svgPointListInsertItemBefore self item index
  = fmap SVGPoint . maybeJSNull <$>
      (ghcjs_dom_svg_point_list_insert_item_before
         (unSVGPointList (toSVGPointList self))
         (maybe jsNull (unSVGPoint . toSVGPoint) item)
         index)
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        ghcjs_dom_svg_point_list_replace_item ::
        JSRef SVGPointList -> JSRef SVGPoint -> Word -> IO (JSRef SVGPoint)
 
svgPointListReplaceItem ::
                        (IsSVGPointList self, IsSVGPoint item) =>
                          self -> Maybe item -> Word -> IO (Maybe SVGPoint)
svgPointListReplaceItem self item index
  = fmap SVGPoint . maybeJSNull <$>
      (ghcjs_dom_svg_point_list_replace_item
         (unSVGPointList (toSVGPointList self))
         (maybe jsNull (unSVGPoint . toSVGPoint) item)
         index)
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        ghcjs_dom_svg_point_list_remove_item ::
        JSRef SVGPointList -> Word -> IO (JSRef SVGPoint)
 
svgPointListRemoveItem ::
                       (IsSVGPointList self) => self -> Word -> IO (Maybe SVGPoint)
svgPointListRemoveItem self index
  = fmap SVGPoint . maybeJSNull <$>
      (ghcjs_dom_svg_point_list_remove_item
         (unSVGPointList (toSVGPointList self))
         index)
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        ghcjs_dom_svg_point_list_append_item ::
        JSRef SVGPointList -> JSRef SVGPoint -> IO (JSRef SVGPoint)
 
svgPointListAppendItem ::
                       (IsSVGPointList self, IsSVGPoint item) =>
                         self -> Maybe item -> IO (Maybe SVGPoint)
svgPointListAppendItem self item
  = fmap SVGPoint . maybeJSNull <$>
      (ghcjs_dom_svg_point_list_append_item
         (unSVGPointList (toSVGPointList self))
         (maybe jsNull (unSVGPoint . toSVGPoint) item))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        ghcjs_dom_svg_point_list_get_number_of_items ::
        JSRef SVGPointList -> IO Word
 
svgPointListGetNumberOfItems ::
                             (IsSVGPointList self) => self -> IO Word
svgPointListGetNumberOfItems self
  = ghcjs_dom_svg_point_list_get_number_of_items
      (unSVGPointList (toSVGPointList self))
#else
module GHCJS.DOM.SVGPointList (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPointList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPointList
#endif
