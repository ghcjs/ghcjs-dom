{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.StyleSheetList
       (ghcjs_dom_style_sheet_list_item, styleSheetListItem,
        ghcjs_dom_style_sheet_list_get_length, styleSheetListGetLength)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_style_sheet_list_item ::
        JSRef StyleSheetList -> Word -> IO (JSRef StyleSheet)
#else 
ghcjs_dom_style_sheet_list_item ::
                                  JSRef StyleSheetList -> Word -> IO (JSRef StyleSheet)
ghcjs_dom_style_sheet_list_item = undefined
#endif
 
styleSheetListItem ::
                   (IsStyleSheetList self) => self -> Word -> IO (Maybe StyleSheet)
styleSheetListItem self index
  = fmap StyleSheet . maybeJSNull <$>
      (ghcjs_dom_style_sheet_list_item
         (unStyleSheetList (toStyleSheetList self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_style_sheet_list_get_length ::
        JSRef StyleSheetList -> IO Word
#else 
ghcjs_dom_style_sheet_list_get_length ::
                                        JSRef StyleSheetList -> IO Word
ghcjs_dom_style_sheet_list_get_length = undefined
#endif
 
styleSheetListGetLength ::
                        (IsStyleSheetList self) => self -> IO Word
styleSheetListGetLength self
  = ghcjs_dom_style_sheet_list_get_length
      (unStyleSheetList (toStyleSheetList self))