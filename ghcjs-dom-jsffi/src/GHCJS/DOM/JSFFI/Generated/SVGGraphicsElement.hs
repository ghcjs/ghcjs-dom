{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGGraphicsElement
       (js_getBBox, getBBox, js_getCTM, getCTM, js_getScreenCTM,
        getScreenCTM, js_getTransformToElement, getTransformToElement,
        js_getTransform, getTransform, js_getNearestViewportElement,
        getNearestViewportElement, js_getFarthestViewportElement,
        getFarthestViewportElement, SVGGraphicsElement,
        castToSVGGraphicsElement, gTypeSVGGraphicsElement,
        IsSVGGraphicsElement, toSVGGraphicsElement)
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
 
foreign import javascript unsafe "$1[\"getBBox\"]()" js_getBBox ::
        SVGGraphicsElement -> IO (Nullable SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getBBox Mozilla SVGGraphicsElement.getBBox documentation> 
getBBox ::
        (MonadIO m, IsSVGGraphicsElement self) => self -> m (Maybe SVGRect)
getBBox self
  = liftIO
      (nullableToMaybe <$> (js_getBBox (toSVGGraphicsElement self)))
 
foreign import javascript unsafe "$1[\"getCTM\"]()" js_getCTM ::
        SVGGraphicsElement -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getCTM Mozilla SVGGraphicsElement.getCTM documentation> 
getCTM ::
       (MonadIO m, IsSVGGraphicsElement self) =>
         self -> m (Maybe SVGMatrix)
getCTM self
  = liftIO
      (nullableToMaybe <$> (js_getCTM (toSVGGraphicsElement self)))
 
foreign import javascript unsafe "$1[\"getScreenCTM\"]()"
        js_getScreenCTM :: SVGGraphicsElement -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getScreenCTM Mozilla SVGGraphicsElement.getScreenCTM documentation> 
getScreenCTM ::
             (MonadIO m, IsSVGGraphicsElement self) =>
               self -> m (Maybe SVGMatrix)
getScreenCTM self
  = liftIO
      (nullableToMaybe <$> (js_getScreenCTM (toSVGGraphicsElement self)))
 
foreign import javascript unsafe
        "$1[\"getTransformToElement\"]($2)" js_getTransformToElement ::
        SVGGraphicsElement ->
          Nullable SVGElement -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getTransformToElement Mozilla SVGGraphicsElement.getTransformToElement documentation> 
getTransformToElement ::
                      (MonadIO m, IsSVGGraphicsElement self, IsSVGElement element) =>
                        self -> Maybe element -> m (Maybe SVGMatrix)
getTransformToElement self element
  = liftIO
      (nullableToMaybe <$>
         (js_getTransformToElement (toSVGGraphicsElement self)
            (maybeToNullable (fmap toSVGElement element))))
 
foreign import javascript unsafe "$1[\"transform\"]"
        js_getTransform ::
        SVGGraphicsElement -> IO (Nullable SVGAnimatedTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.transform Mozilla SVGGraphicsElement.transform documentation> 
getTransform ::
             (MonadIO m, IsSVGGraphicsElement self) =>
               self -> m (Maybe SVGAnimatedTransformList)
getTransform self
  = liftIO
      (nullableToMaybe <$> (js_getTransform (toSVGGraphicsElement self)))
 
foreign import javascript unsafe "$1[\"nearestViewportElement\"]"
        js_getNearestViewportElement ::
        SVGGraphicsElement -> IO (Nullable SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.nearestViewportElement Mozilla SVGGraphicsElement.nearestViewportElement documentation> 
getNearestViewportElement ::
                          (MonadIO m, IsSVGGraphicsElement self) =>
                            self -> m (Maybe SVGElement)
getNearestViewportElement self
  = liftIO
      (nullableToMaybe <$>
         (js_getNearestViewportElement (toSVGGraphicsElement self)))
 
foreign import javascript unsafe "$1[\"farthestViewportElement\"]"
        js_getFarthestViewportElement ::
        SVGGraphicsElement -> IO (Nullable SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.farthestViewportElement Mozilla SVGGraphicsElement.farthestViewportElement documentation> 
getFarthestViewportElement ::
                           (MonadIO m, IsSVGGraphicsElement self) =>
                             self -> m (Maybe SVGElement)
getFarthestViewportElement self
  = liftIO
      (nullableToMaybe <$>
         (js_getFarthestViewportElement (toSVGGraphicsElement self)))