{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGLengthList
       (ghcjs_dom_svg_length_list_clear, svgLengthListClear,
        ghcjs_dom_svg_length_list_initialize, svgLengthListInitialize,
        ghcjs_dom_svg_length_list_get_item, svgLengthListGetItem,
        ghcjs_dom_svg_length_list_insert_item_before,
        svgLengthListInsertItemBefore,
        ghcjs_dom_svg_length_list_replace_item, svgLengthListReplaceItem,
        ghcjs_dom_svg_length_list_remove_item, svgLengthListRemoveItem,
        ghcjs_dom_svg_length_list_append_item, svgLengthListAppendItem,
        ghcjs_dom_svg_length_list_get_number_of_items,
        svgLengthListGetNumberOfItems, SVGLengthList, IsSVGLengthList,
        castToSVGLengthList, gTypeSVGLengthList, toSVGLengthList)
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
        ghcjs_dom_svg_length_list_clear :: JSRef SVGLengthList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.clear Mozilla SVGLengthList.clear documentation> 
svgLengthListClear :: (IsSVGLengthList self) => self -> IO ()
svgLengthListClear self
  = ghcjs_dom_svg_length_list_clear
      (unSVGLengthList (toSVGLengthList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        ghcjs_dom_svg_length_list_initialize ::
        JSRef SVGLengthList -> JSRef SVGLength -> IO (JSRef SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.initialize Mozilla SVGLengthList.initialize documentation> 
svgLengthListInitialize ::
                        (IsSVGLengthList self, IsSVGLength item) =>
                          self -> Maybe item -> IO (Maybe SVGLength)
svgLengthListInitialize self item
  = (ghcjs_dom_svg_length_list_initialize
       (unSVGLengthList (toSVGLengthList self))
       (maybe jsNull (unSVGLength . toSVGLength) item))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        ghcjs_dom_svg_length_list_get_item ::
        JSRef SVGLengthList -> Word -> IO (JSRef SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.item Mozilla SVGLengthList.item documentation> 
svgLengthListGetItem ::
                     (IsSVGLengthList self) => self -> Word -> IO (Maybe SVGLength)
svgLengthListGetItem self index
  = (ghcjs_dom_svg_length_list_get_item
       (unSVGLengthList (toSVGLengthList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        ghcjs_dom_svg_length_list_insert_item_before ::
        JSRef SVGLengthList ->
          JSRef SVGLength -> Word -> IO (JSRef SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.insertItemBefore Mozilla SVGLengthList.insertItemBefore documentation> 
svgLengthListInsertItemBefore ::
                              (IsSVGLengthList self, IsSVGLength item) =>
                                self -> Maybe item -> Word -> IO (Maybe SVGLength)
svgLengthListInsertItemBefore self item index
  = (ghcjs_dom_svg_length_list_insert_item_before
       (unSVGLengthList (toSVGLengthList self))
       (maybe jsNull (unSVGLength . toSVGLength) item)
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        ghcjs_dom_svg_length_list_replace_item ::
        JSRef SVGLengthList ->
          JSRef SVGLength -> Word -> IO (JSRef SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.replaceItem Mozilla SVGLengthList.replaceItem documentation> 
svgLengthListReplaceItem ::
                         (IsSVGLengthList self, IsSVGLength item) =>
                           self -> Maybe item -> Word -> IO (Maybe SVGLength)
svgLengthListReplaceItem self item index
  = (ghcjs_dom_svg_length_list_replace_item
       (unSVGLengthList (toSVGLengthList self))
       (maybe jsNull (unSVGLength . toSVGLength) item)
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        ghcjs_dom_svg_length_list_remove_item ::
        JSRef SVGLengthList -> Word -> IO (JSRef SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.removeItem Mozilla SVGLengthList.removeItem documentation> 
svgLengthListRemoveItem ::
                        (IsSVGLengthList self) => self -> Word -> IO (Maybe SVGLength)
svgLengthListRemoveItem self index
  = (ghcjs_dom_svg_length_list_remove_item
       (unSVGLengthList (toSVGLengthList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        ghcjs_dom_svg_length_list_append_item ::
        JSRef SVGLengthList -> JSRef SVGLength -> IO (JSRef SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.appendItem Mozilla SVGLengthList.appendItem documentation> 
svgLengthListAppendItem ::
                        (IsSVGLengthList self, IsSVGLength item) =>
                          self -> Maybe item -> IO (Maybe SVGLength)
svgLengthListAppendItem self item
  = (ghcjs_dom_svg_length_list_append_item
       (unSVGLengthList (toSVGLengthList self))
       (maybe jsNull (unSVGLength . toSVGLength) item))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        ghcjs_dom_svg_length_list_get_number_of_items ::
        JSRef SVGLengthList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.numberOfItems Mozilla SVGLengthList.numberOfItems documentation> 
svgLengthListGetNumberOfItems ::
                              (IsSVGLengthList self) => self -> IO Word
svgLengthListGetNumberOfItems self
  = ghcjs_dom_svg_length_list_get_number_of_items
      (unSVGLengthList (toSVGLengthList self))
#else
module GHCJS.DOM.SVGLengthList (
  ) where
#endif
