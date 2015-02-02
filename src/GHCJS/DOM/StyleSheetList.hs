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

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_style_sheet_list_item ::
        JSRef StyleSheetList -> Word -> IO (JSRef StyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.item Mozilla StyleSheetList.item documentation> 
styleSheetListItem ::
                   (IsStyleSheetList self) => self -> Word -> IO (Maybe StyleSheet)
styleSheetListItem self index
  = (ghcjs_dom_style_sheet_list_item
       (unStyleSheetList (toStyleSheetList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"_get\"]($2)"
        ghcjs_dom_style_sheet_list_get ::
        JSRef StyleSheetList -> JSString -> IO (JSRef CSSStyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList._get Mozilla StyleSheetList._get documentation> 
styleSheetList_get ::
                   (IsStyleSheetList self, ToJSString name) =>
                     self -> name -> IO (Maybe CSSStyleSheet)
styleSheetList_get self name
  = (ghcjs_dom_style_sheet_list_get
       (unStyleSheetList (toStyleSheetList self))
       (toJSString name))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_style_sheet_list_get_length ::
        JSRef StyleSheetList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.length Mozilla StyleSheetList.length documentation> 
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
