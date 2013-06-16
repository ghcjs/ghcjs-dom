{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.StyleSheetList
       (webkit_dom_style_sheet_list_item, styleSheetListItem,
        webkit_dom_style_sheet_list_get_length, styleSheetListGetLength)
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
        webkit_dom_style_sheet_list_item ::
        JSRef StyleSheetList -> Word -> IO (JSRef StyleSheet)
#else 
webkit_dom_style_sheet_list_item ::
                                   JSRef StyleSheetList -> Word -> IO (JSRef StyleSheet)
webkit_dom_style_sheet_list_item = undefined
#endif
 
styleSheetListItem ::
                   (StyleSheetListClass self) => self -> Word -> IO (Maybe StyleSheet)
styleSheetListItem self index
  = fmap StyleSheet . maybeJSNull <$>
      (webkit_dom_style_sheet_list_item
         (unStyleSheetList (toStyleSheetList self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_style_sheet_list_get_length ::
        JSRef StyleSheetList -> IO Word
#else 
webkit_dom_style_sheet_list_get_length ::
                                         JSRef StyleSheetList -> IO Word
webkit_dom_style_sheet_list_get_length = undefined
#endif
 
styleSheetListGetLength ::
                        (StyleSheetListClass self) => self -> IO Word
styleSheetListGetLength self
  = webkit_dom_style_sheet_list_get_length
      (unStyleSheetList (toStyleSheetList self))