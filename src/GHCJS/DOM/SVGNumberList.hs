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
        ghcjs_dom_svg_number_list_clear :: JSRef SVGNumberList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.clear Mozilla SVGNumberList.clear documentation> 
svgNumberListClear ::
                   (MonadIO m, IsSVGNumberList self) => self -> m ()
svgNumberListClear self
  = liftIO
      (ghcjs_dom_svg_number_list_clear
         (unSVGNumberList (toSVGNumberList self)))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        ghcjs_dom_svg_number_list_initialize ::
        JSRef SVGNumberList -> JSRef SVGNumber -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
svgNumberListInitialize ::
                        (MonadIO m, IsSVGNumberList self, IsSVGNumber item) =>
                          self -> Maybe item -> m (Maybe SVGNumber)
svgNumberListInitialize self item
  = liftIO
      ((ghcjs_dom_svg_number_list_initialize
          (unSVGNumberList (toSVGNumberList self))
          (maybe jsNull (unSVGNumber . toSVGNumber) item))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        ghcjs_dom_svg_number_list_get_item ::
        JSRef SVGNumberList -> Word -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.item Mozilla SVGNumberList.item documentation> 
svgNumberListGetItem ::
                     (MonadIO m, IsSVGNumberList self) =>
                       self -> Word -> m (Maybe SVGNumber)
svgNumberListGetItem self index
  = liftIO
      ((ghcjs_dom_svg_number_list_get_item
          (unSVGNumberList (toSVGNumberList self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        ghcjs_dom_svg_number_list_insert_item_before ::
        JSRef SVGNumberList ->
          JSRef SVGNumber -> Word -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
svgNumberListInsertItemBefore ::
                              (MonadIO m, IsSVGNumberList self, IsSVGNumber item) =>
                                self -> Maybe item -> Word -> m (Maybe SVGNumber)
svgNumberListInsertItemBefore self item index
  = liftIO
      ((ghcjs_dom_svg_number_list_insert_item_before
          (unSVGNumberList (toSVGNumberList self))
          (maybe jsNull (unSVGNumber . toSVGNumber) item)
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        ghcjs_dom_svg_number_list_replace_item ::
        JSRef SVGNumberList ->
          JSRef SVGNumber -> Word -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
svgNumberListReplaceItem ::
                         (MonadIO m, IsSVGNumberList self, IsSVGNumber item) =>
                           self -> Maybe item -> Word -> m (Maybe SVGNumber)
svgNumberListReplaceItem self item index
  = liftIO
      ((ghcjs_dom_svg_number_list_replace_item
          (unSVGNumberList (toSVGNumberList self))
          (maybe jsNull (unSVGNumber . toSVGNumber) item)
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        ghcjs_dom_svg_number_list_remove_item ::
        JSRef SVGNumberList -> Word -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
svgNumberListRemoveItem ::
                        (MonadIO m, IsSVGNumberList self) =>
                          self -> Word -> m (Maybe SVGNumber)
svgNumberListRemoveItem self index
  = liftIO
      ((ghcjs_dom_svg_number_list_remove_item
          (unSVGNumberList (toSVGNumberList self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        ghcjs_dom_svg_number_list_append_item ::
        JSRef SVGNumberList -> JSRef SVGNumber -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
svgNumberListAppendItem ::
                        (MonadIO m, IsSVGNumberList self, IsSVGNumber item) =>
                          self -> Maybe item -> m (Maybe SVGNumber)
svgNumberListAppendItem self item
  = liftIO
      ((ghcjs_dom_svg_number_list_append_item
          (unSVGNumberList (toSVGNumberList self))
          (maybe jsNull (unSVGNumber . toSVGNumber) item))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        ghcjs_dom_svg_number_list_get_number_of_items ::
        JSRef SVGNumberList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.numberOfItems Mozilla SVGNumberList.numberOfItems documentation> 
svgNumberListGetNumberOfItems ::
                              (MonadIO m, IsSVGNumberList self) => self -> m Word
svgNumberListGetNumberOfItems self
  = liftIO
      (ghcjs_dom_svg_number_list_get_number_of_items
         (unSVGNumberList (toSVGNumberList self)))
#else
module GHCJS.DOM.SVGNumberList (
  ) where
#endif
