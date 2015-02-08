{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGStringList
       (ghcjs_dom_svg_string_list_clear, svgStringListClear,
        ghcjs_dom_svg_string_list_initialize, svgStringListInitialize,
        ghcjs_dom_svg_string_list_get_item, svgStringListGetItem,
        ghcjs_dom_svg_string_list_insert_item_before,
        svgStringListInsertItemBefore,
        ghcjs_dom_svg_string_list_replace_item, svgStringListReplaceItem,
        ghcjs_dom_svg_string_list_remove_item, svgStringListRemoveItem,
        ghcjs_dom_svg_string_list_append_item, svgStringListAppendItem,
        ghcjs_dom_svg_string_list_get_number_of_items,
        svgStringListGetNumberOfItems, SVGStringList, IsSVGStringList,
        castToSVGStringList, gTypeSVGStringList, toSVGStringList)
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
        ghcjs_dom_svg_string_list_clear :: JSRef SVGStringList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.clear Mozilla SVGStringList.clear documentation> 
svgStringListClear ::
                   (MonadIO m, IsSVGStringList self) => self -> m ()
svgStringListClear self
  = liftIO
      (ghcjs_dom_svg_string_list_clear
         (unSVGStringList (toSVGStringList self)))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        ghcjs_dom_svg_string_list_initialize ::
        JSRef SVGStringList -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.initialize Mozilla SVGStringList.initialize documentation> 
svgStringListInitialize ::
                        (MonadIO m, IsSVGStringList self, ToJSString item,
                         FromJSString result) =>
                          self -> item -> m result
svgStringListInitialize self item
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_string_list_initialize
            (unSVGStringList (toSVGStringList self))
            (toJSString item)))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        ghcjs_dom_svg_string_list_get_item ::
        JSRef SVGStringList -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.item Mozilla SVGStringList.item documentation> 
svgStringListGetItem ::
                     (MonadIO m, IsSVGStringList self, FromJSString result) =>
                       self -> Word -> m result
svgStringListGetItem self index
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_string_list_get_item
            (unSVGStringList (toSVGStringList self))
            index))
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        ghcjs_dom_svg_string_list_insert_item_before ::
        JSRef SVGStringList -> JSString -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.insertItemBefore Mozilla SVGStringList.insertItemBefore documentation> 
svgStringListInsertItemBefore ::
                              (MonadIO m, IsSVGStringList self, ToJSString item,
                               FromJSString result) =>
                                self -> item -> Word -> m result
svgStringListInsertItemBefore self item index
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_string_list_insert_item_before
            (unSVGStringList (toSVGStringList self))
            (toJSString item)
            index))
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        ghcjs_dom_svg_string_list_replace_item ::
        JSRef SVGStringList -> JSString -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.replaceItem Mozilla SVGStringList.replaceItem documentation> 
svgStringListReplaceItem ::
                         (MonadIO m, IsSVGStringList self, ToJSString item,
                          FromJSString result) =>
                           self -> item -> Word -> m result
svgStringListReplaceItem self item index
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_string_list_replace_item
            (unSVGStringList (toSVGStringList self))
            (toJSString item)
            index))
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        ghcjs_dom_svg_string_list_remove_item ::
        JSRef SVGStringList -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.removeItem Mozilla SVGStringList.removeItem documentation> 
svgStringListRemoveItem ::
                        (MonadIO m, IsSVGStringList self, FromJSString result) =>
                          self -> Word -> m result
svgStringListRemoveItem self index
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_string_list_remove_item
            (unSVGStringList (toSVGStringList self))
            index))
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        ghcjs_dom_svg_string_list_append_item ::
        JSRef SVGStringList -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.appendItem Mozilla SVGStringList.appendItem documentation> 
svgStringListAppendItem ::
                        (MonadIO m, IsSVGStringList self, ToJSString item,
                         FromJSString result) =>
                          self -> item -> m result
svgStringListAppendItem self item
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_string_list_append_item
            (unSVGStringList (toSVGStringList self))
            (toJSString item)))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        ghcjs_dom_svg_string_list_get_number_of_items ::
        JSRef SVGStringList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.numberOfItems Mozilla SVGStringList.numberOfItems documentation> 
svgStringListGetNumberOfItems ::
                              (MonadIO m, IsSVGStringList self) => self -> m Word
svgStringListGetNumberOfItems self
  = liftIO
      (ghcjs_dom_svg_string_list_get_number_of_items
         (unSVGStringList (toSVGStringList self)))
#else
module GHCJS.DOM.SVGStringList (
  ) where
#endif
