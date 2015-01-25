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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"clear\"]()"
        ghcjs_dom_svg_length_list_clear :: JSRef SVGLengthList -> IO ()
 
svgLengthListClear :: (IsSVGLengthList self) => self -> IO ()
svgLengthListClear self
  = ghcjs_dom_svg_length_list_clear
      (unSVGLengthList (toSVGLengthList self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        ghcjs_dom_svg_length_list_initialize ::
        JSRef SVGLengthList -> JSRef SVGLength -> IO (JSRef SVGLength)
 
svgLengthListInitialize ::
                        (IsSVGLengthList self, IsSVGLength item) =>
                          self -> Maybe item -> IO (Maybe SVGLength)
svgLengthListInitialize self item
  = fmap SVGLength . maybeJSNull <$>
      (ghcjs_dom_svg_length_list_initialize
         (unSVGLengthList (toSVGLengthList self))
         (maybe jsNull (unSVGLength . toSVGLength) item))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        ghcjs_dom_svg_length_list_get_item ::
        JSRef SVGLengthList -> Word -> IO (JSRef SVGLength)
 
svgLengthListGetItem ::
                     (IsSVGLengthList self) => self -> Word -> IO (Maybe SVGLength)
svgLengthListGetItem self index
  = fmap SVGLength . maybeJSNull <$>
      (ghcjs_dom_svg_length_list_get_item
         (unSVGLengthList (toSVGLengthList self))
         index)
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        ghcjs_dom_svg_length_list_insert_item_before ::
        JSRef SVGLengthList ->
          JSRef SVGLength -> Word -> IO (JSRef SVGLength)
 
svgLengthListInsertItemBefore ::
                              (IsSVGLengthList self, IsSVGLength item) =>
                                self -> Maybe item -> Word -> IO (Maybe SVGLength)
svgLengthListInsertItemBefore self item index
  = fmap SVGLength . maybeJSNull <$>
      (ghcjs_dom_svg_length_list_insert_item_before
         (unSVGLengthList (toSVGLengthList self))
         (maybe jsNull (unSVGLength . toSVGLength) item)
         index)
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        ghcjs_dom_svg_length_list_replace_item ::
        JSRef SVGLengthList ->
          JSRef SVGLength -> Word -> IO (JSRef SVGLength)
 
svgLengthListReplaceItem ::
                         (IsSVGLengthList self, IsSVGLength item) =>
                           self -> Maybe item -> Word -> IO (Maybe SVGLength)
svgLengthListReplaceItem self item index
  = fmap SVGLength . maybeJSNull <$>
      (ghcjs_dom_svg_length_list_replace_item
         (unSVGLengthList (toSVGLengthList self))
         (maybe jsNull (unSVGLength . toSVGLength) item)
         index)
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        ghcjs_dom_svg_length_list_remove_item ::
        JSRef SVGLengthList -> Word -> IO (JSRef SVGLength)
 
svgLengthListRemoveItem ::
                        (IsSVGLengthList self) => self -> Word -> IO (Maybe SVGLength)
svgLengthListRemoveItem self index
  = fmap SVGLength . maybeJSNull <$>
      (ghcjs_dom_svg_length_list_remove_item
         (unSVGLengthList (toSVGLengthList self))
         index)
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        ghcjs_dom_svg_length_list_append_item ::
        JSRef SVGLengthList -> JSRef SVGLength -> IO (JSRef SVGLength)
 
svgLengthListAppendItem ::
                        (IsSVGLengthList self, IsSVGLength item) =>
                          self -> Maybe item -> IO (Maybe SVGLength)
svgLengthListAppendItem self item
  = fmap SVGLength . maybeJSNull <$>
      (ghcjs_dom_svg_length_list_append_item
         (unSVGLengthList (toSVGLengthList self))
         (maybe jsNull (unSVGLength . toSVGLength) item))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        ghcjs_dom_svg_length_list_get_number_of_items ::
        JSRef SVGLengthList -> IO Word
 
svgLengthListGetNumberOfItems ::
                              (IsSVGLengthList self) => self -> IO Word
svgLengthListGetNumberOfItems self
  = ghcjs_dom_svg_length_list_get_number_of_items
      (unSVGLengthList (toSVGLengthList self))
#else
module GHCJS.DOM.SVGLengthList (
  module Graphics.UI.Gtk.WebKit.DOM.SVGLengthList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGLengthList
#endif
