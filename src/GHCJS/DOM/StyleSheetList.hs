{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StyleSheetList
       (ghcjs_dom_style_sheet_list_item, styleSheetListItem,
        ghcjs_dom_style_sheet_list_get, styleSheetList_get,
        ghcjs_dom_style_sheet_list_get_length, styleSheetListGetLength,
        StyleSheetList, IsStyleSheetList, castToStyleSheetList,
        gTypeStyleSheetList, toStyleSheetList)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_style_sheet_list_item ::
        JSRef StyleSheetList -> Word -> IO (JSRef StyleSheet)
 
styleSheetListItem ::
                   (IsStyleSheetList self) => self -> Word -> IO (Maybe StyleSheet)
styleSheetListItem self index
  = fmap StyleSheet . maybeJSNull <$>
      (ghcjs_dom_style_sheet_list_item
         (unStyleSheetList (toStyleSheetList self))
         index)
 
foreign import javascript unsafe "$1[\"_get\"]($2)"
        ghcjs_dom_style_sheet_list_get ::
        JSRef StyleSheetList -> JSString -> IO (JSRef CSSStyleSheet)
 
styleSheetList_get ::
                   (IsStyleSheetList self, ToJSString name) =>
                     self -> name -> IO (Maybe CSSStyleSheet)
styleSheetList_get self name
  = fmap CSSStyleSheet . maybeJSNull <$>
      (ghcjs_dom_style_sheet_list_get
         (unStyleSheetList (toStyleSheetList self))
         (toJSString name))
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_style_sheet_list_get_length ::
        JSRef StyleSheetList -> IO Word
 
styleSheetListGetLength ::
                        (IsStyleSheetList self) => self -> IO Word
styleSheetListGetLength self
  = ghcjs_dom_style_sheet_list_get_length
      (unStyleSheetList (toStyleSheetList self))
#else
module GHCJS.DOM.StyleSheetList (
  module Graphics.UI.Gtk.WebKit.DOM.StyleSheetList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.StyleSheetList
#endif
