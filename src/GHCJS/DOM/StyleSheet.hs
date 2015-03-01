{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StyleSheet
       (js_setDisabled, setDisabled, js_getDisabled, getDisabled,
        js_getOwnerNode, getOwnerNode, js_getParentStyleSheet,
        getParentStyleSheet, js_getHref, getHref, js_getTitle, getTitle,
        js_getMedia, getMedia, StyleSheet, castToStyleSheet,
        gTypeStyleSheet, IsStyleSheet, toStyleSheet)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: JSRef StyleSheet -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.disabled Mozilla StyleSheet.disabled documentation> 
setDisabled ::
            (MonadIO m, IsStyleSheet self) => self -> Bool -> m ()
setDisabled self val
  = liftIO (js_setDisabled (unStyleSheet (toStyleSheet self)) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: JSRef StyleSheet -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.disabled Mozilla StyleSheet.disabled documentation> 
getDisabled :: (MonadIO m, IsStyleSheet self) => self -> m Bool
getDisabled self
  = liftIO (js_getDisabled (unStyleSheet (toStyleSheet self)))
 
foreign import javascript unsafe "$1[\"ownerNode\"]"
        js_getOwnerNode :: JSRef StyleSheet -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.ownerNode Mozilla StyleSheet.ownerNode documentation> 
getOwnerNode ::
             (MonadIO m, IsStyleSheet self) => self -> m (Maybe Node)
getOwnerNode self
  = liftIO
      ((js_getOwnerNode (unStyleSheet (toStyleSheet self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"parentStyleSheet\"]"
        js_getParentStyleSheet :: JSRef StyleSheet -> IO (JSRef StyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.parentStyleSheet Mozilla StyleSheet.parentStyleSheet documentation> 
getParentStyleSheet ::
                    (MonadIO m, IsStyleSheet self) => self -> m (Maybe StyleSheet)
getParentStyleSheet self
  = liftIO
      ((js_getParentStyleSheet (unStyleSheet (toStyleSheet self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        JSRef StyleSheet -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.href Mozilla StyleSheet.href documentation> 
getHref ::
        (MonadIO m, IsStyleSheet self, FromJSString result) =>
          self -> m result
getHref self
  = liftIO
      (fromJSString <$> (js_getHref (unStyleSheet (toStyleSheet self))))
 
foreign import javascript unsafe "$1[\"title\"]" js_getTitle ::
        JSRef StyleSheet -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.title Mozilla StyleSheet.title documentation> 
getTitle ::
         (MonadIO m, IsStyleSheet self, FromJSString result) =>
           self -> m result
getTitle self
  = liftIO
      (fromJSString <$> (js_getTitle (unStyleSheet (toStyleSheet self))))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        JSRef StyleSheet -> IO (JSRef MediaList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.media Mozilla StyleSheet.media documentation> 
getMedia ::
         (MonadIO m, IsStyleSheet self) => self -> m (Maybe MediaList)
getMedia self
  = liftIO
      ((js_getMedia (unStyleSheet (toStyleSheet self))) >>= fromJSRef)
#else
module GHCJS.DOM.StyleSheet (
  module Graphics.UI.Gtk.WebKit.DOM.StyleSheet
  ) where
import Graphics.UI.Gtk.WebKit.DOM.StyleSheet
#endif
