{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.StyleSheet
       (js_getType, getType, getTypeUnsafe, getTypeUnchecked,
        js_setDisabled, setDisabled, js_getDisabled, getDisabled,
        js_getOwnerNode, getOwnerNode, js_getParentStyleSheet,
        getParentStyleSheet, js_getHref, getHref, getHrefUnsafe,
        getHrefUnchecked, js_getTitle, getTitle, getTitleUnsafe,
        getTitleUnchecked, js_getMedia, getMedia, StyleSheet(..),
        gTypeStyleSheet, IsStyleSheet, toStyleSheet)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        StyleSheet -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.type Mozilla StyleSheet.type documentation> 
getType ::
        (MonadIO m, IsStyleSheet self, FromJSString result) =>
          self -> m (Maybe result)
getType self
  = liftIO (fromMaybeJSString <$> (js_getType (toStyleSheet self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.type Mozilla StyleSheet.type documentation> 
getTypeUnsafe ::
              (MonadIO m, IsStyleSheet self, HasCallStack,
               FromJSString result) =>
                self -> m result
getTypeUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getType (toStyleSheet self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.type Mozilla StyleSheet.type documentation> 
getTypeUnchecked ::
                 (MonadIO m, IsStyleSheet self, FromJSString result) =>
                   self -> m result
getTypeUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getType (toStyleSheet self)))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: StyleSheet -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.disabled Mozilla StyleSheet.disabled documentation> 
setDisabled ::
            (MonadIO m, IsStyleSheet self) => self -> Bool -> m ()
setDisabled self val
  = liftIO (js_setDisabled (toStyleSheet self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: StyleSheet -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.disabled Mozilla StyleSheet.disabled documentation> 
getDisabled :: (MonadIO m, IsStyleSheet self) => self -> m Bool
getDisabled self = liftIO (js_getDisabled (toStyleSheet self))
 
foreign import javascript unsafe "$1[\"ownerNode\"]"
        js_getOwnerNode :: StyleSheet -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.ownerNode Mozilla StyleSheet.ownerNode documentation> 
getOwnerNode :: (MonadIO m, IsStyleSheet self) => self -> m Node
getOwnerNode self = liftIO (js_getOwnerNode (toStyleSheet self))
 
foreign import javascript unsafe "$1[\"parentStyleSheet\"]"
        js_getParentStyleSheet :: StyleSheet -> IO StyleSheet

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.parentStyleSheet Mozilla StyleSheet.parentStyleSheet documentation> 
getParentStyleSheet ::
                    (MonadIO m, IsStyleSheet self) => self -> m StyleSheet
getParentStyleSheet self
  = liftIO (js_getParentStyleSheet (toStyleSheet self))
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        StyleSheet -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.href Mozilla StyleSheet.href documentation> 
getHref ::
        (MonadIO m, IsStyleSheet self, FromJSString result) =>
          self -> m (Maybe result)
getHref self
  = liftIO (fromMaybeJSString <$> (js_getHref (toStyleSheet self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.href Mozilla StyleSheet.href documentation> 
getHrefUnsafe ::
              (MonadIO m, IsStyleSheet self, HasCallStack,
               FromJSString result) =>
                self -> m result
getHrefUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getHref (toStyleSheet self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.href Mozilla StyleSheet.href documentation> 
getHrefUnchecked ::
                 (MonadIO m, IsStyleSheet self, FromJSString result) =>
                   self -> m result
getHrefUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getHref (toStyleSheet self)))
 
foreign import javascript unsafe "$1[\"title\"]" js_getTitle ::
        StyleSheet -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.title Mozilla StyleSheet.title documentation> 
getTitle ::
         (MonadIO m, IsStyleSheet self, FromJSString result) =>
           self -> m (Maybe result)
getTitle self
  = liftIO (fromMaybeJSString <$> (js_getTitle (toStyleSheet self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.title Mozilla StyleSheet.title documentation> 
getTitleUnsafe ::
               (MonadIO m, IsStyleSheet self, HasCallStack,
                FromJSString result) =>
                 self -> m result
getTitleUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getTitle (toStyleSheet self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.title Mozilla StyleSheet.title documentation> 
getTitleUnchecked ::
                  (MonadIO m, IsStyleSheet self, FromJSString result) =>
                    self -> m result
getTitleUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getTitle (toStyleSheet self)))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        StyleSheet -> IO MediaList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.media Mozilla StyleSheet.media documentation> 
getMedia :: (MonadIO m, IsStyleSheet self) => self -> m MediaList
getMedia self = liftIO (js_getMedia (toStyleSheet self))