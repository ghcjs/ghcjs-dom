{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StyleSheet
       (ghcjs_dom_style_sheet_set_disabled, styleSheetSetDisabled,
        ghcjs_dom_style_sheet_get_disabled, styleSheetGetDisabled,
        ghcjs_dom_style_sheet_get_owner_node, styleSheetGetOwnerNode,
        ghcjs_dom_style_sheet_get_parent_style_sheet,
        styleSheetGetParentStyleSheet, ghcjs_dom_style_sheet_get_href,
        styleSheetGetHref, ghcjs_dom_style_sheet_get_title,
        styleSheetGetTitle, ghcjs_dom_style_sheet_get_media,
        styleSheetGetMedia, StyleSheet, IsStyleSheet, castToStyleSheet,
        gTypeStyleSheet, toStyleSheet)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_style_sheet_set_disabled ::
        JSRef StyleSheet -> Bool -> IO ()
 
styleSheetSetDisabled ::
                      (IsStyleSheet self) => self -> Bool -> IO ()
styleSheetSetDisabled self val
  = ghcjs_dom_style_sheet_set_disabled
      (unStyleSheet (toStyleSheet self))
      val
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_style_sheet_get_disabled :: JSRef StyleSheet -> IO Bool
 
styleSheetGetDisabled :: (IsStyleSheet self) => self -> IO Bool
styleSheetGetDisabled self
  = ghcjs_dom_style_sheet_get_disabled
      (unStyleSheet (toStyleSheet self))
 
foreign import javascript unsafe "$1[\"ownerNode\"]"
        ghcjs_dom_style_sheet_get_owner_node ::
        JSRef StyleSheet -> IO (JSRef Node)
 
styleSheetGetOwnerNode ::
                       (IsStyleSheet self) => self -> IO (Maybe Node)
styleSheetGetOwnerNode self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_style_sheet_get_owner_node
         (unStyleSheet (toStyleSheet self)))
 
foreign import javascript unsafe "$1[\"parentStyleSheet\"]"
        ghcjs_dom_style_sheet_get_parent_style_sheet ::
        JSRef StyleSheet -> IO (JSRef StyleSheet)
 
styleSheetGetParentStyleSheet ::
                              (IsStyleSheet self) => self -> IO (Maybe StyleSheet)
styleSheetGetParentStyleSheet self
  = fmap StyleSheet . maybeJSNull <$>
      (ghcjs_dom_style_sheet_get_parent_style_sheet
         (unStyleSheet (toStyleSheet self)))
 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_style_sheet_get_href :: JSRef StyleSheet -> IO JSString
 
styleSheetGetHref ::
                  (IsStyleSheet self, FromJSString result) => self -> IO result
styleSheetGetHref self
  = fromJSString <$>
      (ghcjs_dom_style_sheet_get_href (unStyleSheet (toStyleSheet self)))
 
foreign import javascript unsafe "$1[\"title\"]"
        ghcjs_dom_style_sheet_get_title :: JSRef StyleSheet -> IO JSString
 
styleSheetGetTitle ::
                   (IsStyleSheet self, FromJSString result) => self -> IO result
styleSheetGetTitle self
  = fromJSString <$>
      (ghcjs_dom_style_sheet_get_title
         (unStyleSheet (toStyleSheet self)))
 
foreign import javascript unsafe "$1[\"media\"]"
        ghcjs_dom_style_sheet_get_media ::
        JSRef StyleSheet -> IO (JSRef MediaList)
 
styleSheetGetMedia ::
                   (IsStyleSheet self) => self -> IO (Maybe MediaList)
styleSheetGetMedia self
  = fmap MediaList . maybeJSNull <$>
      (ghcjs_dom_style_sheet_get_media
         (unStyleSheet (toStyleSheet self)))
#else
module GHCJS.DOM.StyleSheet (
  module Graphics.UI.Gtk.WebKit.DOM.StyleSheet
  ) where
import Graphics.UI.Gtk.WebKit.DOM.StyleSheet
#endif
