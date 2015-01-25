{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGTransformList
       (ghcjs_dom_svg_transform_list_clear, svgTransformListClear,
        ghcjs_dom_svg_transform_list_initialize,
        svgTransformListInitialize, ghcjs_dom_svg_transform_list_get_item,
        svgTransformListGetItem,
        ghcjs_dom_svg_transform_list_insert_item_before,
        svgTransformListInsertItemBefore,
        ghcjs_dom_svg_transform_list_replace_item,
        svgTransformListReplaceItem,
        ghcjs_dom_svg_transform_list_remove_item,
        svgTransformListRemoveItem,
        ghcjs_dom_svg_transform_list_append_item,
        svgTransformListAppendItem,
        ghcjs_dom_svg_transform_list_create_svg_transform_from_matrix,
        svgTransformListCreateSVGTransformFromMatrix,
        ghcjs_dom_svg_transform_list_consolidate,
        svgTransformListConsolidate,
        ghcjs_dom_svg_transform_list_get_number_of_items,
        svgTransformListGetNumberOfItems, SVGTransformList,
        IsSVGTransformList, castToSVGTransformList, gTypeSVGTransformList,
        toSVGTransformList)
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
        ghcjs_dom_svg_transform_list_clear ::
        JSRef SVGTransformList -> IO ()
 
svgTransformListClear :: (IsSVGTransformList self) => self -> IO ()
svgTransformListClear self
  = ghcjs_dom_svg_transform_list_clear
      (unSVGTransformList (toSVGTransformList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        ghcjs_dom_svg_transform_list_initialize ::
        JSRef SVGTransformList ->
          JSRef SVGTransform -> IO (JSRef SVGTransform)
 
svgTransformListInitialize ::
                           (IsSVGTransformList self, IsSVGTransform item) =>
                             self -> Maybe item -> IO (Maybe SVGTransform)
svgTransformListInitialize self item
  = fmap SVGTransform . maybeJSNull <$>
      (ghcjs_dom_svg_transform_list_initialize
         (unSVGTransformList (toSVGTransformList self))
         (maybe jsNull (unSVGTransform . toSVGTransform) item))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        ghcjs_dom_svg_transform_list_get_item ::
        JSRef SVGTransformList -> Word -> IO (JSRef SVGTransform)
 
svgTransformListGetItem ::
                        (IsSVGTransformList self) =>
                          self -> Word -> IO (Maybe SVGTransform)
svgTransformListGetItem self index
  = fmap SVGTransform . maybeJSNull <$>
      (ghcjs_dom_svg_transform_list_get_item
         (unSVGTransformList (toSVGTransformList self))
         index)
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        ghcjs_dom_svg_transform_list_insert_item_before ::
        JSRef SVGTransformList ->
          JSRef SVGTransform -> Word -> IO (JSRef SVGTransform)
 
svgTransformListInsertItemBefore ::
                                 (IsSVGTransformList self, IsSVGTransform item) =>
                                   self -> Maybe item -> Word -> IO (Maybe SVGTransform)
svgTransformListInsertItemBefore self item index
  = fmap SVGTransform . maybeJSNull <$>
      (ghcjs_dom_svg_transform_list_insert_item_before
         (unSVGTransformList (toSVGTransformList self))
         (maybe jsNull (unSVGTransform . toSVGTransform) item)
         index)
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        ghcjs_dom_svg_transform_list_replace_item ::
        JSRef SVGTransformList ->
          JSRef SVGTransform -> Word -> IO (JSRef SVGTransform)
 
svgTransformListReplaceItem ::
                            (IsSVGTransformList self, IsSVGTransform item) =>
                              self -> Maybe item -> Word -> IO (Maybe SVGTransform)
svgTransformListReplaceItem self item index
  = fmap SVGTransform . maybeJSNull <$>
      (ghcjs_dom_svg_transform_list_replace_item
         (unSVGTransformList (toSVGTransformList self))
         (maybe jsNull (unSVGTransform . toSVGTransform) item)
         index)
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        ghcjs_dom_svg_transform_list_remove_item ::
        JSRef SVGTransformList -> Word -> IO (JSRef SVGTransform)
 
svgTransformListRemoveItem ::
                           (IsSVGTransformList self) =>
                             self -> Word -> IO (Maybe SVGTransform)
svgTransformListRemoveItem self index
  = fmap SVGTransform . maybeJSNull <$>
      (ghcjs_dom_svg_transform_list_remove_item
         (unSVGTransformList (toSVGTransformList self))
         index)
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        ghcjs_dom_svg_transform_list_append_item ::
        JSRef SVGTransformList ->
          JSRef SVGTransform -> IO (JSRef SVGTransform)
 
svgTransformListAppendItem ::
                           (IsSVGTransformList self, IsSVGTransform item) =>
                             self -> Maybe item -> IO (Maybe SVGTransform)
svgTransformListAppendItem self item
  = fmap SVGTransform . maybeJSNull <$>
      (ghcjs_dom_svg_transform_list_append_item
         (unSVGTransformList (toSVGTransformList self))
         (maybe jsNull (unSVGTransform . toSVGTransform) item))
 
foreign import javascript unsafe
        "$1[\"createSVGTransformFromMatrix\"]($2)"
        ghcjs_dom_svg_transform_list_create_svg_transform_from_matrix ::
        JSRef SVGTransformList ->
          JSRef SVGMatrix -> IO (JSRef SVGTransform)
 
svgTransformListCreateSVGTransformFromMatrix ::
                                             (IsSVGTransformList self, IsSVGMatrix matrix) =>
                                               self -> Maybe matrix -> IO (Maybe SVGTransform)
svgTransformListCreateSVGTransformFromMatrix self matrix
  = fmap SVGTransform . maybeJSNull <$>
      (ghcjs_dom_svg_transform_list_create_svg_transform_from_matrix
         (unSVGTransformList (toSVGTransformList self))
         (maybe jsNull (unSVGMatrix . toSVGMatrix) matrix))
 
foreign import javascript unsafe "$1[\"consolidate\"]()"
        ghcjs_dom_svg_transform_list_consolidate ::
        JSRef SVGTransformList -> IO (JSRef SVGTransform)
 
svgTransformListConsolidate ::
                            (IsSVGTransformList self) => self -> IO (Maybe SVGTransform)
svgTransformListConsolidate self
  = fmap SVGTransform . maybeJSNull <$>
      (ghcjs_dom_svg_transform_list_consolidate
         (unSVGTransformList (toSVGTransformList self)))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        ghcjs_dom_svg_transform_list_get_number_of_items ::
        JSRef SVGTransformList -> IO Word
 
svgTransformListGetNumberOfItems ::
                                 (IsSVGTransformList self) => self -> IO Word
svgTransformListGetNumberOfItems self
  = ghcjs_dom_svg_transform_list_get_number_of_items
      (unSVGTransformList (toSVGTransformList self))
#else
module GHCJS.DOM.SVGTransformList (
  module Graphics.UI.Gtk.WebKit.DOM.SVGTransformList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGTransformList
#endif
