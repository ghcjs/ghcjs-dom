{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPolylineElement
       (js_getPoints, getPoints, getPointsUnchecked, js_getAnimatedPoints,
        getAnimatedPoints, getAnimatedPointsUnchecked, SVGPolylineElement,
        castToSVGPolylineElement, gTypeSVGPolylineElement)
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
 
foreign import javascript unsafe "$1[\"points\"]" js_getPoints ::
        SVGPolylineElement -> IO (Nullable SVGPointList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement.points Mozilla SVGPolylineElement.points documentation> 
getPoints ::
          (MonadIO m) => SVGPolylineElement -> m (Maybe SVGPointList)
getPoints self = liftIO (nullableToMaybe <$> (js_getPoints (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement.points Mozilla SVGPolylineElement.points documentation> 
getPointsUnchecked ::
                   (MonadIO m) => SVGPolylineElement -> m SVGPointList
getPointsUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getPoints (self)))
 
foreign import javascript unsafe "$1[\"animatedPoints\"]"
        js_getAnimatedPoints ::
        SVGPolylineElement -> IO (Nullable SVGPointList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement.animatedPoints Mozilla SVGPolylineElement.animatedPoints documentation> 
getAnimatedPoints ::
                  (MonadIO m) => SVGPolylineElement -> m (Maybe SVGPointList)
getAnimatedPoints self
  = liftIO (nullableToMaybe <$> (js_getAnimatedPoints (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement.animatedPoints Mozilla SVGPolylineElement.animatedPoints documentation> 
getAnimatedPointsUnchecked ::
                           (MonadIO m) => SVGPolylineElement -> m SVGPointList
getAnimatedPointsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getAnimatedPoints (self)))