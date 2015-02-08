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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"clear\"]()"
        ghcjs_dom_svg_point_list_clear :: JSRef SVGPointList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.clear Mozilla SVGPointList.clear documentation> 
svgPointListClear ::
                  (MonadIO m, IsSVGPointList self) => self -> m ()
svgPointListClear self
  = liftIO
      (ghcjs_dom_svg_point_list_clear
         (unSVGPointList (toSVGPointList self)))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        ghcjs_dom_svg_point_list_initialize ::
        JSRef SVGPointList -> JSRef SVGPoint -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.initialize Mozilla SVGPointList.initialize documentation> 
svgPointListInitialize ::
                       (MonadIO m, IsSVGPointList self, IsSVGPoint item) =>
                         self -> Maybe item -> m (Maybe SVGPoint)
svgPointListInitialize self item
  = liftIO
      ((ghcjs_dom_svg_point_list_initialize
          (unSVGPointList (toSVGPointList self))
          (maybe jsNull (unSVGPoint . toSVGPoint) item))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        ghcjs_dom_svg_point_list_get_item ::
        JSRef SVGPointList -> Word -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.item Mozilla SVGPointList.item documentation> 
svgPointListGetItem ::
                    (MonadIO m, IsSVGPointList self) =>
                      self -> Word -> m (Maybe SVGPoint)
svgPointListGetItem self index
  = liftIO
      ((ghcjs_dom_svg_point_list_get_item
          (unSVGPointList (toSVGPointList self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        ghcjs_dom_svg_point_list_insert_item_before ::
        JSRef SVGPointList -> JSRef SVGPoint -> Word -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.insertItemBefore Mozilla SVGPointList.insertItemBefore documentation> 
svgPointListInsertItemBefore ::
                             (MonadIO m, IsSVGPointList self, IsSVGPoint item) =>
                               self -> Maybe item -> Word -> m (Maybe SVGPoint)
svgPointListInsertItemBefore self item index
  = liftIO
      ((ghcjs_dom_svg_point_list_insert_item_before
          (unSVGPointList (toSVGPointList self))
          (maybe jsNull (unSVGPoint . toSVGPoint) item)
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        ghcjs_dom_svg_point_list_replace_item ::
        JSRef SVGPointList -> JSRef SVGPoint -> Word -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.replaceItem Mozilla SVGPointList.replaceItem documentation> 
svgPointListReplaceItem ::
                        (MonadIO m, IsSVGPointList self, IsSVGPoint item) =>
                          self -> Maybe item -> Word -> m (Maybe SVGPoint)
svgPointListReplaceItem self item index
  = liftIO
      ((ghcjs_dom_svg_point_list_replace_item
          (unSVGPointList (toSVGPointList self))
          (maybe jsNull (unSVGPoint . toSVGPoint) item)
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        ghcjs_dom_svg_point_list_remove_item ::
        JSRef SVGPointList -> Word -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.removeItem Mozilla SVGPointList.removeItem documentation> 
svgPointListRemoveItem ::
                       (MonadIO m, IsSVGPointList self) =>
                         self -> Word -> m (Maybe SVGPoint)
svgPointListRemoveItem self index
  = liftIO
      ((ghcjs_dom_svg_point_list_remove_item
          (unSVGPointList (toSVGPointList self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        ghcjs_dom_svg_point_list_append_item ::
        JSRef SVGPointList -> JSRef SVGPoint -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.appendItem Mozilla SVGPointList.appendItem documentation> 
svgPointListAppendItem ::
                       (MonadIO m, IsSVGPointList self, IsSVGPoint item) =>
                         self -> Maybe item -> m (Maybe SVGPoint)
svgPointListAppendItem self item
  = liftIO
      ((ghcjs_dom_svg_point_list_append_item
          (unSVGPointList (toSVGPointList self))
          (maybe jsNull (unSVGPoint . toSVGPoint) item))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        ghcjs_dom_svg_point_list_get_number_of_items ::
        JSRef SVGPointList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList.numberOfItems Mozilla SVGPointList.numberOfItems documentation> 
svgPointListGetNumberOfItems ::
                             (MonadIO m, IsSVGPointList self) => self -> m Word
svgPointListGetNumberOfItems self
  = liftIO
      (ghcjs_dom_svg_point_list_get_number_of_items
         (unSVGPointList (toSVGPointList self)))
#else
module GHCJS.DOM.SVGPointList (
  ) where
#endif
