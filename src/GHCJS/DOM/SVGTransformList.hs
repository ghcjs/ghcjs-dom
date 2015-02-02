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
        ghcjs_dom_svg_transform_list_clear ::
        JSRef SVGTransformList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.clear Mozilla SVGTransformList.clear documentation> 
svgTransformListClear :: (IsSVGTransformList self) => self -> IO ()
svgTransformListClear self
  = ghcjs_dom_svg_transform_list_clear
      (unSVGTransformList (toSVGTransformList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        ghcjs_dom_svg_transform_list_initialize ::
        JSRef SVGTransformList ->
          JSRef SVGTransform -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.initialize Mozilla SVGTransformList.initialize documentation> 
svgTransformListInitialize ::
                           (IsSVGTransformList self, IsSVGTransform item) =>
                             self -> Maybe item -> IO (Maybe SVGTransform)
svgTransformListInitialize self item
  = (ghcjs_dom_svg_transform_list_initialize
       (unSVGTransformList (toSVGTransformList self))
       (maybe jsNull (unSVGTransform . toSVGTransform) item))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        ghcjs_dom_svg_transform_list_get_item ::
        JSRef SVGTransformList -> Word -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.item Mozilla SVGTransformList.item documentation> 
svgTransformListGetItem ::
                        (IsSVGTransformList self) =>
                          self -> Word -> IO (Maybe SVGTransform)
svgTransformListGetItem self index
  = (ghcjs_dom_svg_transform_list_get_item
       (unSVGTransformList (toSVGTransformList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        ghcjs_dom_svg_transform_list_insert_item_before ::
        JSRef SVGTransformList ->
          JSRef SVGTransform -> Word -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.insertItemBefore Mozilla SVGTransformList.insertItemBefore documentation> 
svgTransformListInsertItemBefore ::
                                 (IsSVGTransformList self, IsSVGTransform item) =>
                                   self -> Maybe item -> Word -> IO (Maybe SVGTransform)
svgTransformListInsertItemBefore self item index
  = (ghcjs_dom_svg_transform_list_insert_item_before
       (unSVGTransformList (toSVGTransformList self))
       (maybe jsNull (unSVGTransform . toSVGTransform) item)
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        ghcjs_dom_svg_transform_list_replace_item ::
        JSRef SVGTransformList ->
          JSRef SVGTransform -> Word -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.replaceItem Mozilla SVGTransformList.replaceItem documentation> 
svgTransformListReplaceItem ::
                            (IsSVGTransformList self, IsSVGTransform item) =>
                              self -> Maybe item -> Word -> IO (Maybe SVGTransform)
svgTransformListReplaceItem self item index
  = (ghcjs_dom_svg_transform_list_replace_item
       (unSVGTransformList (toSVGTransformList self))
       (maybe jsNull (unSVGTransform . toSVGTransform) item)
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        ghcjs_dom_svg_transform_list_remove_item ::
        JSRef SVGTransformList -> Word -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.removeItem Mozilla SVGTransformList.removeItem documentation> 
svgTransformListRemoveItem ::
                           (IsSVGTransformList self) =>
                             self -> Word -> IO (Maybe SVGTransform)
svgTransformListRemoveItem self index
  = (ghcjs_dom_svg_transform_list_remove_item
       (unSVGTransformList (toSVGTransformList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        ghcjs_dom_svg_transform_list_append_item ::
        JSRef SVGTransformList ->
          JSRef SVGTransform -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.appendItem Mozilla SVGTransformList.appendItem documentation> 
svgTransformListAppendItem ::
                           (IsSVGTransformList self, IsSVGTransform item) =>
                             self -> Maybe item -> IO (Maybe SVGTransform)
svgTransformListAppendItem self item
  = (ghcjs_dom_svg_transform_list_append_item
       (unSVGTransformList (toSVGTransformList self))
       (maybe jsNull (unSVGTransform . toSVGTransform) item))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createSVGTransformFromMatrix\"]($2)"
        ghcjs_dom_svg_transform_list_create_svg_transform_from_matrix ::
        JSRef SVGTransformList ->
          JSRef SVGMatrix -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.createSVGTransformFromMatrix Mozilla SVGTransformList.createSVGTransformFromMatrix documentation> 
svgTransformListCreateSVGTransformFromMatrix ::
                                             (IsSVGTransformList self, IsSVGMatrix matrix) =>
                                               self -> Maybe matrix -> IO (Maybe SVGTransform)
svgTransformListCreateSVGTransformFromMatrix self matrix
  = (ghcjs_dom_svg_transform_list_create_svg_transform_from_matrix
       (unSVGTransformList (toSVGTransformList self))
       (maybe jsNull (unSVGMatrix . toSVGMatrix) matrix))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"consolidate\"]()"
        ghcjs_dom_svg_transform_list_consolidate ::
        JSRef SVGTransformList -> IO (JSRef SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.consolidate Mozilla SVGTransformList.consolidate documentation> 
svgTransformListConsolidate ::
                            (IsSVGTransformList self) => self -> IO (Maybe SVGTransform)
svgTransformListConsolidate self
  = (ghcjs_dom_svg_transform_list_consolidate
       (unSVGTransformList (toSVGTransformList self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        ghcjs_dom_svg_transform_list_get_number_of_items ::
        JSRef SVGTransformList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList.numberOfItems Mozilla SVGTransformList.numberOfItems documentation> 
svgTransformListGetNumberOfItems ::
                                 (IsSVGTransformList self) => self -> IO Word
svgTransformListGetNumberOfItems self
  = ghcjs_dom_svg_transform_list_get_number_of_items
      (unSVGTransformList (toSVGTransformList self))
#else
module GHCJS.DOM.SVGTransformList (
  ) where
#endif
