{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathElement
       (js_getTotalLength, getTotalLength, getTotalLength_,
        js_getPointAtLength, getPointAtLength, getPointAtLength_,
        js_getPathSegAtLength, getPathSegAtLength, getPathSegAtLength_,
        js_createSVGPathSegClosePath, createSVGPathSegClosePath,
        createSVGPathSegClosePath_, js_createSVGPathSegMovetoAbs,
        createSVGPathSegMovetoAbs, createSVGPathSegMovetoAbs_,
        js_createSVGPathSegMovetoRel, createSVGPathSegMovetoRel,
        createSVGPathSegMovetoRel_, js_createSVGPathSegLinetoAbs,
        createSVGPathSegLinetoAbs, createSVGPathSegLinetoAbs_,
        js_createSVGPathSegLinetoRel, createSVGPathSegLinetoRel,
        createSVGPathSegLinetoRel_, js_createSVGPathSegCurvetoCubicAbs,
        createSVGPathSegCurvetoCubicAbs, createSVGPathSegCurvetoCubicAbs_,
        js_createSVGPathSegCurvetoCubicRel,
        createSVGPathSegCurvetoCubicRel, createSVGPathSegCurvetoCubicRel_,
        js_createSVGPathSegCurvetoQuadraticAbs,
        createSVGPathSegCurvetoQuadraticAbs,
        createSVGPathSegCurvetoQuadraticAbs_,
        js_createSVGPathSegCurvetoQuadraticRel,
        createSVGPathSegCurvetoQuadraticRel,
        createSVGPathSegCurvetoQuadraticRel_, js_createSVGPathSegArcAbs,
        createSVGPathSegArcAbs, createSVGPathSegArcAbs_,
        js_createSVGPathSegArcRel, createSVGPathSegArcRel,
        createSVGPathSegArcRel_, js_createSVGPathSegLinetoHorizontalAbs,
        createSVGPathSegLinetoHorizontalAbs,
        createSVGPathSegLinetoHorizontalAbs_,
        js_createSVGPathSegLinetoHorizontalRel,
        createSVGPathSegLinetoHorizontalRel,
        createSVGPathSegLinetoHorizontalRel_,
        js_createSVGPathSegLinetoVerticalAbs,
        createSVGPathSegLinetoVerticalAbs,
        createSVGPathSegLinetoVerticalAbs_,
        js_createSVGPathSegLinetoVerticalRel,
        createSVGPathSegLinetoVerticalRel,
        createSVGPathSegLinetoVerticalRel_,
        js_createSVGPathSegCurvetoCubicSmoothAbs,
        createSVGPathSegCurvetoCubicSmoothAbs,
        createSVGPathSegCurvetoCubicSmoothAbs_,
        js_createSVGPathSegCurvetoCubicSmoothRel,
        createSVGPathSegCurvetoCubicSmoothRel,
        createSVGPathSegCurvetoCubicSmoothRel_,
        js_createSVGPathSegCurvetoQuadraticSmoothAbs,
        createSVGPathSegCurvetoQuadraticSmoothAbs,
        createSVGPathSegCurvetoQuadraticSmoothAbs_,
        js_createSVGPathSegCurvetoQuadraticSmoothRel,
        createSVGPathSegCurvetoQuadraticSmoothRel,
        createSVGPathSegCurvetoQuadraticSmoothRel_, js_getPathLength,
        getPathLength, js_getPathSegList, getPathSegList,
        js_getNormalizedPathSegList, getNormalizedPathSegList,
        js_getAnimatedPathSegList, getAnimatedPathSegList,
        js_getAnimatedNormalizedPathSegList,
        getAnimatedNormalizedPathSegList, SVGPathElement(..),
        gTypeSVGPathElement)
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
 
foreign import javascript unsafe "$1[\"getTotalLength\"]()"
        js_getTotalLength :: SVGPathElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getTotalLength Mozilla SVGPathElement.getTotalLength documentation> 
getTotalLength :: (MonadIO m) => SVGPathElement -> m Float
getTotalLength self = liftIO (js_getTotalLength self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getTotalLength Mozilla SVGPathElement.getTotalLength documentation> 
getTotalLength_ :: (MonadIO m) => SVGPathElement -> m ()
getTotalLength_ self = liftIO (void (js_getTotalLength self))
 
foreign import javascript unsafe "$1[\"getPointAtLength\"]($2)"
        js_getPointAtLength ::
        SVGPathElement -> Optional Float -> IO SVGPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPointAtLength Mozilla SVGPathElement.getPointAtLength documentation> 
getPointAtLength ::
                 (MonadIO m) => SVGPathElement -> Maybe Float -> m SVGPoint
getPointAtLength self distance
  = liftIO (js_getPointAtLength self (maybeToOptional distance))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPointAtLength Mozilla SVGPathElement.getPointAtLength documentation> 
getPointAtLength_ ::
                  (MonadIO m) => SVGPathElement -> Maybe Float -> m ()
getPointAtLength_ self distance
  = liftIO
      (void (js_getPointAtLength self (maybeToOptional distance)))
 
foreign import javascript unsafe "$1[\"getPathSegAtLength\"]($2)"
        js_getPathSegAtLength ::
        SVGPathElement -> Optional Float -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPathSegAtLength Mozilla SVGPathElement.getPathSegAtLength documentation> 
getPathSegAtLength ::
                   (MonadIO m) => SVGPathElement -> Maybe Float -> m Word
getPathSegAtLength self distance
  = liftIO (js_getPathSegAtLength self (maybeToOptional distance))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPathSegAtLength Mozilla SVGPathElement.getPathSegAtLength documentation> 
getPathSegAtLength_ ::
                    (MonadIO m) => SVGPathElement -> Maybe Float -> m ()
getPathSegAtLength_ self distance
  = liftIO
      (void (js_getPathSegAtLength self (maybeToOptional distance)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegClosePath\"]()" js_createSVGPathSegClosePath
        :: SVGPathElement -> IO SVGPathSegClosePath

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
createSVGPathSegClosePath ::
                          (MonadIO m) => SVGPathElement -> m SVGPathSegClosePath
createSVGPathSegClosePath self
  = liftIO (js_createSVGPathSegClosePath self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
createSVGPathSegClosePath_ :: (MonadIO m) => SVGPathElement -> m ()
createSVGPathSegClosePath_ self
  = liftIO (void (js_createSVGPathSegClosePath self))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegMovetoAbs\"]($2,\n$3)"
        js_createSVGPathSegMovetoAbs ::
        SVGPathElement ->
          Optional Float -> Optional Float -> IO SVGPathSegMovetoAbs

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
createSVGPathSegMovetoAbs ::
                          (MonadIO m) =>
                            SVGPathElement ->
                              Maybe Float -> Maybe Float -> m SVGPathSegMovetoAbs
createSVGPathSegMovetoAbs self x y
  = liftIO
      (js_createSVGPathSegMovetoAbs self (maybeToOptional x)
         (maybeToOptional y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
createSVGPathSegMovetoAbs_ ::
                           (MonadIO m) => SVGPathElement -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegMovetoAbs_ self x y
  = liftIO
      (void
         (js_createSVGPathSegMovetoAbs self (maybeToOptional x)
            (maybeToOptional y)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegMovetoRel\"]($2,\n$3)"
        js_createSVGPathSegMovetoRel ::
        SVGPathElement ->
          Optional Float -> Optional Float -> IO SVGPathSegMovetoRel

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
createSVGPathSegMovetoRel ::
                          (MonadIO m) =>
                            SVGPathElement ->
                              Maybe Float -> Maybe Float -> m SVGPathSegMovetoRel
createSVGPathSegMovetoRel self x y
  = liftIO
      (js_createSVGPathSegMovetoRel self (maybeToOptional x)
         (maybeToOptional y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
createSVGPathSegMovetoRel_ ::
                           (MonadIO m) => SVGPathElement -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegMovetoRel_ self x y
  = liftIO
      (void
         (js_createSVGPathSegMovetoRel self (maybeToOptional x)
            (maybeToOptional y)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoAbs\"]($2,\n$3)"
        js_createSVGPathSegLinetoAbs ::
        SVGPathElement ->
          Optional Float -> Optional Float -> IO SVGPathSegLinetoAbs

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
createSVGPathSegLinetoAbs ::
                          (MonadIO m) =>
                            SVGPathElement ->
                              Maybe Float -> Maybe Float -> m SVGPathSegLinetoAbs
createSVGPathSegLinetoAbs self x y
  = liftIO
      (js_createSVGPathSegLinetoAbs self (maybeToOptional x)
         (maybeToOptional y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
createSVGPathSegLinetoAbs_ ::
                           (MonadIO m) => SVGPathElement -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegLinetoAbs_ self x y
  = liftIO
      (void
         (js_createSVGPathSegLinetoAbs self (maybeToOptional x)
            (maybeToOptional y)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoRel\"]($2,\n$3)"
        js_createSVGPathSegLinetoRel ::
        SVGPathElement ->
          Optional Float -> Optional Float -> IO SVGPathSegLinetoRel

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
createSVGPathSegLinetoRel ::
                          (MonadIO m) =>
                            SVGPathElement ->
                              Maybe Float -> Maybe Float -> m SVGPathSegLinetoRel
createSVGPathSegLinetoRel self x y
  = liftIO
      (js_createSVGPathSegLinetoRel self (maybeToOptional x)
         (maybeToOptional y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
createSVGPathSegLinetoRel_ ::
                           (MonadIO m) => SVGPathElement -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegLinetoRel_ self x y
  = liftIO
      (void
         (js_createSVGPathSegLinetoRel self (maybeToOptional x)
            (maybeToOptional y)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicAbs\"]($2,\n$3, $4, $5, $6, $7)"
        js_createSVGPathSegCurvetoCubicAbs ::
        SVGPathElement ->
          Optional Float ->
            Optional Float ->
              Optional Float ->
                Optional Float ->
                  Optional Float -> Optional Float -> IO SVGPathSegCurvetoCubicAbs

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicAbs documentation> 
createSVGPathSegCurvetoCubicAbs ::
                                (MonadIO m) =>
                                  SVGPathElement ->
                                    Maybe Float ->
                                      Maybe Float ->
                                        Maybe Float ->
                                          Maybe Float ->
                                            Maybe Float ->
                                              Maybe Float -> m SVGPathSegCurvetoCubicAbs
createSVGPathSegCurvetoCubicAbs self x y x1 y1 x2 y2
  = liftIO
      (js_createSVGPathSegCurvetoCubicAbs self (maybeToOptional x)
         (maybeToOptional y)
         (maybeToOptional x1)
         (maybeToOptional y1)
         (maybeToOptional x2)
         (maybeToOptional y2))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicAbs documentation> 
createSVGPathSegCurvetoCubicAbs_ ::
                                 (MonadIO m) =>
                                   SVGPathElement ->
                                     Maybe Float ->
                                       Maybe Float ->
                                         Maybe Float ->
                                           Maybe Float -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoCubicAbs_ self x y x1 y1 x2 y2
  = liftIO
      (void
         (js_createSVGPathSegCurvetoCubicAbs self (maybeToOptional x)
            (maybeToOptional y)
            (maybeToOptional x1)
            (maybeToOptional y1)
            (maybeToOptional x2)
            (maybeToOptional y2)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicRel\"]($2,\n$3, $4, $5, $6, $7)"
        js_createSVGPathSegCurvetoCubicRel ::
        SVGPathElement ->
          Optional Float ->
            Optional Float ->
              Optional Float ->
                Optional Float ->
                  Optional Float -> Optional Float -> IO SVGPathSegCurvetoCubicRel

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicRel documentation> 
createSVGPathSegCurvetoCubicRel ::
                                (MonadIO m) =>
                                  SVGPathElement ->
                                    Maybe Float ->
                                      Maybe Float ->
                                        Maybe Float ->
                                          Maybe Float ->
                                            Maybe Float ->
                                              Maybe Float -> m SVGPathSegCurvetoCubicRel
createSVGPathSegCurvetoCubicRel self x y x1 y1 x2 y2
  = liftIO
      (js_createSVGPathSegCurvetoCubicRel self (maybeToOptional x)
         (maybeToOptional y)
         (maybeToOptional x1)
         (maybeToOptional y1)
         (maybeToOptional x2)
         (maybeToOptional y2))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicRel documentation> 
createSVGPathSegCurvetoCubicRel_ ::
                                 (MonadIO m) =>
                                   SVGPathElement ->
                                     Maybe Float ->
                                       Maybe Float ->
                                         Maybe Float ->
                                           Maybe Float -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoCubicRel_ self x y x1 y1 x2 y2
  = liftIO
      (void
         (js_createSVGPathSegCurvetoCubicRel self (maybeToOptional x)
            (maybeToOptional y)
            (maybeToOptional x1)
            (maybeToOptional y1)
            (maybeToOptional x2)
            (maybeToOptional y2)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticAbs\"]($2,\n$3, $4, $5)"
        js_createSVGPathSegCurvetoQuadraticAbs ::
        SVGPathElement ->
          Optional Float ->
            Optional Float ->
              Optional Float ->
                Optional Float -> IO SVGPathSegCurvetoQuadraticAbs

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticAbs documentation> 
createSVGPathSegCurvetoQuadraticAbs ::
                                    (MonadIO m) =>
                                      SVGPathElement ->
                                        Maybe Float ->
                                          Maybe Float ->
                                            Maybe Float ->
                                              Maybe Float -> m SVGPathSegCurvetoQuadraticAbs
createSVGPathSegCurvetoQuadraticAbs self x y x1 y1
  = liftIO
      (js_createSVGPathSegCurvetoQuadraticAbs self (maybeToOptional x)
         (maybeToOptional y)
         (maybeToOptional x1)
         (maybeToOptional y1))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticAbs documentation> 
createSVGPathSegCurvetoQuadraticAbs_ ::
                                     (MonadIO m) =>
                                       SVGPathElement ->
                                         Maybe Float ->
                                           Maybe Float -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoQuadraticAbs_ self x y x1 y1
  = liftIO
      (void
         (js_createSVGPathSegCurvetoQuadraticAbs self (maybeToOptional x)
            (maybeToOptional y)
            (maybeToOptional x1)
            (maybeToOptional y1)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticRel\"]($2,\n$3, $4, $5)"
        js_createSVGPathSegCurvetoQuadraticRel ::
        SVGPathElement ->
          Optional Float ->
            Optional Float ->
              Optional Float ->
                Optional Float -> IO SVGPathSegCurvetoQuadraticRel

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticRel documentation> 
createSVGPathSegCurvetoQuadraticRel ::
                                    (MonadIO m) =>
                                      SVGPathElement ->
                                        Maybe Float ->
                                          Maybe Float ->
                                            Maybe Float ->
                                              Maybe Float -> m SVGPathSegCurvetoQuadraticRel
createSVGPathSegCurvetoQuadraticRel self x y x1 y1
  = liftIO
      (js_createSVGPathSegCurvetoQuadraticRel self (maybeToOptional x)
         (maybeToOptional y)
         (maybeToOptional x1)
         (maybeToOptional y1))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticRel documentation> 
createSVGPathSegCurvetoQuadraticRel_ ::
                                     (MonadIO m) =>
                                       SVGPathElement ->
                                         Maybe Float ->
                                           Maybe Float -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoQuadraticRel_ self x y x1 y1
  = liftIO
      (void
         (js_createSVGPathSegCurvetoQuadraticRel self (maybeToOptional x)
            (maybeToOptional y)
            (maybeToOptional x1)
            (maybeToOptional y1)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegArcAbs\"]($2,\n$3, $4, $5, $6, $7, $8)"
        js_createSVGPathSegArcAbs ::
        SVGPathElement ->
          Optional Float ->
            Optional Float ->
              Optional Float ->
                Optional Float ->
                  Optional Float -> Bool -> Bool -> IO SVGPathSegArcAbs

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcAbs Mozilla SVGPathElement.createSVGPathSegArcAbs documentation> 
createSVGPathSegArcAbs ::
                       (MonadIO m) =>
                         SVGPathElement ->
                           Maybe Float ->
                             Maybe Float ->
                               Maybe Float ->
                                 Maybe Float -> Maybe Float -> Bool -> Bool -> m SVGPathSegArcAbs
createSVGPathSegArcAbs self x y r1 r2 angle largeArcFlag sweepFlag
  = liftIO
      (js_createSVGPathSegArcAbs self (maybeToOptional x)
         (maybeToOptional y)
         (maybeToOptional r1)
         (maybeToOptional r2)
         (maybeToOptional angle)
         largeArcFlag
         sweepFlag)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcAbs Mozilla SVGPathElement.createSVGPathSegArcAbs documentation> 
createSVGPathSegArcAbs_ ::
                        (MonadIO m) =>
                          SVGPathElement ->
                            Maybe Float ->
                              Maybe Float ->
                                Maybe Float -> Maybe Float -> Maybe Float -> Bool -> Bool -> m ()
createSVGPathSegArcAbs_ self x y r1 r2 angle largeArcFlag sweepFlag
  = liftIO
      (void
         (js_createSVGPathSegArcAbs self (maybeToOptional x)
            (maybeToOptional y)
            (maybeToOptional r1)
            (maybeToOptional r2)
            (maybeToOptional angle)
            largeArcFlag
            sweepFlag))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegArcRel\"]($2,\n$3, $4, $5, $6, $7, $8)"
        js_createSVGPathSegArcRel ::
        SVGPathElement ->
          Optional Float ->
            Optional Float ->
              Optional Float ->
                Optional Float ->
                  Optional Float -> Bool -> Bool -> IO SVGPathSegArcRel

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcRel Mozilla SVGPathElement.createSVGPathSegArcRel documentation> 
createSVGPathSegArcRel ::
                       (MonadIO m) =>
                         SVGPathElement ->
                           Maybe Float ->
                             Maybe Float ->
                               Maybe Float ->
                                 Maybe Float -> Maybe Float -> Bool -> Bool -> m SVGPathSegArcRel
createSVGPathSegArcRel self x y r1 r2 angle largeArcFlag sweepFlag
  = liftIO
      (js_createSVGPathSegArcRel self (maybeToOptional x)
         (maybeToOptional y)
         (maybeToOptional r1)
         (maybeToOptional r2)
         (maybeToOptional angle)
         largeArcFlag
         sweepFlag)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcRel Mozilla SVGPathElement.createSVGPathSegArcRel documentation> 
createSVGPathSegArcRel_ ::
                        (MonadIO m) =>
                          SVGPathElement ->
                            Maybe Float ->
                              Maybe Float ->
                                Maybe Float -> Maybe Float -> Maybe Float -> Bool -> Bool -> m ()
createSVGPathSegArcRel_ self x y r1 r2 angle largeArcFlag sweepFlag
  = liftIO
      (void
         (js_createSVGPathSegArcRel self (maybeToOptional x)
            (maybeToOptional y)
            (maybeToOptional r1)
            (maybeToOptional r2)
            (maybeToOptional angle)
            largeArcFlag
            sweepFlag))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoHorizontalAbs\"]($2)"
        js_createSVGPathSegLinetoHorizontalAbs ::
        SVGPathElement ->
          Optional Float -> IO SVGPathSegLinetoHorizontalAbs

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
createSVGPathSegLinetoHorizontalAbs ::
                                    (MonadIO m) =>
                                      SVGPathElement ->
                                        Maybe Float -> m SVGPathSegLinetoHorizontalAbs
createSVGPathSegLinetoHorizontalAbs self x
  = liftIO
      (js_createSVGPathSegLinetoHorizontalAbs self (maybeToOptional x))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
createSVGPathSegLinetoHorizontalAbs_ ::
                                     (MonadIO m) => SVGPathElement -> Maybe Float -> m ()
createSVGPathSegLinetoHorizontalAbs_ self x
  = liftIO
      (void
         (js_createSVGPathSegLinetoHorizontalAbs self (maybeToOptional x)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoHorizontalRel\"]($2)"
        js_createSVGPathSegLinetoHorizontalRel ::
        SVGPathElement ->
          Optional Float -> IO SVGPathSegLinetoHorizontalRel

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
createSVGPathSegLinetoHorizontalRel ::
                                    (MonadIO m) =>
                                      SVGPathElement ->
                                        Maybe Float -> m SVGPathSegLinetoHorizontalRel
createSVGPathSegLinetoHorizontalRel self x
  = liftIO
      (js_createSVGPathSegLinetoHorizontalRel self (maybeToOptional x))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
createSVGPathSegLinetoHorizontalRel_ ::
                                     (MonadIO m) => SVGPathElement -> Maybe Float -> m ()
createSVGPathSegLinetoHorizontalRel_ self x
  = liftIO
      (void
         (js_createSVGPathSegLinetoHorizontalRel self (maybeToOptional x)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoVerticalAbs\"]($2)"
        js_createSVGPathSegLinetoVerticalAbs ::
        SVGPathElement -> Optional Float -> IO SVGPathSegLinetoVerticalAbs

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
createSVGPathSegLinetoVerticalAbs ::
                                  (MonadIO m) =>
                                    SVGPathElement -> Maybe Float -> m SVGPathSegLinetoVerticalAbs
createSVGPathSegLinetoVerticalAbs self y
  = liftIO
      (js_createSVGPathSegLinetoVerticalAbs self (maybeToOptional y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
createSVGPathSegLinetoVerticalAbs_ ::
                                   (MonadIO m) => SVGPathElement -> Maybe Float -> m ()
createSVGPathSegLinetoVerticalAbs_ self y
  = liftIO
      (void
         (js_createSVGPathSegLinetoVerticalAbs self (maybeToOptional y)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoVerticalRel\"]($2)"
        js_createSVGPathSegLinetoVerticalRel ::
        SVGPathElement -> Optional Float -> IO SVGPathSegLinetoVerticalRel

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
createSVGPathSegLinetoVerticalRel ::
                                  (MonadIO m) =>
                                    SVGPathElement -> Maybe Float -> m SVGPathSegLinetoVerticalRel
createSVGPathSegLinetoVerticalRel self y
  = liftIO
      (js_createSVGPathSegLinetoVerticalRel self (maybeToOptional y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
createSVGPathSegLinetoVerticalRel_ ::
                                   (MonadIO m) => SVGPathElement -> Maybe Float -> m ()
createSVGPathSegLinetoVerticalRel_ self y
  = liftIO
      (void
         (js_createSVGPathSegLinetoVerticalRel self (maybeToOptional y)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicSmoothAbs\"]($2,\n$3, $4, $5)"
        js_createSVGPathSegCurvetoCubicSmoothAbs ::
        SVGPathElement ->
          Optional Float ->
            Optional Float ->
              Optional Float ->
                Optional Float -> IO SVGPathSegCurvetoCubicSmoothAbs

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs documentation> 
createSVGPathSegCurvetoCubicSmoothAbs ::
                                      (MonadIO m) =>
                                        SVGPathElement ->
                                          Maybe Float ->
                                            Maybe Float ->
                                              Maybe Float ->
                                                Maybe Float -> m SVGPathSegCurvetoCubicSmoothAbs
createSVGPathSegCurvetoCubicSmoothAbs self x y x2 y2
  = liftIO
      (js_createSVGPathSegCurvetoCubicSmoothAbs self (maybeToOptional x)
         (maybeToOptional y)
         (maybeToOptional x2)
         (maybeToOptional y2))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs documentation> 
createSVGPathSegCurvetoCubicSmoothAbs_ ::
                                       (MonadIO m) =>
                                         SVGPathElement ->
                                           Maybe Float ->
                                             Maybe Float -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoCubicSmoothAbs_ self x y x2 y2
  = liftIO
      (void
         (js_createSVGPathSegCurvetoCubicSmoothAbs self (maybeToOptional x)
            (maybeToOptional y)
            (maybeToOptional x2)
            (maybeToOptional y2)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicSmoothRel\"]($2,\n$3, $4, $5)"
        js_createSVGPathSegCurvetoCubicSmoothRel ::
        SVGPathElement ->
          Optional Float ->
            Optional Float ->
              Optional Float ->
                Optional Float -> IO SVGPathSegCurvetoCubicSmoothRel

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel documentation> 
createSVGPathSegCurvetoCubicSmoothRel ::
                                      (MonadIO m) =>
                                        SVGPathElement ->
                                          Maybe Float ->
                                            Maybe Float ->
                                              Maybe Float ->
                                                Maybe Float -> m SVGPathSegCurvetoCubicSmoothRel
createSVGPathSegCurvetoCubicSmoothRel self x y x2 y2
  = liftIO
      (js_createSVGPathSegCurvetoCubicSmoothRel self (maybeToOptional x)
         (maybeToOptional y)
         (maybeToOptional x2)
         (maybeToOptional y2))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel documentation> 
createSVGPathSegCurvetoCubicSmoothRel_ ::
                                       (MonadIO m) =>
                                         SVGPathElement ->
                                           Maybe Float ->
                                             Maybe Float -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoCubicSmoothRel_ self x y x2 y2
  = liftIO
      (void
         (js_createSVGPathSegCurvetoCubicSmoothRel self (maybeToOptional x)
            (maybeToOptional y)
            (maybeToOptional x2)
            (maybeToOptional y2)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticSmoothAbs\"]($2,\n$3)"
        js_createSVGPathSegCurvetoQuadraticSmoothAbs ::
        SVGPathElement ->
          Optional Float ->
            Optional Float -> IO SVGPathSegCurvetoQuadraticSmoothAbs

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs documentation> 
createSVGPathSegCurvetoQuadraticSmoothAbs ::
                                          (MonadIO m) =>
                                            SVGPathElement ->
                                              Maybe Float ->
                                                Maybe Float -> m SVGPathSegCurvetoQuadraticSmoothAbs
createSVGPathSegCurvetoQuadraticSmoothAbs self x y
  = liftIO
      (js_createSVGPathSegCurvetoQuadraticSmoothAbs self
         (maybeToOptional x)
         (maybeToOptional y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs documentation> 
createSVGPathSegCurvetoQuadraticSmoothAbs_ ::
                                           (MonadIO m) =>
                                             SVGPathElement -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoQuadraticSmoothAbs_ self x y
  = liftIO
      (void
         (js_createSVGPathSegCurvetoQuadraticSmoothAbs self
            (maybeToOptional x)
            (maybeToOptional y)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticSmoothRel\"]($2,\n$3)"
        js_createSVGPathSegCurvetoQuadraticSmoothRel ::
        SVGPathElement ->
          Optional Float ->
            Optional Float -> IO SVGPathSegCurvetoQuadraticSmoothRel

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel documentation> 
createSVGPathSegCurvetoQuadraticSmoothRel ::
                                          (MonadIO m) =>
                                            SVGPathElement ->
                                              Maybe Float ->
                                                Maybe Float -> m SVGPathSegCurvetoQuadraticSmoothRel
createSVGPathSegCurvetoQuadraticSmoothRel self x y
  = liftIO
      (js_createSVGPathSegCurvetoQuadraticSmoothRel self
         (maybeToOptional x)
         (maybeToOptional y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel documentation> 
createSVGPathSegCurvetoQuadraticSmoothRel_ ::
                                           (MonadIO m) =>
                                             SVGPathElement -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoQuadraticSmoothRel_ self x y
  = liftIO
      (void
         (js_createSVGPathSegCurvetoQuadraticSmoothRel self
            (maybeToOptional x)
            (maybeToOptional y)))
 
foreign import javascript unsafe "$1[\"pathLength\"]"
        js_getPathLength :: SVGPathElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathLength Mozilla SVGPathElement.pathLength documentation> 
getPathLength ::
              (MonadIO m) => SVGPathElement -> m SVGAnimatedNumber
getPathLength self = liftIO (js_getPathLength self)
 
foreign import javascript unsafe "$1[\"pathSegList\"]"
        js_getPathSegList :: SVGPathElement -> IO SVGPathSegList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathSegList Mozilla SVGPathElement.pathSegList documentation> 
getPathSegList :: (MonadIO m) => SVGPathElement -> m SVGPathSegList
getPathSegList self = liftIO (js_getPathSegList self)
 
foreign import javascript unsafe "$1[\"normalizedPathSegList\"]"
        js_getNormalizedPathSegList :: SVGPathElement -> IO SVGPathSegList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.normalizedPathSegList Mozilla SVGPathElement.normalizedPathSegList documentation> 
getNormalizedPathSegList ::
                         (MonadIO m) => SVGPathElement -> m SVGPathSegList
getNormalizedPathSegList self
  = liftIO (js_getNormalizedPathSegList self)
 
foreign import javascript unsafe "$1[\"animatedPathSegList\"]"
        js_getAnimatedPathSegList :: SVGPathElement -> IO SVGPathSegList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedPathSegList Mozilla SVGPathElement.animatedPathSegList documentation> 
getAnimatedPathSegList ::
                       (MonadIO m) => SVGPathElement -> m SVGPathSegList
getAnimatedPathSegList self
  = liftIO (js_getAnimatedPathSegList self)
 
foreign import javascript unsafe
        "$1[\"animatedNormalizedPathSegList\"]"
        js_getAnimatedNormalizedPathSegList ::
        SVGPathElement -> IO SVGPathSegList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedNormalizedPathSegList Mozilla SVGPathElement.animatedNormalizedPathSegList documentation> 
getAnimatedNormalizedPathSegList ::
                                 (MonadIO m) => SVGPathElement -> m SVGPathSegList
getAnimatedNormalizedPathSegList self
  = liftIO (js_getAnimatedNormalizedPathSegList self)