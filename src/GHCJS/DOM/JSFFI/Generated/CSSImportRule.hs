{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CSSImportRule
       (js_getHref, getHref, js_getMedia, getMedia, js_getStyleSheet,
        getStyleSheet, CSSImportRule, castToCSSImportRule,
        gTypeCSSImportRule)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        CSSImportRule -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.href Mozilla CSSImportRule.href documentation> 
getHref ::
        (MonadIO m, FromJSString result) =>
          CSSImportRule -> m (Maybe result)
getHref self = liftIO (fromMaybeJSString <$> (js_getHref (self)))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        CSSImportRule -> IO (Nullable MediaList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.media Mozilla CSSImportRule.media documentation> 
getMedia :: (MonadIO m) => CSSImportRule -> m (Maybe MediaList)
getMedia self = liftIO (nullableToMaybe <$> (js_getMedia (self)))
 
foreign import javascript unsafe "$1[\"styleSheet\"]"
        js_getStyleSheet :: CSSImportRule -> IO (Nullable CSSStyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.styleSheet Mozilla CSSImportRule.styleSheet documentation> 
getStyleSheet ::
              (MonadIO m) => CSSImportRule -> m (Maybe CSSStyleSheet)
getStyleSheet self
  = liftIO (nullableToMaybe <$> (js_getStyleSheet (self)))