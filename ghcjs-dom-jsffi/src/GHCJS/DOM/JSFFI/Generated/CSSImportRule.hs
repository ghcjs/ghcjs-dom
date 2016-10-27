{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSSImportRule
       (js_getHref, getHref, getHrefUnsafe, getHrefUnchecked, js_getMedia,
        getMedia, getMediaUnsafe, getMediaUnchecked, js_getStyleSheet,
        getStyleSheet, getStyleSheetUnsafe, getStyleSheetUnchecked,
        CSSImportRule(..), gTypeCSSImportRule)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        CSSImportRule -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.href Mozilla CSSImportRule.href documentation> 
getHref ::
        (MonadIO m, FromJSString result) =>
          CSSImportRule -> m (Maybe result)
getHref self = liftIO (fromMaybeJSString <$> (js_getHref (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.href Mozilla CSSImportRule.href documentation> 
getHrefUnsafe ::
              (MonadIO m, HasCallStack, FromJSString result) =>
                CSSImportRule -> m result
getHrefUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getHref (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.href Mozilla CSSImportRule.href documentation> 
getHrefUnchecked ::
                 (MonadIO m, FromJSString result) => CSSImportRule -> m result
getHrefUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getHref (self)))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        CSSImportRule -> IO (Nullable MediaList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.media Mozilla CSSImportRule.media documentation> 
getMedia :: (MonadIO m) => CSSImportRule -> m (Maybe MediaList)
getMedia self = liftIO (nullableToMaybe <$> (js_getMedia (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.media Mozilla CSSImportRule.media documentation> 
getMediaUnsafe ::
               (MonadIO m, HasCallStack) => CSSImportRule -> m MediaList
getMediaUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getMedia (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.media Mozilla CSSImportRule.media documentation> 
getMediaUnchecked :: (MonadIO m) => CSSImportRule -> m MediaList
getMediaUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getMedia (self)))
 
foreign import javascript unsafe "$1[\"styleSheet\"]"
        js_getStyleSheet :: CSSImportRule -> IO (Nullable CSSStyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.styleSheet Mozilla CSSImportRule.styleSheet documentation> 
getStyleSheet ::
              (MonadIO m) => CSSImportRule -> m (Maybe CSSStyleSheet)
getStyleSheet self
  = liftIO (nullableToMaybe <$> (js_getStyleSheet (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.styleSheet Mozilla CSSImportRule.styleSheet documentation> 
getStyleSheetUnsafe ::
                    (MonadIO m, HasCallStack) => CSSImportRule -> m CSSStyleSheet
getStyleSheetUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getStyleSheet (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.styleSheet Mozilla CSSImportRule.styleSheet documentation> 
getStyleSheetUnchecked ::
                       (MonadIO m) => CSSImportRule -> m CSSStyleSheet
getStyleSheetUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getStyleSheet (self)))