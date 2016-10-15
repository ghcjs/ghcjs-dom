{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGTextPositioningElement
       (js_getX, getX, getXUnchecked, js_getY, getY, getYUnchecked,
        js_getDx, getDx, getDxUnchecked, js_getDy, getDy, getDyUnchecked,
        js_getRotate, getRotate, getRotateUnchecked,
        SVGTextPositioningElement(..), gTypeSVGTextPositioningElement,
        IsSVGTextPositioningElement, toSVGTextPositioningElement)
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
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGTextPositioningElement -> IO (Nullable SVGAnimatedLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.x Mozilla SVGTextPositioningElement.x documentation> 
getX ::
     (MonadIO m, IsSVGTextPositioningElement self) =>
       self -> m (Maybe SVGAnimatedLengthList)
getX self
  = liftIO
      (nullableToMaybe <$> (js_getX (toSVGTextPositioningElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.x Mozilla SVGTextPositioningElement.x documentation> 
getXUnchecked ::
              (MonadIO m, IsSVGTextPositioningElement self) =>
                self -> m SVGAnimatedLengthList
getXUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getX (toSVGTextPositioningElement self)))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGTextPositioningElement -> IO (Nullable SVGAnimatedLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.y Mozilla SVGTextPositioningElement.y documentation> 
getY ::
     (MonadIO m, IsSVGTextPositioningElement self) =>
       self -> m (Maybe SVGAnimatedLengthList)
getY self
  = liftIO
      (nullableToMaybe <$> (js_getY (toSVGTextPositioningElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.y Mozilla SVGTextPositioningElement.y documentation> 
getYUnchecked ::
              (MonadIO m, IsSVGTextPositioningElement self) =>
                self -> m SVGAnimatedLengthList
getYUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getY (toSVGTextPositioningElement self)))
 
foreign import javascript unsafe "$1[\"dx\"]" js_getDx ::
        SVGTextPositioningElement -> IO (Nullable SVGAnimatedLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dx Mozilla SVGTextPositioningElement.dx documentation> 
getDx ::
      (MonadIO m, IsSVGTextPositioningElement self) =>
        self -> m (Maybe SVGAnimatedLengthList)
getDx self
  = liftIO
      (nullableToMaybe <$> (js_getDx (toSVGTextPositioningElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dx Mozilla SVGTextPositioningElement.dx documentation> 
getDxUnchecked ::
               (MonadIO m, IsSVGTextPositioningElement self) =>
                 self -> m SVGAnimatedLengthList
getDxUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getDx (toSVGTextPositioningElement self)))
 
foreign import javascript unsafe "$1[\"dy\"]" js_getDy ::
        SVGTextPositioningElement -> IO (Nullable SVGAnimatedLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dy Mozilla SVGTextPositioningElement.dy documentation> 
getDy ::
      (MonadIO m, IsSVGTextPositioningElement self) =>
        self -> m (Maybe SVGAnimatedLengthList)
getDy self
  = liftIO
      (nullableToMaybe <$> (js_getDy (toSVGTextPositioningElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dy Mozilla SVGTextPositioningElement.dy documentation> 
getDyUnchecked ::
               (MonadIO m, IsSVGTextPositioningElement self) =>
                 self -> m SVGAnimatedLengthList
getDyUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getDy (toSVGTextPositioningElement self)))
 
foreign import javascript unsafe "$1[\"rotate\"]" js_getRotate ::
        SVGTextPositioningElement -> IO (Nullable SVGAnimatedNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.rotate Mozilla SVGTextPositioningElement.rotate documentation> 
getRotate ::
          (MonadIO m, IsSVGTextPositioningElement self) =>
            self -> m (Maybe SVGAnimatedNumberList)
getRotate self
  = liftIO
      (nullableToMaybe <$>
         (js_getRotate (toSVGTextPositioningElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.rotate Mozilla SVGTextPositioningElement.rotate documentation> 
getRotateUnchecked ::
                   (MonadIO m, IsSVGTextPositioningElement self) =>
                     self -> m SVGAnimatedNumberList
getRotateUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getRotate (toSVGTextPositioningElement self)))