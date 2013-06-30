{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.StyleSheet
       (webkit_dom_style_sheet_set_disabled, styleSheetSetDisabled,
        webkit_dom_style_sheet_get_disabled, styleSheetGetDisabled,
        webkit_dom_style_sheet_get_owner_node, styleSheetGetOwnerNode,
        webkit_dom_style_sheet_get_parent_style_sheet,
        styleSheetGetParentStyleSheet, webkit_dom_style_sheet_get_href,
        styleSheetGetHref, webkit_dom_style_sheet_get_title,
        styleSheetGetTitle, webkit_dom_style_sheet_get_media,
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
        webkit_dom_style_sheet_set_disabled ::
        JSRef StyleSheet -> JSBool -> IO ()
#else 
webkit_dom_style_sheet_set_disabled ::
                                      JSRef StyleSheet -> JSBool -> IO ()
webkit_dom_style_sheet_set_disabled = undefined
#endif
 
styleSheetSetDisabled ::
                      (StyleSheetClass self) => self -> Bool -> IO ()
styleSheetSetDisabled self val
  = webkit_dom_style_sheet_set_disabled
      (unStyleSheet (toStyleSheet self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        webkit_dom_style_sheet_get_disabled ::
        JSRef StyleSheet -> IO JSBool
#else 
webkit_dom_style_sheet_get_disabled ::
                                      JSRef StyleSheet -> IO JSBool
webkit_dom_style_sheet_get_disabled = undefined
#endif
 
styleSheetGetDisabled :: (StyleSheetClass self) => self -> IO Bool
styleSheetGetDisabled self
  = fromJSBool <$>
      (webkit_dom_style_sheet_get_disabled
         (unStyleSheet (toStyleSheet self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ownerNode\"]"
        webkit_dom_style_sheet_get_owner_node ::
        JSRef StyleSheet -> IO (JSRef Node)
#else 
webkit_dom_style_sheet_get_owner_node ::
                                        JSRef StyleSheet -> IO (JSRef Node)
webkit_dom_style_sheet_get_owner_node = undefined
#endif
 
styleSheetGetOwnerNode ::
                       (StyleSheetClass self) => self -> IO (Maybe Node)
styleSheetGetOwnerNode self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_style_sheet_get_owner_node
         (unStyleSheet (toStyleSheet self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"parentStyleSheet\"]"
        webkit_dom_style_sheet_get_parent_style_sheet ::
        JSRef StyleSheet -> IO (JSRef StyleSheet)
#else 
webkit_dom_style_sheet_get_parent_style_sheet ::
                                                JSRef StyleSheet -> IO (JSRef StyleSheet)
webkit_dom_style_sheet_get_parent_style_sheet = undefined
#endif
 
styleSheetGetParentStyleSheet ::
                              (StyleSheetClass self) => self -> IO (Maybe StyleSheet)
styleSheetGetParentStyleSheet self
  = fmap StyleSheet . maybeJSNull <$>
      (webkit_dom_style_sheet_get_parent_style_sheet
         (unStyleSheet (toStyleSheet self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"href\"]"
        webkit_dom_style_sheet_get_href :: JSRef StyleSheet -> IO JSString
#else 
webkit_dom_style_sheet_get_href :: JSRef StyleSheet -> IO JSString
webkit_dom_style_sheet_get_href = undefined
#endif
 
styleSheetGetHref ::
                  (StyleSheetClass self, FromJSString result) => self -> IO result
styleSheetGetHref self
  = fromJSString <$>
      (webkit_dom_style_sheet_get_href
         (unStyleSheet (toStyleSheet self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"title\"]"
        webkit_dom_style_sheet_get_title :: JSRef StyleSheet -> IO JSString
#else 
webkit_dom_style_sheet_get_title :: JSRef StyleSheet -> IO JSString
webkit_dom_style_sheet_get_title = undefined
#endif
 
styleSheetGetTitle ::
                   (StyleSheetClass self, FromJSString result) => self -> IO result
styleSheetGetTitle self
  = fromJSString <$>
      (webkit_dom_style_sheet_get_title
         (unStyleSheet (toStyleSheet self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"media\"]"
        webkit_dom_style_sheet_get_media ::
        JSRef StyleSheet -> IO (JSRef MediaList)
#else 
webkit_dom_style_sheet_get_media ::
                                   JSRef StyleSheet -> IO (JSRef MediaList)
webkit_dom_style_sheet_get_media = undefined
#endif
 
styleSheetGetMedia ::
                   (StyleSheetClass self) => self -> IO (Maybe MediaList)
styleSheetGetMedia self
  = fmap MediaList . maybeJSNull <$>
      (webkit_dom_style_sheet_get_media
         (unStyleSheet (toStyleSheet self)))