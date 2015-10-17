{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathElement
       (js_getTotalLength, getTotalLength, js_getPointAtLength,
        getPointAtLength, js_getPathSegAtLength, getPathSegAtLength,
        js_createSVGPathSegClosePath, createSVGPathSegClosePath,
        js_createSVGPathSegMovetoAbs, createSVGPathSegMovetoAbs,
        js_createSVGPathSegMovetoRel, createSVGPathSegMovetoRel,
        js_createSVGPathSegLinetoAbs, createSVGPathSegLinetoAbs,
        js_createSVGPathSegLinetoRel, createSVGPathSegLinetoRel,
        js_createSVGPathSegCurvetoCubicAbs,
        createSVGPathSegCurvetoCubicAbs,
        js_createSVGPathSegCurvetoCubicRel,
        createSVGPathSegCurvetoCubicRel,
        js_createSVGPathSegCurvetoQuadraticAbs,
        createSVGPathSegCurvetoQuadraticAbs,
        js_createSVGPathSegCurvetoQuadraticRel,
        createSVGPathSegCurvetoQuadraticRel, js_createSVGPathSegArcAbs,
        createSVGPathSegArcAbs, js_createSVGPathSegArcRel,
        createSVGPathSegArcRel, js_createSVGPathSegLinetoHorizontalAbs,
        createSVGPathSegLinetoHorizontalAbs,
        js_createSVGPathSegLinetoHorizontalRel,
        createSVGPathSegLinetoHorizontalRel,
        js_createSVGPathSegLinetoVerticalAbs,
        createSVGPathSegLinetoVerticalAbs,
        js_createSVGPathSegLinetoVerticalRel,
        createSVGPathSegLinetoVerticalRel,
        js_createSVGPathSegCurvetoCubicSmoothAbs,
        createSVGPathSegCurvetoCubicSmoothAbs,
        js_createSVGPathSegCurvetoCubicSmoothRel,
        createSVGPathSegCurvetoCubicSmoothRel,
        js_createSVGPathSegCurvetoQuadraticSmoothAbs,
        createSVGPathSegCurvetoQuadraticSmoothAbs,
        js_createSVGPathSegCurvetoQuadraticSmoothRel,
        createSVGPathSegCurvetoQuadraticSmoothRel, js_getPathLength,
        getPathLength, js_getPathSegList, getPathSegList,
        js_getNormalizedPathSegList, getNormalizedPathSegList,
        js_getAnimatedPathSegList, getAnimatedPathSegList,
        js_getAnimatedNormalizedPathSegList,
        getAnimatedNormalizedPathSegList, SVGPathElement,
        castToSVGPathElement, gTypeSVGPathElement)
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
 
foreign import javascript unsafe "$1[\"getTotalLength\"]()"
        js_getTotalLength :: SVGPathElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getTotalLength Mozilla SVGPathElement.getTotalLength documentation> 
getTotalLength :: (MonadIO m) => SVGPathElement -> m Float
getTotalLength self = liftIO (js_getTotalLength (self))
 
foreign import javascript unsafe "$1[\"getPointAtLength\"]($2)"
        js_getPointAtLength ::
        SVGPathElement -> Float -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPointAtLength Mozilla SVGPathElement.getPointAtLength documentation> 
getPointAtLength ::
                 (MonadIO m) => SVGPathElement -> Float -> m (Maybe SVGPoint)
getPointAtLength self distance
  = liftIO
      (nullableToMaybe <$> (js_getPointAtLength (self) distance))
 
foreign import javascript unsafe "$1[\"getPathSegAtLength\"]($2)"
        js_getPathSegAtLength :: SVGPathElement -> Float -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPathSegAtLength Mozilla SVGPathElement.getPathSegAtLength documentation> 
getPathSegAtLength ::
                   (MonadIO m) => SVGPathElement -> Float -> m Word
getPathSegAtLength self distance
  = liftIO (js_getPathSegAtLength (self) distance)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegClosePath\"]()" js_createSVGPathSegClosePath
        :: SVGPathElement -> IO (Nullable SVGPathSegClosePath)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
createSVGPathSegClosePath ::
                          (MonadIO m) => SVGPathElement -> m (Maybe SVGPathSegClosePath)
createSVGPathSegClosePath self
  = liftIO
      (nullableToMaybe <$> (js_createSVGPathSegClosePath (self)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegMovetoAbs\"]($2,\n$3)"
        js_createSVGPathSegMovetoAbs ::
        SVGPathElement ->
          Float -> Float -> IO (Nullable SVGPathSegMovetoAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
createSVGPathSegMovetoAbs ::
                          (MonadIO m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegMovetoAbs)
createSVGPathSegMovetoAbs self x y
  = liftIO
      (nullableToMaybe <$> (js_createSVGPathSegMovetoAbs (self) x y))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegMovetoRel\"]($2,\n$3)"
        js_createSVGPathSegMovetoRel ::
        SVGPathElement ->
          Float -> Float -> IO (Nullable SVGPathSegMovetoRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
createSVGPathSegMovetoRel ::
                          (MonadIO m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegMovetoRel)
createSVGPathSegMovetoRel self x y
  = liftIO
      (nullableToMaybe <$> (js_createSVGPathSegMovetoRel (self) x y))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoAbs\"]($2,\n$3)"
        js_createSVGPathSegLinetoAbs ::
        SVGPathElement ->
          Float -> Float -> IO (Nullable SVGPathSegLinetoAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
createSVGPathSegLinetoAbs ::
                          (MonadIO m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegLinetoAbs)
createSVGPathSegLinetoAbs self x y
  = liftIO
      (nullableToMaybe <$> (js_createSVGPathSegLinetoAbs (self) x y))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoRel\"]($2,\n$3)"
        js_createSVGPathSegLinetoRel ::
        SVGPathElement ->
          Float -> Float -> IO (Nullable SVGPathSegLinetoRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
createSVGPathSegLinetoRel ::
                          (MonadIO m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegLinetoRel)
createSVGPathSegLinetoRel self x y
  = liftIO
      (nullableToMaybe <$> (js_createSVGPathSegLinetoRel (self) x y))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicAbs\"]($2,\n$3, $4, $5, $6, $7)"
        js_createSVGPathSegCurvetoCubicAbs ::
        SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Float -> IO (Nullable SVGPathSegCurvetoCubicAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicAbs documentation> 
createSVGPathSegCurvetoCubicAbs ::
                                (MonadIO m) =>
                                  SVGPathElement ->
                                    Float ->
                                      Float ->
                                        Float ->
                                          Float ->
                                            Float -> Float -> m (Maybe SVGPathSegCurvetoCubicAbs)
createSVGPathSegCurvetoCubicAbs self x y x1 y1 x2 y2
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGPathSegCurvetoCubicAbs (self) x y x1 y1 x2 y2))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicRel\"]($2,\n$3, $4, $5, $6, $7)"
        js_createSVGPathSegCurvetoCubicRel ::
        SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Float -> IO (Nullable SVGPathSegCurvetoCubicRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicRel documentation> 
createSVGPathSegCurvetoCubicRel ::
                                (MonadIO m) =>
                                  SVGPathElement ->
                                    Float ->
                                      Float ->
                                        Float ->
                                          Float ->
                                            Float -> Float -> m (Maybe SVGPathSegCurvetoCubicRel)
createSVGPathSegCurvetoCubicRel self x y x1 y1 x2 y2
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGPathSegCurvetoCubicRel (self) x y x1 y1 x2 y2))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticAbs\"]($2,\n$3, $4, $5)"
        js_createSVGPathSegCurvetoQuadraticAbs ::
        SVGPathElement ->
          Float ->
            Float ->
              Float -> Float -> IO (Nullable SVGPathSegCurvetoQuadraticAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticAbs documentation> 
createSVGPathSegCurvetoQuadraticAbs ::
                                    (MonadIO m) =>
                                      SVGPathElement ->
                                        Float ->
                                          Float ->
                                            Float ->
                                              Float -> m (Maybe SVGPathSegCurvetoQuadraticAbs)
createSVGPathSegCurvetoQuadraticAbs self x y x1 y1
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGPathSegCurvetoQuadraticAbs (self) x y x1 y1))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticRel\"]($2,\n$3, $4, $5)"
        js_createSVGPathSegCurvetoQuadraticRel ::
        SVGPathElement ->
          Float ->
            Float ->
              Float -> Float -> IO (Nullable SVGPathSegCurvetoQuadraticRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticRel documentation> 
createSVGPathSegCurvetoQuadraticRel ::
                                    (MonadIO m) =>
                                      SVGPathElement ->
                                        Float ->
                                          Float ->
                                            Float ->
                                              Float -> m (Maybe SVGPathSegCurvetoQuadraticRel)
createSVGPathSegCurvetoQuadraticRel self x y x1 y1
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGPathSegCurvetoQuadraticRel (self) x y x1 y1))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegArcAbs\"]($2,\n$3, $4, $5, $6, $7, $8)"
        js_createSVGPathSegArcAbs ::
        SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Bool -> Bool -> IO (Nullable SVGPathSegArcAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcAbs Mozilla SVGPathElement.createSVGPathSegArcAbs documentation> 
createSVGPathSegArcAbs ::
                       (MonadIO m) =>
                         SVGPathElement ->
                           Float ->
                             Float ->
                               Float ->
                                 Float -> Float -> Bool -> Bool -> m (Maybe SVGPathSegArcAbs)
createSVGPathSegArcAbs self x y r1 r2 angle largeArcFlag sweepFlag
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGPathSegArcAbs (self) x y r1 r2 angle largeArcFlag
            sweepFlag))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegArcRel\"]($2,\n$3, $4, $5, $6, $7, $8)"
        js_createSVGPathSegArcRel ::
        SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Bool -> Bool -> IO (Nullable SVGPathSegArcRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcRel Mozilla SVGPathElement.createSVGPathSegArcRel documentation> 
createSVGPathSegArcRel ::
                       (MonadIO m) =>
                         SVGPathElement ->
                           Float ->
                             Float ->
                               Float ->
                                 Float -> Float -> Bool -> Bool -> m (Maybe SVGPathSegArcRel)
createSVGPathSegArcRel self x y r1 r2 angle largeArcFlag sweepFlag
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGPathSegArcRel (self) x y r1 r2 angle largeArcFlag
            sweepFlag))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoHorizontalAbs\"]($2)"
        js_createSVGPathSegLinetoHorizontalAbs ::
        SVGPathElement ->
          Float -> IO (Nullable SVGPathSegLinetoHorizontalAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
createSVGPathSegLinetoHorizontalAbs ::
                                    (MonadIO m) =>
                                      SVGPathElement ->
                                        Float -> m (Maybe SVGPathSegLinetoHorizontalAbs)
createSVGPathSegLinetoHorizontalAbs self x
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGPathSegLinetoHorizontalAbs (self) x))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoHorizontalRel\"]($2)"
        js_createSVGPathSegLinetoHorizontalRel ::
        SVGPathElement ->
          Float -> IO (Nullable SVGPathSegLinetoHorizontalRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
createSVGPathSegLinetoHorizontalRel ::
                                    (MonadIO m) =>
                                      SVGPathElement ->
                                        Float -> m (Maybe SVGPathSegLinetoHorizontalRel)
createSVGPathSegLinetoHorizontalRel self x
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGPathSegLinetoHorizontalRel (self) x))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoVerticalAbs\"]($2)"
        js_createSVGPathSegLinetoVerticalAbs ::
        SVGPathElement ->
          Float -> IO (Nullable SVGPathSegLinetoVerticalAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
createSVGPathSegLinetoVerticalAbs ::
                                  (MonadIO m) =>
                                    SVGPathElement -> Float -> m (Maybe SVGPathSegLinetoVerticalAbs)
createSVGPathSegLinetoVerticalAbs self y
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGPathSegLinetoVerticalAbs (self) y))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoVerticalRel\"]($2)"
        js_createSVGPathSegLinetoVerticalRel ::
        SVGPathElement ->
          Float -> IO (Nullable SVGPathSegLinetoVerticalRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
createSVGPathSegLinetoVerticalRel ::
                                  (MonadIO m) =>
                                    SVGPathElement -> Float -> m (Maybe SVGPathSegLinetoVerticalRel)
createSVGPathSegLinetoVerticalRel self y
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGPathSegLinetoVerticalRel (self) y))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicSmoothAbs\"]($2,\n$3, $4, $5)"
        js_createSVGPathSegCurvetoCubicSmoothAbs ::
        SVGPathElement ->
          Float ->
            Float ->
              Float -> Float -> IO (Nullable SVGPathSegCurvetoCubicSmoothAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs documentation> 
createSVGPathSegCurvetoCubicSmoothAbs ::
                                      (MonadIO m) =>
                                        SVGPathElement ->
                                          Float ->
                                            Float ->
                                              Float ->
                                                Float -> m (Maybe SVGPathSegCurvetoCubicSmoothAbs)
createSVGPathSegCurvetoCubicSmoothAbs self x y x2 y2
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGPathSegCurvetoCubicSmoothAbs (self) x y x2 y2))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicSmoothRel\"]($2,\n$3, $4, $5)"
        js_createSVGPathSegCurvetoCubicSmoothRel ::
        SVGPathElement ->
          Float ->
            Float ->
              Float -> Float -> IO (Nullable SVGPathSegCurvetoCubicSmoothRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel documentation> 
createSVGPathSegCurvetoCubicSmoothRel ::
                                      (MonadIO m) =>
                                        SVGPathElement ->
                                          Float ->
                                            Float ->
                                              Float ->
                                                Float -> m (Maybe SVGPathSegCurvetoCubicSmoothRel)
createSVGPathSegCurvetoCubicSmoothRel self x y x2 y2
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGPathSegCurvetoCubicSmoothRel (self) x y x2 y2))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticSmoothAbs\"]($2,\n$3)"
        js_createSVGPathSegCurvetoQuadraticSmoothAbs ::
        SVGPathElement ->
          Float -> Float -> IO (Nullable SVGPathSegCurvetoQuadraticSmoothAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs documentation> 
createSVGPathSegCurvetoQuadraticSmoothAbs ::
                                          (MonadIO m) =>
                                            SVGPathElement ->
                                              Float ->
                                                Float ->
                                                  m (Maybe SVGPathSegCurvetoQuadraticSmoothAbs)
createSVGPathSegCurvetoQuadraticSmoothAbs self x y
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGPathSegCurvetoQuadraticSmoothAbs (self) x y))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticSmoothRel\"]($2,\n$3)"
        js_createSVGPathSegCurvetoQuadraticSmoothRel ::
        SVGPathElement ->
          Float -> Float -> IO (Nullable SVGPathSegCurvetoQuadraticSmoothRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel documentation> 
createSVGPathSegCurvetoQuadraticSmoothRel ::
                                          (MonadIO m) =>
                                            SVGPathElement ->
                                              Float ->
                                                Float ->
                                                  m (Maybe SVGPathSegCurvetoQuadraticSmoothRel)
createSVGPathSegCurvetoQuadraticSmoothRel self x y
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGPathSegCurvetoQuadraticSmoothRel (self) x y))
 
foreign import javascript unsafe "$1[\"pathLength\"]"
        js_getPathLength ::
        SVGPathElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathLength Mozilla SVGPathElement.pathLength documentation> 
getPathLength ::
              (MonadIO m) => SVGPathElement -> m (Maybe SVGAnimatedNumber)
getPathLength self
  = liftIO (nullableToMaybe <$> (js_getPathLength (self)))
 
foreign import javascript unsafe "$1[\"pathSegList\"]"
        js_getPathSegList :: SVGPathElement -> IO (Nullable SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathSegList Mozilla SVGPathElement.pathSegList documentation> 
getPathSegList ::
               (MonadIO m) => SVGPathElement -> m (Maybe SVGPathSegList)
getPathSegList self
  = liftIO (nullableToMaybe <$> (js_getPathSegList (self)))
 
foreign import javascript unsafe "$1[\"normalizedPathSegList\"]"
        js_getNormalizedPathSegList ::
        SVGPathElement -> IO (Nullable SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.normalizedPathSegList Mozilla SVGPathElement.normalizedPathSegList documentation> 
getNormalizedPathSegList ::
                         (MonadIO m) => SVGPathElement -> m (Maybe SVGPathSegList)
getNormalizedPathSegList self
  = liftIO (nullableToMaybe <$> (js_getNormalizedPathSegList (self)))
 
foreign import javascript unsafe "$1[\"animatedPathSegList\"]"
        js_getAnimatedPathSegList ::
        SVGPathElement -> IO (Nullable SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedPathSegList Mozilla SVGPathElement.animatedPathSegList documentation> 
getAnimatedPathSegList ::
                       (MonadIO m) => SVGPathElement -> m (Maybe SVGPathSegList)
getAnimatedPathSegList self
  = liftIO (nullableToMaybe <$> (js_getAnimatedPathSegList (self)))
 
foreign import javascript unsafe
        "$1[\"animatedNormalizedPathSegList\"]"
        js_getAnimatedNormalizedPathSegList ::
        SVGPathElement -> IO (Nullable SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedNormalizedPathSegList Mozilla SVGPathElement.animatedNormalizedPathSegList documentation> 
getAnimatedNormalizedPathSegList ::
                                 (MonadIO m) => SVGPathElement -> m (Maybe SVGPathSegList)
getAnimatedNormalizedPathSegList self
  = liftIO
      (nullableToMaybe <$> (js_getAnimatedNormalizedPathSegList (self)))