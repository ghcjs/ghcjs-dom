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
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"getTotalLength\"]()"
        js_getTotalLength :: JSRef SVGPathElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getTotalLength Mozilla SVGPathElement.getTotalLength documentation> 
getTotalLength :: (MonadIO m) => SVGPathElement -> m Float
getTotalLength self
  = liftIO (js_getTotalLength (unSVGPathElement self))
 
foreign import javascript unsafe "$1[\"getPointAtLength\"]($2)"
        js_getPointAtLength ::
        JSRef SVGPathElement -> Float -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPointAtLength Mozilla SVGPathElement.getPointAtLength documentation> 
getPointAtLength ::
                 (MonadIO m) => SVGPathElement -> Float -> m (Maybe SVGPoint)
getPointAtLength self distance
  = liftIO
      ((js_getPointAtLength (unSVGPathElement self) distance) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"getPathSegAtLength\"]($2)"
        js_getPathSegAtLength :: JSRef SVGPathElement -> Float -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPathSegAtLength Mozilla SVGPathElement.getPathSegAtLength documentation> 
getPathSegAtLength ::
                   (MonadIO m) => SVGPathElement -> Float -> m Word
getPathSegAtLength self distance
  = liftIO (js_getPathSegAtLength (unSVGPathElement self) distance)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegClosePath\"]()" js_createSVGPathSegClosePath
        :: JSRef SVGPathElement -> IO (JSRef SVGPathSegClosePath)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
createSVGPathSegClosePath ::
                          (MonadIO m) => SVGPathElement -> m (Maybe SVGPathSegClosePath)
createSVGPathSegClosePath self
  = liftIO
      ((js_createSVGPathSegClosePath (unSVGPathElement self)) >>=
         fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegMovetoAbs\"]($2,\n$3)"
        js_createSVGPathSegMovetoAbs ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegMovetoAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
createSVGPathSegMovetoAbs ::
                          (MonadIO m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegMovetoAbs)
createSVGPathSegMovetoAbs self x y
  = liftIO
      ((js_createSVGPathSegMovetoAbs (unSVGPathElement self) x y) >>=
         fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegMovetoRel\"]($2,\n$3)"
        js_createSVGPathSegMovetoRel ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegMovetoRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
createSVGPathSegMovetoRel ::
                          (MonadIO m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegMovetoRel)
createSVGPathSegMovetoRel self x y
  = liftIO
      ((js_createSVGPathSegMovetoRel (unSVGPathElement self) x y) >>=
         fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoAbs\"]($2,\n$3)"
        js_createSVGPathSegLinetoAbs ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegLinetoAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
createSVGPathSegLinetoAbs ::
                          (MonadIO m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegLinetoAbs)
createSVGPathSegLinetoAbs self x y
  = liftIO
      ((js_createSVGPathSegLinetoAbs (unSVGPathElement self) x y) >>=
         fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoRel\"]($2,\n$3)"
        js_createSVGPathSegLinetoRel ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegLinetoRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
createSVGPathSegLinetoRel ::
                          (MonadIO m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegLinetoRel)
createSVGPathSegLinetoRel self x y
  = liftIO
      ((js_createSVGPathSegLinetoRel (unSVGPathElement self) x y) >>=
         fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicAbs\"]($2,\n$3, $4, $5, $6, $7)"
        js_createSVGPathSegCurvetoCubicAbs ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Float -> IO (JSRef SVGPathSegCurvetoCubicAbs)

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
      ((js_createSVGPathSegCurvetoCubicAbs (unSVGPathElement self) x y x1
          y1
          x2
          y2)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicRel\"]($2,\n$3, $4, $5, $6, $7)"
        js_createSVGPathSegCurvetoCubicRel ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Float -> IO (JSRef SVGPathSegCurvetoCubicRel)

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
      ((js_createSVGPathSegCurvetoCubicRel (unSVGPathElement self) x y x1
          y1
          x2
          y2)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticAbs\"]($2,\n$3, $4, $5)"
        js_createSVGPathSegCurvetoQuadraticAbs ::
        JSRef SVGPathElement ->
          Float ->
            Float -> Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticAbs)

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
      ((js_createSVGPathSegCurvetoQuadraticAbs (unSVGPathElement self) x
          y
          x1
          y1)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticRel\"]($2,\n$3, $4, $5)"
        js_createSVGPathSegCurvetoQuadraticRel ::
        JSRef SVGPathElement ->
          Float ->
            Float -> Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticRel)

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
      ((js_createSVGPathSegCurvetoQuadraticRel (unSVGPathElement self) x
          y
          x1
          y1)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegArcAbs\"]($2,\n$3, $4, $5, $6, $7, $8)"
        js_createSVGPathSegArcAbs ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Bool -> Bool -> IO (JSRef SVGPathSegArcAbs)

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
      ((js_createSVGPathSegArcAbs (unSVGPathElement self) x y r1 r2 angle
          largeArcFlag
          sweepFlag)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegArcRel\"]($2,\n$3, $4, $5, $6, $7, $8)"
        js_createSVGPathSegArcRel ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Bool -> Bool -> IO (JSRef SVGPathSegArcRel)

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
      ((js_createSVGPathSegArcRel (unSVGPathElement self) x y r1 r2 angle
          largeArcFlag
          sweepFlag)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoHorizontalAbs\"]($2)"
        js_createSVGPathSegLinetoHorizontalAbs ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoHorizontalAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
createSVGPathSegLinetoHorizontalAbs ::
                                    (MonadIO m) =>
                                      SVGPathElement ->
                                        Float -> m (Maybe SVGPathSegLinetoHorizontalAbs)
createSVGPathSegLinetoHorizontalAbs self x
  = liftIO
      ((js_createSVGPathSegLinetoHorizontalAbs (unSVGPathElement self) x)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoHorizontalRel\"]($2)"
        js_createSVGPathSegLinetoHorizontalRel ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoHorizontalRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
createSVGPathSegLinetoHorizontalRel ::
                                    (MonadIO m) =>
                                      SVGPathElement ->
                                        Float -> m (Maybe SVGPathSegLinetoHorizontalRel)
createSVGPathSegLinetoHorizontalRel self x
  = liftIO
      ((js_createSVGPathSegLinetoHorizontalRel (unSVGPathElement self) x)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoVerticalAbs\"]($2)"
        js_createSVGPathSegLinetoVerticalAbs ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoVerticalAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
createSVGPathSegLinetoVerticalAbs ::
                                  (MonadIO m) =>
                                    SVGPathElement -> Float -> m (Maybe SVGPathSegLinetoVerticalAbs)
createSVGPathSegLinetoVerticalAbs self y
  = liftIO
      ((js_createSVGPathSegLinetoVerticalAbs (unSVGPathElement self) y)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoVerticalRel\"]($2)"
        js_createSVGPathSegLinetoVerticalRel ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoVerticalRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
createSVGPathSegLinetoVerticalRel ::
                                  (MonadIO m) =>
                                    SVGPathElement -> Float -> m (Maybe SVGPathSegLinetoVerticalRel)
createSVGPathSegLinetoVerticalRel self y
  = liftIO
      ((js_createSVGPathSegLinetoVerticalRel (unSVGPathElement self) y)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicSmoothAbs\"]($2,\n$3, $4, $5)"
        js_createSVGPathSegCurvetoCubicSmoothAbs ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float -> Float -> IO (JSRef SVGPathSegCurvetoCubicSmoothAbs)

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
      ((js_createSVGPathSegCurvetoCubicSmoothAbs (unSVGPathElement self)
          x
          y
          x2
          y2)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicSmoothRel\"]($2,\n$3, $4, $5)"
        js_createSVGPathSegCurvetoCubicSmoothRel ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float -> Float -> IO (JSRef SVGPathSegCurvetoCubicSmoothRel)

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
      ((js_createSVGPathSegCurvetoCubicSmoothRel (unSVGPathElement self)
          x
          y
          x2
          y2)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticSmoothAbs\"]($2,\n$3)"
        js_createSVGPathSegCurvetoQuadraticSmoothAbs ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticSmoothAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs documentation> 
createSVGPathSegCurvetoQuadraticSmoothAbs ::
                                          (MonadIO m) =>
                                            SVGPathElement ->
                                              Float ->
                                                Float ->
                                                  m (Maybe SVGPathSegCurvetoQuadraticSmoothAbs)
createSVGPathSegCurvetoQuadraticSmoothAbs self x y
  = liftIO
      ((js_createSVGPathSegCurvetoQuadraticSmoothAbs
          (unSVGPathElement self)
          x
          y)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticSmoothRel\"]($2,\n$3)"
        js_createSVGPathSegCurvetoQuadraticSmoothRel ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticSmoothRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel documentation> 
createSVGPathSegCurvetoQuadraticSmoothRel ::
                                          (MonadIO m) =>
                                            SVGPathElement ->
                                              Float ->
                                                Float ->
                                                  m (Maybe SVGPathSegCurvetoQuadraticSmoothRel)
createSVGPathSegCurvetoQuadraticSmoothRel self x y
  = liftIO
      ((js_createSVGPathSegCurvetoQuadraticSmoothRel
          (unSVGPathElement self)
          x
          y)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"pathLength\"]"
        js_getPathLength ::
        JSRef SVGPathElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathLength Mozilla SVGPathElement.pathLength documentation> 
getPathLength ::
              (MonadIO m) => SVGPathElement -> m (Maybe SVGAnimatedNumber)
getPathLength self
  = liftIO ((js_getPathLength (unSVGPathElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"pathSegList\"]"
        js_getPathSegList ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathSegList Mozilla SVGPathElement.pathSegList documentation> 
getPathSegList ::
               (MonadIO m) => SVGPathElement -> m (Maybe SVGPathSegList)
getPathSegList self
  = liftIO
      ((js_getPathSegList (unSVGPathElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"normalizedPathSegList\"]"
        js_getNormalizedPathSegList ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.normalizedPathSegList Mozilla SVGPathElement.normalizedPathSegList documentation> 
getNormalizedPathSegList ::
                         (MonadIO m) => SVGPathElement -> m (Maybe SVGPathSegList)
getNormalizedPathSegList self
  = liftIO
      ((js_getNormalizedPathSegList (unSVGPathElement self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"animatedPathSegList\"]"
        js_getAnimatedPathSegList ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedPathSegList Mozilla SVGPathElement.animatedPathSegList documentation> 
getAnimatedPathSegList ::
                       (MonadIO m) => SVGPathElement -> m (Maybe SVGPathSegList)
getAnimatedPathSegList self
  = liftIO
      ((js_getAnimatedPathSegList (unSVGPathElement self)) >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"animatedNormalizedPathSegList\"]"
        js_getAnimatedNormalizedPathSegList ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedNormalizedPathSegList Mozilla SVGPathElement.animatedNormalizedPathSegList documentation> 
getAnimatedNormalizedPathSegList ::
                                 (MonadIO m) => SVGPathElement -> m (Maybe SVGPathSegList)
getAnimatedNormalizedPathSegList self
  = liftIO
      ((js_getAnimatedNormalizedPathSegList (unSVGPathElement self)) >>=
         fromJSRef)