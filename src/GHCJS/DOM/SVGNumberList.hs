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
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"clear\"]()"
        ghcjs_dom_svg_number_list_clear :: JSRef SVGNumberList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.clear Mozilla SVGNumberList.clear documentation> 
svgNumberListClear :: (IsSVGNumberList self) => self -> IO ()
svgNumberListClear self
  = ghcjs_dom_svg_number_list_clear
      (unSVGNumberList (toSVGNumberList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        ghcjs_dom_svg_number_list_initialize ::
        JSRef SVGNumberList -> JSRef SVGNumber -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.initialize Mozilla SVGNumberList.initialize documentation> 
svgNumberListInitialize ::
                        (IsSVGNumberList self, IsSVGNumber item) =>
                          self -> Maybe item -> IO (Maybe SVGNumber)
svgNumberListInitialize self item
  = (ghcjs_dom_svg_number_list_initialize
       (unSVGNumberList (toSVGNumberList self))
       (maybe jsNull (unSVGNumber . toSVGNumber) item))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        ghcjs_dom_svg_number_list_get_item ::
        JSRef SVGNumberList -> Word -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.item Mozilla SVGNumberList.item documentation> 
svgNumberListGetItem ::
                     (IsSVGNumberList self) => self -> Word -> IO (Maybe SVGNumber)
svgNumberListGetItem self index
  = (ghcjs_dom_svg_number_list_get_item
       (unSVGNumberList (toSVGNumberList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        ghcjs_dom_svg_number_list_insert_item_before ::
        JSRef SVGNumberList ->
          JSRef SVGNumber -> Word -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.insertItemBefore Mozilla SVGNumberList.insertItemBefore documentation> 
svgNumberListInsertItemBefore ::
                              (IsSVGNumberList self, IsSVGNumber item) =>
                                self -> Maybe item -> Word -> IO (Maybe SVGNumber)
svgNumberListInsertItemBefore self item index
  = (ghcjs_dom_svg_number_list_insert_item_before
       (unSVGNumberList (toSVGNumberList self))
       (maybe jsNull (unSVGNumber . toSVGNumber) item)
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        ghcjs_dom_svg_number_list_replace_item ::
        JSRef SVGNumberList ->
          JSRef SVGNumber -> Word -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.replaceItem Mozilla SVGNumberList.replaceItem documentation> 
svgNumberListReplaceItem ::
                         (IsSVGNumberList self, IsSVGNumber item) =>
                           self -> Maybe item -> Word -> IO (Maybe SVGNumber)
svgNumberListReplaceItem self item index
  = (ghcjs_dom_svg_number_list_replace_item
       (unSVGNumberList (toSVGNumberList self))
       (maybe jsNull (unSVGNumber . toSVGNumber) item)
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        ghcjs_dom_svg_number_list_remove_item ::
        JSRef SVGNumberList -> Word -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.removeItem Mozilla SVGNumberList.removeItem documentation> 
svgNumberListRemoveItem ::
                        (IsSVGNumberList self) => self -> Word -> IO (Maybe SVGNumber)
svgNumberListRemoveItem self index
  = (ghcjs_dom_svg_number_list_remove_item
       (unSVGNumberList (toSVGNumberList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        ghcjs_dom_svg_number_list_append_item ::
        JSRef SVGNumberList -> JSRef SVGNumber -> IO (JSRef SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.appendItem Mozilla SVGNumberList.appendItem documentation> 
svgNumberListAppendItem ::
                        (IsSVGNumberList self, IsSVGNumber item) =>
                          self -> Maybe item -> IO (Maybe SVGNumber)
svgNumberListAppendItem self item
  = (ghcjs_dom_svg_number_list_append_item
       (unSVGNumberList (toSVGNumberList self))
       (maybe jsNull (unSVGNumber . toSVGNumber) item))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        ghcjs_dom_svg_number_list_get_number_of_items ::
        JSRef SVGNumberList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList.numberOfItems Mozilla SVGNumberList.numberOfItems documentation> 
svgNumberListGetNumberOfItems ::
                              (IsSVGNumberList self) => self -> IO Word
svgNumberListGetNumberOfItems self
  = ghcjs_dom_svg_number_list_get_number_of_items
      (unSVGNumberList (toSVGNumberList self))
#else
module GHCJS.DOM.SVGNumberList (
  ) where
#endif
