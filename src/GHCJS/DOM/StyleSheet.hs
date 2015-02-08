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

 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_style_sheet_set_disabled ::
        JSRef StyleSheet -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.disabled Mozilla StyleSheet.disabled documentation> 
styleSheetSetDisabled ::
                      (MonadIO m, IsStyleSheet self) => self -> Bool -> m ()
styleSheetSetDisabled self val
  = liftIO
      (ghcjs_dom_style_sheet_set_disabled
         (unStyleSheet (toStyleSheet self))
         val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_style_sheet_get_disabled :: JSRef StyleSheet -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.disabled Mozilla StyleSheet.disabled documentation> 
styleSheetGetDisabled ::
                      (MonadIO m, IsStyleSheet self) => self -> m Bool
styleSheetGetDisabled self
  = liftIO
      (ghcjs_dom_style_sheet_get_disabled
         (unStyleSheet (toStyleSheet self)))
 
foreign import javascript unsafe "$1[\"ownerNode\"]"
        ghcjs_dom_style_sheet_get_owner_node ::
        JSRef StyleSheet -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.ownerNode Mozilla StyleSheet.ownerNode documentation> 
styleSheetGetOwnerNode ::
                       (MonadIO m, IsStyleSheet self) => self -> m (Maybe Node)
styleSheetGetOwnerNode self
  = liftIO
      ((ghcjs_dom_style_sheet_get_owner_node
          (unStyleSheet (toStyleSheet self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"parentStyleSheet\"]"
        ghcjs_dom_style_sheet_get_parent_style_sheet ::
        JSRef StyleSheet -> IO (JSRef StyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.parentStyleSheet Mozilla StyleSheet.parentStyleSheet documentation> 
styleSheetGetParentStyleSheet ::
                              (MonadIO m, IsStyleSheet self) => self -> m (Maybe StyleSheet)
styleSheetGetParentStyleSheet self
  = liftIO
      ((ghcjs_dom_style_sheet_get_parent_style_sheet
          (unStyleSheet (toStyleSheet self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_style_sheet_get_href :: JSRef StyleSheet -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.href Mozilla StyleSheet.href documentation> 
styleSheetGetHref ::
                  (MonadIO m, IsStyleSheet self, FromJSString result) =>
                    self -> m result
styleSheetGetHref self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_style_sheet_get_href
            (unStyleSheet (toStyleSheet self))))
 
foreign import javascript unsafe "$1[\"title\"]"
        ghcjs_dom_style_sheet_get_title :: JSRef StyleSheet -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.title Mozilla StyleSheet.title documentation> 
styleSheetGetTitle ::
                   (MonadIO m, IsStyleSheet self, FromJSString result) =>
                     self -> m result
styleSheetGetTitle self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_style_sheet_get_title
            (unStyleSheet (toStyleSheet self))))
 
foreign import javascript unsafe "$1[\"media\"]"
        ghcjs_dom_style_sheet_get_media ::
        JSRef StyleSheet -> IO (JSRef MediaList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.media Mozilla StyleSheet.media documentation> 
styleSheetGetMedia ::
                   (MonadIO m, IsStyleSheet self) => self -> m (Maybe MediaList)
styleSheetGetMedia self
  = liftIO
      ((ghcjs_dom_style_sheet_get_media
          (unStyleSheet (toStyleSheet self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.StyleSheet (
  module Graphics.UI.Gtk.WebKit.DOM.StyleSheet
  ) where
import Graphics.UI.Gtk.WebKit.DOM.StyleSheet
#endif
