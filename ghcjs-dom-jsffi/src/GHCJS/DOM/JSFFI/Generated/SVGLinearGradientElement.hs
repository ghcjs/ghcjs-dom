{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGLinearGradientElement
       (js_getX1, getX1, getX1Unchecked, js_getY1, getY1, getY1Unchecked,
        js_getX2, getX2, getX2Unchecked, js_getY2, getY2, getY2Unchecked,
        SVGLinearGradientElement(..), gTypeSVGLinearGradientElement)
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
 
foreign import javascript unsafe "$1[\"x1\"]" js_getX1 ::
        SVGLinearGradientElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.x1 Mozilla SVGLinearGradientElement.x1 documentation> 
getX1 ::
      (MonadIO m) =>
        SVGLinearGradientElement -> m (Maybe SVGAnimatedLength)
getX1 self = liftIO (nullableToMaybe <$> (js_getX1 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.x1 Mozilla SVGLinearGradientElement.x1 documentation> 
getX1Unchecked ::
               (MonadIO m) => SVGLinearGradientElement -> m SVGAnimatedLength
getX1Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getX1 (self)))
 
foreign import javascript unsafe "$1[\"y1\"]" js_getY1 ::
        SVGLinearGradientElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.y1 Mozilla SVGLinearGradientElement.y1 documentation> 
getY1 ::
      (MonadIO m) =>
        SVGLinearGradientElement -> m (Maybe SVGAnimatedLength)
getY1 self = liftIO (nullableToMaybe <$> (js_getY1 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.y1 Mozilla SVGLinearGradientElement.y1 documentation> 
getY1Unchecked ::
               (MonadIO m) => SVGLinearGradientElement -> m SVGAnimatedLength
getY1Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getY1 (self)))
 
foreign import javascript unsafe "$1[\"x2\"]" js_getX2 ::
        SVGLinearGradientElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.x2 Mozilla SVGLinearGradientElement.x2 documentation> 
getX2 ::
      (MonadIO m) =>
        SVGLinearGradientElement -> m (Maybe SVGAnimatedLength)
getX2 self = liftIO (nullableToMaybe <$> (js_getX2 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.x2 Mozilla SVGLinearGradientElement.x2 documentation> 
getX2Unchecked ::
               (MonadIO m) => SVGLinearGradientElement -> m SVGAnimatedLength
getX2Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getX2 (self)))
 
foreign import javascript unsafe "$1[\"y2\"]" js_getY2 ::
        SVGLinearGradientElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.y2 Mozilla SVGLinearGradientElement.y2 documentation> 
getY2 ::
      (MonadIO m) =>
        SVGLinearGradientElement -> m (Maybe SVGAnimatedLength)
getY2 self = liftIO (nullableToMaybe <$> (js_getY2 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement.y2 Mozilla SVGLinearGradientElement.y2 documentation> 
getY2Unchecked ::
               (MonadIO m) => SVGLinearGradientElement -> m SVGAnimatedLength
getY2Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getY2 (self)))