{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.StyleSheet
       (ghcjs_dom_style_sheet_set_disabled, styleSheetSetDisabled,
        ghcjs_dom_style_sheet_get_disabled, styleSheetGetDisabled,
        ghcjs_dom_style_sheet_get_owner_node, styleSheetGetOwnerNode,
        ghcjs_dom_style_sheet_get_parent_style_sheet,
        styleSheetGetParentStyleSheet, ghcjs_dom_style_sheet_get_href,
        styleSheetGetHref, ghcjs_dom_style_sheet_get_title,
        styleSheetGetTitle, ghcjs_dom_style_sheet_get_media,
        styleSheetGetMedia)
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
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_style_sheet_set_disabled ::
        JSRef StyleSheet -> JSBool -> IO ()
#else 
ghcjs_dom_style_sheet_set_disabled ::
                                     JSRef StyleSheet -> JSBool -> IO ()
ghcjs_dom_style_sheet_set_disabled = undefined
#endif
 
styleSheetSetDisabled ::
                      (IsStyleSheet self) => self -> Bool -> IO ()
styleSheetSetDisabled self val
  = ghcjs_dom_style_sheet_set_disabled
      (unStyleSheet (toStyleSheet self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_style_sheet_get_disabled :: JSRef StyleSheet -> IO JSBool
#else 
ghcjs_dom_style_sheet_get_disabled :: JSRef StyleSheet -> IO JSBool
ghcjs_dom_style_sheet_get_disabled = undefined
#endif
 
styleSheetGetDisabled :: (IsStyleSheet self) => self -> IO Bool
styleSheetGetDisabled self
  = fromJSBool <$>
      (ghcjs_dom_style_sheet_get_disabled
         (unStyleSheet (toStyleSheet self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ownerNode\"]"
        ghcjs_dom_style_sheet_get_owner_node ::
        JSRef StyleSheet -> IO (JSRef Node)
#else 
ghcjs_dom_style_sheet_get_owner_node ::
                                       JSRef StyleSheet -> IO (JSRef Node)
ghcjs_dom_style_sheet_get_owner_node = undefined
#endif
 
styleSheetGetOwnerNode ::
                       (IsStyleSheet self) => self -> IO (Maybe Node)
styleSheetGetOwnerNode self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_style_sheet_get_owner_node
         (unStyleSheet (toStyleSheet self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"parentStyleSheet\"]"
        ghcjs_dom_style_sheet_get_parent_style_sheet ::
        JSRef StyleSheet -> IO (JSRef StyleSheet)
#else 
ghcjs_dom_style_sheet_get_parent_style_sheet ::
                                               JSRef StyleSheet -> IO (JSRef StyleSheet)
ghcjs_dom_style_sheet_get_parent_style_sheet = undefined
#endif
 
styleSheetGetParentStyleSheet ::
                              (IsStyleSheet self) => self -> IO (Maybe StyleSheet)
styleSheetGetParentStyleSheet self
  = fmap StyleSheet . maybeJSNull <$>
      (ghcjs_dom_style_sheet_get_parent_style_sheet
         (unStyleSheet (toStyleSheet self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_style_sheet_get_href :: JSRef StyleSheet -> IO JSString
#else 
ghcjs_dom_style_sheet_get_href :: JSRef StyleSheet -> IO JSString
ghcjs_dom_style_sheet_get_href = undefined
#endif
 
styleSheetGetHref ::
                  (IsStyleSheet self, FromJSString result) => self -> IO result
styleSheetGetHref self
  = fromJSString <$>
      (ghcjs_dom_style_sheet_get_href (unStyleSheet (toStyleSheet self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"title\"]"
        ghcjs_dom_style_sheet_get_title :: JSRef StyleSheet -> IO JSString
#else 
ghcjs_dom_style_sheet_get_title :: JSRef StyleSheet -> IO JSString
ghcjs_dom_style_sheet_get_title = undefined
#endif
 
styleSheetGetTitle ::
                   (IsStyleSheet self, FromJSString result) => self -> IO result
styleSheetGetTitle self
  = fromJSString <$>
      (ghcjs_dom_style_sheet_get_title
         (unStyleSheet (toStyleSheet self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"media\"]"
        ghcjs_dom_style_sheet_get_media ::
        JSRef StyleSheet -> IO (JSRef MediaList)
#else 
ghcjs_dom_style_sheet_get_media ::
                                  JSRef StyleSheet -> IO (JSRef MediaList)
ghcjs_dom_style_sheet_get_media = undefined
#endif
 
styleSheetGetMedia ::
                   (IsStyleSheet self) => self -> IO (Maybe MediaList)
styleSheetGetMedia self
  = fmap MediaList . maybeJSNull <$>
      (ghcjs_dom_style_sheet_get_media
         (unStyleSheet (toStyleSheet self)))