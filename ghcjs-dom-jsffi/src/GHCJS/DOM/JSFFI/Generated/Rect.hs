{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Rect
       (js_getTop, getTop, getTopUnchecked, js_getRight, getRight,
        getRightUnchecked, js_getBottom, getBottom, getBottomUnchecked,
        js_getLeft, getLeft, getLeftUnchecked, Rect, castToRect, gTypeRect)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
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
 
foreign import javascript unsafe "$1[\"top\"]" js_getTop ::
        Rect -> IO (Nullable CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.top Mozilla Rect.top documentation> 
getTop :: (MonadIO m) => Rect -> m (Maybe CSSPrimitiveValue)
getTop self = liftIO (nullableToMaybe <$> (js_getTop (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.top Mozilla Rect.top documentation> 
getTopUnchecked :: (MonadIO m) => Rect -> m CSSPrimitiveValue
getTopUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getTop (self)))
 
foreign import javascript unsafe "$1[\"right\"]" js_getRight ::
        Rect -> IO (Nullable CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.right Mozilla Rect.right documentation> 
getRight :: (MonadIO m) => Rect -> m (Maybe CSSPrimitiveValue)
getRight self = liftIO (nullableToMaybe <$> (js_getRight (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.right Mozilla Rect.right documentation> 
getRightUnchecked :: (MonadIO m) => Rect -> m CSSPrimitiveValue
getRightUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRight (self)))
 
foreign import javascript unsafe "$1[\"bottom\"]" js_getBottom ::
        Rect -> IO (Nullable CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.bottom Mozilla Rect.bottom documentation> 
getBottom :: (MonadIO m) => Rect -> m (Maybe CSSPrimitiveValue)
getBottom self = liftIO (nullableToMaybe <$> (js_getBottom (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.bottom Mozilla Rect.bottom documentation> 
getBottomUnchecked :: (MonadIO m) => Rect -> m CSSPrimitiveValue
getBottomUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getBottom (self)))
 
foreign import javascript unsafe "$1[\"left\"]" js_getLeft ::
        Rect -> IO (Nullable CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.left Mozilla Rect.left documentation> 
getLeft :: (MonadIO m) => Rect -> m (Maybe CSSPrimitiveValue)
getLeft self = liftIO (nullableToMaybe <$> (js_getLeft (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.left Mozilla Rect.left documentation> 
getLeftUnchecked :: (MonadIO m) => Rect -> m CSSPrimitiveValue
getLeftUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getLeft (self)))