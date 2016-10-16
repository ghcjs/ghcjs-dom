{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathElement
       (js_getTotalLength, getTotalLength, getTotalLength_,
        js_getPointAtLength, getPointAtLength, getPointAtLength_,
        getPointAtLengthUnsafe, getPointAtLengthUnchecked,
        js_getPathSegAtLength, getPathSegAtLength, getPathSegAtLength_,
        js_createSVGPathSegClosePath, createSVGPathSegClosePath,
        createSVGPathSegClosePath_, createSVGPathSegClosePathUnsafe,
        createSVGPathSegClosePathUnchecked, js_createSVGPathSegMovetoAbs,
        createSVGPathSegMovetoAbs, createSVGPathSegMovetoAbs_,
        createSVGPathSegMovetoAbsUnsafe,
        createSVGPathSegMovetoAbsUnchecked, js_createSVGPathSegMovetoRel,
        createSVGPathSegMovetoRel, createSVGPathSegMovetoRel_,
        createSVGPathSegMovetoRelUnsafe,
        createSVGPathSegMovetoRelUnchecked, js_createSVGPathSegLinetoAbs,
        createSVGPathSegLinetoAbs, createSVGPathSegLinetoAbs_,
        createSVGPathSegLinetoAbsUnsafe,
        createSVGPathSegLinetoAbsUnchecked, js_createSVGPathSegLinetoRel,
        createSVGPathSegLinetoRel, createSVGPathSegLinetoRel_,
        createSVGPathSegLinetoRelUnsafe,
        createSVGPathSegLinetoRelUnchecked,
        js_createSVGPathSegCurvetoCubicAbs,
        createSVGPathSegCurvetoCubicAbs, createSVGPathSegCurvetoCubicAbs_,
        createSVGPathSegCurvetoCubicAbsUnsafe,
        createSVGPathSegCurvetoCubicAbsUnchecked,
        js_createSVGPathSegCurvetoCubicRel,
        createSVGPathSegCurvetoCubicRel, createSVGPathSegCurvetoCubicRel_,
        createSVGPathSegCurvetoCubicRelUnsafe,
        createSVGPathSegCurvetoCubicRelUnchecked,
        js_createSVGPathSegCurvetoQuadraticAbs,
        createSVGPathSegCurvetoQuadraticAbs,
        createSVGPathSegCurvetoQuadraticAbs_,
        createSVGPathSegCurvetoQuadraticAbsUnsafe,
        createSVGPathSegCurvetoQuadraticAbsUnchecked,
        js_createSVGPathSegCurvetoQuadraticRel,
        createSVGPathSegCurvetoQuadraticRel,
        createSVGPathSegCurvetoQuadraticRel_,
        createSVGPathSegCurvetoQuadraticRelUnsafe,
        createSVGPathSegCurvetoQuadraticRelUnchecked,
        js_createSVGPathSegArcAbs, createSVGPathSegArcAbs,
        createSVGPathSegArcAbs_, createSVGPathSegArcAbsUnsafe,
        createSVGPathSegArcAbsUnchecked, js_createSVGPathSegArcRel,
        createSVGPathSegArcRel, createSVGPathSegArcRel_,
        createSVGPathSegArcRelUnsafe, createSVGPathSegArcRelUnchecked,
        js_createSVGPathSegLinetoHorizontalAbs,
        createSVGPathSegLinetoHorizontalAbs,
        createSVGPathSegLinetoHorizontalAbs_,
        createSVGPathSegLinetoHorizontalAbsUnsafe,
        createSVGPathSegLinetoHorizontalAbsUnchecked,
        js_createSVGPathSegLinetoHorizontalRel,
        createSVGPathSegLinetoHorizontalRel,
        createSVGPathSegLinetoHorizontalRel_,
        createSVGPathSegLinetoHorizontalRelUnsafe,
        createSVGPathSegLinetoHorizontalRelUnchecked,
        js_createSVGPathSegLinetoVerticalAbs,
        createSVGPathSegLinetoVerticalAbs,
        createSVGPathSegLinetoVerticalAbs_,
        createSVGPathSegLinetoVerticalAbsUnsafe,
        createSVGPathSegLinetoVerticalAbsUnchecked,
        js_createSVGPathSegLinetoVerticalRel,
        createSVGPathSegLinetoVerticalRel,
        createSVGPathSegLinetoVerticalRel_,
        createSVGPathSegLinetoVerticalRelUnsafe,
        createSVGPathSegLinetoVerticalRelUnchecked,
        js_createSVGPathSegCurvetoCubicSmoothAbs,
        createSVGPathSegCurvetoCubicSmoothAbs,
        createSVGPathSegCurvetoCubicSmoothAbs_,
        createSVGPathSegCurvetoCubicSmoothAbsUnsafe,
        createSVGPathSegCurvetoCubicSmoothAbsUnchecked,
        js_createSVGPathSegCurvetoCubicSmoothRel,
        createSVGPathSegCurvetoCubicSmoothRel,
        createSVGPathSegCurvetoCubicSmoothRel_,
        createSVGPathSegCurvetoCubicSmoothRelUnsafe,
        createSVGPathSegCurvetoCubicSmoothRelUnchecked,
        js_createSVGPathSegCurvetoQuadraticSmoothAbs,
        createSVGPathSegCurvetoQuadraticSmoothAbs,
        createSVGPathSegCurvetoQuadraticSmoothAbs_,
        createSVGPathSegCurvetoQuadraticSmoothAbsUnsafe,
        createSVGPathSegCurvetoQuadraticSmoothAbsUnchecked,
        js_createSVGPathSegCurvetoQuadraticSmoothRel,
        createSVGPathSegCurvetoQuadraticSmoothRel,
        createSVGPathSegCurvetoQuadraticSmoothRel_,
        createSVGPathSegCurvetoQuadraticSmoothRelUnsafe,
        createSVGPathSegCurvetoQuadraticSmoothRelUnchecked,
        js_getPathLength, getPathLength, getPathLengthUnsafe,
        getPathLengthUnchecked, js_getPathSegList, getPathSegList,
        getPathSegListUnsafe, getPathSegListUnchecked,
        js_getNormalizedPathSegList, getNormalizedPathSegList,
        getNormalizedPathSegListUnsafe, getNormalizedPathSegListUnchecked,
        js_getAnimatedPathSegList, getAnimatedPathSegList,
        getAnimatedPathSegListUnsafe, getAnimatedPathSegListUnchecked,
        js_getAnimatedNormalizedPathSegList,
        getAnimatedNormalizedPathSegList,
        getAnimatedNormalizedPathSegListUnsafe,
        getAnimatedNormalizedPathSegListUnchecked, SVGPathElement(..),
        gTypeSVGPathElement)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"getTotalLength\"]()"
        js_getTotalLength :: SVGPathElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getTotalLength Mozilla SVGPathElement.getTotalLength documentation> 
getTotalLength :: (MonadIO m) => SVGPathElement -> m Float
getTotalLength self = liftIO (js_getTotalLength (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getTotalLength Mozilla SVGPathElement.getTotalLength documentation> 
getTotalLength_ :: (MonadIO m) => SVGPathElement -> m ()
getTotalLength_ self = liftIO (void (js_getTotalLength (self)))
 
foreign import javascript unsafe "$1[\"getPointAtLength\"]($2)"
        js_getPointAtLength ::
        SVGPathElement -> Float -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPointAtLength Mozilla SVGPathElement.getPointAtLength documentation> 
getPointAtLength ::
                 (MonadIO m) => SVGPathElement -> Float -> m (Maybe SVGPoint)
getPointAtLength self distance
  = liftIO
      (nullableToMaybe <$> (js_getPointAtLength (self) distance))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPointAtLength Mozilla SVGPathElement.getPointAtLength documentation> 
getPointAtLength_ :: (MonadIO m) => SVGPathElement -> Float -> m ()
getPointAtLength_ self distance
  = liftIO (void (js_getPointAtLength (self) distance))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPointAtLength Mozilla SVGPathElement.getPointAtLength documentation> 
getPointAtLengthUnsafe ::
                       (MonadIO m, HasCallStack) => SVGPathElement -> Float -> m SVGPoint
getPointAtLengthUnsafe self distance
  = liftIO
      ((nullableToMaybe <$> (js_getPointAtLength (self) distance)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPointAtLength Mozilla SVGPathElement.getPointAtLength documentation> 
getPointAtLengthUnchecked ::
                          (MonadIO m) => SVGPathElement -> Float -> m SVGPoint
getPointAtLengthUnchecked self distance
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getPointAtLength (self) distance))
 
foreign import javascript unsafe "$1[\"getPathSegAtLength\"]($2)"
        js_getPathSegAtLength :: SVGPathElement -> Float -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPathSegAtLength Mozilla SVGPathElement.getPathSegAtLength documentation> 
getPathSegAtLength ::
                   (MonadIO m) => SVGPathElement -> Float -> m Word
getPathSegAtLength self distance
  = liftIO (js_getPathSegAtLength (self) distance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPathSegAtLength Mozilla SVGPathElement.getPathSegAtLength documentation> 
getPathSegAtLength_ ::
                    (MonadIO m) => SVGPathElement -> Float -> m ()
getPathSegAtLength_ self distance
  = liftIO (void (js_getPathSegAtLength (self) distance))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegClosePath\"]()" js_createSVGPathSegClosePath
        :: SVGPathElement -> IO (Nullable SVGPathSegClosePath)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
createSVGPathSegClosePath ::
                          (MonadIO m) => SVGPathElement -> m (Maybe SVGPathSegClosePath)
createSVGPathSegClosePath self
  = liftIO
      (nullableToMaybe <$> (js_createSVGPathSegClosePath (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
createSVGPathSegClosePath_ :: (MonadIO m) => SVGPathElement -> m ()
createSVGPathSegClosePath_ self
  = liftIO (void (js_createSVGPathSegClosePath (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
createSVGPathSegClosePathUnsafe ::
                                (MonadIO m, HasCallStack) =>
                                  SVGPathElement -> m SVGPathSegClosePath
createSVGPathSegClosePathUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createSVGPathSegClosePath (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
createSVGPathSegClosePathUnchecked ::
                                   (MonadIO m) => SVGPathElement -> m SVGPathSegClosePath
createSVGPathSegClosePathUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createSVGPathSegClosePath (self)))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
createSVGPathSegMovetoAbs_ ::
                           (MonadIO m) => SVGPathElement -> Float -> Float -> m ()
createSVGPathSegMovetoAbs_ self x y
  = liftIO (void (js_createSVGPathSegMovetoAbs (self) x y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
createSVGPathSegMovetoAbsUnsafe ::
                                (MonadIO m, HasCallStack) =>
                                  SVGPathElement -> Float -> Float -> m SVGPathSegMovetoAbs
createSVGPathSegMovetoAbsUnsafe self x y
  = liftIO
      ((nullableToMaybe <$> (js_createSVGPathSegMovetoAbs (self) x y))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
createSVGPathSegMovetoAbsUnchecked ::
                                   (MonadIO m) =>
                                     SVGPathElement -> Float -> Float -> m SVGPathSegMovetoAbs
createSVGPathSegMovetoAbsUnchecked self x y
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createSVGPathSegMovetoAbs (self) x y))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
createSVGPathSegMovetoRel_ ::
                           (MonadIO m) => SVGPathElement -> Float -> Float -> m ()
createSVGPathSegMovetoRel_ self x y
  = liftIO (void (js_createSVGPathSegMovetoRel (self) x y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
createSVGPathSegMovetoRelUnsafe ::
                                (MonadIO m, HasCallStack) =>
                                  SVGPathElement -> Float -> Float -> m SVGPathSegMovetoRel
createSVGPathSegMovetoRelUnsafe self x y
  = liftIO
      ((nullableToMaybe <$> (js_createSVGPathSegMovetoRel (self) x y))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
createSVGPathSegMovetoRelUnchecked ::
                                   (MonadIO m) =>
                                     SVGPathElement -> Float -> Float -> m SVGPathSegMovetoRel
createSVGPathSegMovetoRelUnchecked self x y
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createSVGPathSegMovetoRel (self) x y))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
createSVGPathSegLinetoAbs_ ::
                           (MonadIO m) => SVGPathElement -> Float -> Float -> m ()
createSVGPathSegLinetoAbs_ self x y
  = liftIO (void (js_createSVGPathSegLinetoAbs (self) x y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
createSVGPathSegLinetoAbsUnsafe ::
                                (MonadIO m, HasCallStack) =>
                                  SVGPathElement -> Float -> Float -> m SVGPathSegLinetoAbs
createSVGPathSegLinetoAbsUnsafe self x y
  = liftIO
      ((nullableToMaybe <$> (js_createSVGPathSegLinetoAbs (self) x y))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
createSVGPathSegLinetoAbsUnchecked ::
                                   (MonadIO m) =>
                                     SVGPathElement -> Float -> Float -> m SVGPathSegLinetoAbs
createSVGPathSegLinetoAbsUnchecked self x y
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createSVGPathSegLinetoAbs (self) x y))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
createSVGPathSegLinetoRel_ ::
                           (MonadIO m) => SVGPathElement -> Float -> Float -> m ()
createSVGPathSegLinetoRel_ self x y
  = liftIO (void (js_createSVGPathSegLinetoRel (self) x y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
createSVGPathSegLinetoRelUnsafe ::
                                (MonadIO m, HasCallStack) =>
                                  SVGPathElement -> Float -> Float -> m SVGPathSegLinetoRel
createSVGPathSegLinetoRelUnsafe self x y
  = liftIO
      ((nullableToMaybe <$> (js_createSVGPathSegLinetoRel (self) x y))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
createSVGPathSegLinetoRelUnchecked ::
                                   (MonadIO m) =>
                                     SVGPathElement -> Float -> Float -> m SVGPathSegLinetoRel
createSVGPathSegLinetoRelUnchecked self x y
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createSVGPathSegLinetoRel (self) x y))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicAbs documentation> 
createSVGPathSegCurvetoCubicAbs_ ::
                                 (MonadIO m) =>
                                   SVGPathElement ->
                                     Float -> Float -> Float -> Float -> Float -> Float -> m ()
createSVGPathSegCurvetoCubicAbs_ self x y x1 y1 x2 y2
  = liftIO
      (void (js_createSVGPathSegCurvetoCubicAbs (self) x y x1 y1 x2 y2))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicAbs documentation> 
createSVGPathSegCurvetoCubicAbsUnsafe ::
                                      (MonadIO m, HasCallStack) =>
                                        SVGPathElement ->
                                          Float ->
                                            Float ->
                                              Float ->
                                                Float ->
                                                  Float -> Float -> m SVGPathSegCurvetoCubicAbs
createSVGPathSegCurvetoCubicAbsUnsafe self x y x1 y1 x2 y2
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGPathSegCurvetoCubicAbs (self) x y x1 y1 x2 y2))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicAbs documentation> 
createSVGPathSegCurvetoCubicAbsUnchecked ::
                                         (MonadIO m) =>
                                           SVGPathElement ->
                                             Float ->
                                               Float ->
                                                 Float ->
                                                   Float ->
                                                     Float -> Float -> m SVGPathSegCurvetoCubicAbs
createSVGPathSegCurvetoCubicAbsUnchecked self x y x1 y1 x2 y2
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicRel documentation> 
createSVGPathSegCurvetoCubicRel_ ::
                                 (MonadIO m) =>
                                   SVGPathElement ->
                                     Float -> Float -> Float -> Float -> Float -> Float -> m ()
createSVGPathSegCurvetoCubicRel_ self x y x1 y1 x2 y2
  = liftIO
      (void (js_createSVGPathSegCurvetoCubicRel (self) x y x1 y1 x2 y2))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicRel documentation> 
createSVGPathSegCurvetoCubicRelUnsafe ::
                                      (MonadIO m, HasCallStack) =>
                                        SVGPathElement ->
                                          Float ->
                                            Float ->
                                              Float ->
                                                Float ->
                                                  Float -> Float -> m SVGPathSegCurvetoCubicRel
createSVGPathSegCurvetoCubicRelUnsafe self x y x1 y1 x2 y2
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGPathSegCurvetoCubicRel (self) x y x1 y1 x2 y2))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicRel documentation> 
createSVGPathSegCurvetoCubicRelUnchecked ::
                                         (MonadIO m) =>
                                           SVGPathElement ->
                                             Float ->
                                               Float ->
                                                 Float ->
                                                   Float ->
                                                     Float -> Float -> m SVGPathSegCurvetoCubicRel
createSVGPathSegCurvetoCubicRelUnchecked self x y x1 y1 x2 y2
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticAbs documentation> 
createSVGPathSegCurvetoQuadraticAbs_ ::
                                     (MonadIO m) =>
                                       SVGPathElement -> Float -> Float -> Float -> Float -> m ()
createSVGPathSegCurvetoQuadraticAbs_ self x y x1 y1
  = liftIO
      (void (js_createSVGPathSegCurvetoQuadraticAbs (self) x y x1 y1))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticAbs documentation> 
createSVGPathSegCurvetoQuadraticAbsUnsafe ::
                                          (MonadIO m, HasCallStack) =>
                                            SVGPathElement ->
                                              Float ->
                                                Float ->
                                                  Float -> Float -> m SVGPathSegCurvetoQuadraticAbs
createSVGPathSegCurvetoQuadraticAbsUnsafe self x y x1 y1
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGPathSegCurvetoQuadraticAbs (self) x y x1 y1))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticAbs documentation> 
createSVGPathSegCurvetoQuadraticAbsUnchecked ::
                                             (MonadIO m) =>
                                               SVGPathElement ->
                                                 Float ->
                                                   Float ->
                                                     Float ->
                                                       Float -> m SVGPathSegCurvetoQuadraticAbs
createSVGPathSegCurvetoQuadraticAbsUnchecked self x y x1 y1
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticRel documentation> 
createSVGPathSegCurvetoQuadraticRel_ ::
                                     (MonadIO m) =>
                                       SVGPathElement -> Float -> Float -> Float -> Float -> m ()
createSVGPathSegCurvetoQuadraticRel_ self x y x1 y1
  = liftIO
      (void (js_createSVGPathSegCurvetoQuadraticRel (self) x y x1 y1))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticRel documentation> 
createSVGPathSegCurvetoQuadraticRelUnsafe ::
                                          (MonadIO m, HasCallStack) =>
                                            SVGPathElement ->
                                              Float ->
                                                Float ->
                                                  Float -> Float -> m SVGPathSegCurvetoQuadraticRel
createSVGPathSegCurvetoQuadraticRelUnsafe self x y x1 y1
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGPathSegCurvetoQuadraticRel (self) x y x1 y1))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticRel documentation> 
createSVGPathSegCurvetoQuadraticRelUnchecked ::
                                             (MonadIO m) =>
                                               SVGPathElement ->
                                                 Float ->
                                                   Float ->
                                                     Float ->
                                                       Float -> m SVGPathSegCurvetoQuadraticRel
createSVGPathSegCurvetoQuadraticRelUnchecked self x y x1 y1
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcAbs Mozilla SVGPathElement.createSVGPathSegArcAbs documentation> 
createSVGPathSegArcAbs_ ::
                        (MonadIO m) =>
                          SVGPathElement ->
                            Float -> Float -> Float -> Float -> Float -> Bool -> Bool -> m ()
createSVGPathSegArcAbs_ self x y r1 r2 angle largeArcFlag sweepFlag
  = liftIO
      (void
         (js_createSVGPathSegArcAbs (self) x y r1 r2 angle largeArcFlag
            sweepFlag))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcAbs Mozilla SVGPathElement.createSVGPathSegArcAbs documentation> 
createSVGPathSegArcAbsUnsafe ::
                             (MonadIO m, HasCallStack) =>
                               SVGPathElement ->
                                 Float ->
                                   Float ->
                                     Float -> Float -> Float -> Bool -> Bool -> m SVGPathSegArcAbs
createSVGPathSegArcAbsUnsafe self x y r1 r2 angle largeArcFlag
  sweepFlag
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGPathSegArcAbs (self) x y r1 r2 angle largeArcFlag
             sweepFlag))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcAbs Mozilla SVGPathElement.createSVGPathSegArcAbs documentation> 
createSVGPathSegArcAbsUnchecked ::
                                (MonadIO m) =>
                                  SVGPathElement ->
                                    Float ->
                                      Float ->
                                        Float ->
                                          Float -> Float -> Bool -> Bool -> m SVGPathSegArcAbs
createSVGPathSegArcAbsUnchecked self x y r1 r2 angle largeArcFlag
  sweepFlag
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcRel Mozilla SVGPathElement.createSVGPathSegArcRel documentation> 
createSVGPathSegArcRel_ ::
                        (MonadIO m) =>
                          SVGPathElement ->
                            Float -> Float -> Float -> Float -> Float -> Bool -> Bool -> m ()
createSVGPathSegArcRel_ self x y r1 r2 angle largeArcFlag sweepFlag
  = liftIO
      (void
         (js_createSVGPathSegArcRel (self) x y r1 r2 angle largeArcFlag
            sweepFlag))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcRel Mozilla SVGPathElement.createSVGPathSegArcRel documentation> 
createSVGPathSegArcRelUnsafe ::
                             (MonadIO m, HasCallStack) =>
                               SVGPathElement ->
                                 Float ->
                                   Float ->
                                     Float -> Float -> Float -> Bool -> Bool -> m SVGPathSegArcRel
createSVGPathSegArcRelUnsafe self x y r1 r2 angle largeArcFlag
  sweepFlag
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGPathSegArcRel (self) x y r1 r2 angle largeArcFlag
             sweepFlag))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcRel Mozilla SVGPathElement.createSVGPathSegArcRel documentation> 
createSVGPathSegArcRelUnchecked ::
                                (MonadIO m) =>
                                  SVGPathElement ->
                                    Float ->
                                      Float ->
                                        Float ->
                                          Float -> Float -> Bool -> Bool -> m SVGPathSegArcRel
createSVGPathSegArcRelUnchecked self x y r1 r2 angle largeArcFlag
  sweepFlag
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
createSVGPathSegLinetoHorizontalAbs_ ::
                                     (MonadIO m) => SVGPathElement -> Float -> m ()
createSVGPathSegLinetoHorizontalAbs_ self x
  = liftIO (void (js_createSVGPathSegLinetoHorizontalAbs (self) x))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
createSVGPathSegLinetoHorizontalAbsUnsafe ::
                                          (MonadIO m, HasCallStack) =>
                                            SVGPathElement ->
                                              Float -> m SVGPathSegLinetoHorizontalAbs
createSVGPathSegLinetoHorizontalAbsUnsafe self x
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGPathSegLinetoHorizontalAbs (self) x))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
createSVGPathSegLinetoHorizontalAbsUnchecked ::
                                             (MonadIO m) =>
                                               SVGPathElement ->
                                                 Float -> m SVGPathSegLinetoHorizontalAbs
createSVGPathSegLinetoHorizontalAbsUnchecked self x
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
createSVGPathSegLinetoHorizontalRel_ ::
                                     (MonadIO m) => SVGPathElement -> Float -> m ()
createSVGPathSegLinetoHorizontalRel_ self x
  = liftIO (void (js_createSVGPathSegLinetoHorizontalRel (self) x))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
createSVGPathSegLinetoHorizontalRelUnsafe ::
                                          (MonadIO m, HasCallStack) =>
                                            SVGPathElement ->
                                              Float -> m SVGPathSegLinetoHorizontalRel
createSVGPathSegLinetoHorizontalRelUnsafe self x
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGPathSegLinetoHorizontalRel (self) x))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
createSVGPathSegLinetoHorizontalRelUnchecked ::
                                             (MonadIO m) =>
                                               SVGPathElement ->
                                                 Float -> m SVGPathSegLinetoHorizontalRel
createSVGPathSegLinetoHorizontalRelUnchecked self x
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
createSVGPathSegLinetoVerticalAbs_ ::
                                   (MonadIO m) => SVGPathElement -> Float -> m ()
createSVGPathSegLinetoVerticalAbs_ self y
  = liftIO (void (js_createSVGPathSegLinetoVerticalAbs (self) y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
createSVGPathSegLinetoVerticalAbsUnsafe ::
                                        (MonadIO m, HasCallStack) =>
                                          SVGPathElement -> Float -> m SVGPathSegLinetoVerticalAbs
createSVGPathSegLinetoVerticalAbsUnsafe self y
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGPathSegLinetoVerticalAbs (self) y))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
createSVGPathSegLinetoVerticalAbsUnchecked ::
                                           (MonadIO m) =>
                                             SVGPathElement ->
                                               Float -> m SVGPathSegLinetoVerticalAbs
createSVGPathSegLinetoVerticalAbsUnchecked self y
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
createSVGPathSegLinetoVerticalRel_ ::
                                   (MonadIO m) => SVGPathElement -> Float -> m ()
createSVGPathSegLinetoVerticalRel_ self y
  = liftIO (void (js_createSVGPathSegLinetoVerticalRel (self) y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
createSVGPathSegLinetoVerticalRelUnsafe ::
                                        (MonadIO m, HasCallStack) =>
                                          SVGPathElement -> Float -> m SVGPathSegLinetoVerticalRel
createSVGPathSegLinetoVerticalRelUnsafe self y
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGPathSegLinetoVerticalRel (self) y))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
createSVGPathSegLinetoVerticalRelUnchecked ::
                                           (MonadIO m) =>
                                             SVGPathElement ->
                                               Float -> m SVGPathSegLinetoVerticalRel
createSVGPathSegLinetoVerticalRelUnchecked self y
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs documentation> 
createSVGPathSegCurvetoCubicSmoothAbs_ ::
                                       (MonadIO m) =>
                                         SVGPathElement -> Float -> Float -> Float -> Float -> m ()
createSVGPathSegCurvetoCubicSmoothAbs_ self x y x2 y2
  = liftIO
      (void (js_createSVGPathSegCurvetoCubicSmoothAbs (self) x y x2 y2))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs documentation> 
createSVGPathSegCurvetoCubicSmoothAbsUnsafe ::
                                            (MonadIO m, HasCallStack) =>
                                              SVGPathElement ->
                                                Float ->
                                                  Float ->
                                                    Float ->
                                                      Float -> m SVGPathSegCurvetoCubicSmoothAbs
createSVGPathSegCurvetoCubicSmoothAbsUnsafe self x y x2 y2
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGPathSegCurvetoCubicSmoothAbs (self) x y x2 y2))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs documentation> 
createSVGPathSegCurvetoCubicSmoothAbsUnchecked ::
                                               (MonadIO m) =>
                                                 SVGPathElement ->
                                                   Float ->
                                                     Float ->
                                                       Float ->
                                                         Float -> m SVGPathSegCurvetoCubicSmoothAbs
createSVGPathSegCurvetoCubicSmoothAbsUnchecked self x y x2 y2
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel documentation> 
createSVGPathSegCurvetoCubicSmoothRel_ ::
                                       (MonadIO m) =>
                                         SVGPathElement -> Float -> Float -> Float -> Float -> m ()
createSVGPathSegCurvetoCubicSmoothRel_ self x y x2 y2
  = liftIO
      (void (js_createSVGPathSegCurvetoCubicSmoothRel (self) x y x2 y2))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel documentation> 
createSVGPathSegCurvetoCubicSmoothRelUnsafe ::
                                            (MonadIO m, HasCallStack) =>
                                              SVGPathElement ->
                                                Float ->
                                                  Float ->
                                                    Float ->
                                                      Float -> m SVGPathSegCurvetoCubicSmoothRel
createSVGPathSegCurvetoCubicSmoothRelUnsafe self x y x2 y2
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGPathSegCurvetoCubicSmoothRel (self) x y x2 y2))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel documentation> 
createSVGPathSegCurvetoCubicSmoothRelUnchecked ::
                                               (MonadIO m) =>
                                                 SVGPathElement ->
                                                   Float ->
                                                     Float ->
                                                       Float ->
                                                         Float -> m SVGPathSegCurvetoCubicSmoothRel
createSVGPathSegCurvetoCubicSmoothRelUnchecked self x y x2 y2
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs documentation> 
createSVGPathSegCurvetoQuadraticSmoothAbs_ ::
                                           (MonadIO m) => SVGPathElement -> Float -> Float -> m ()
createSVGPathSegCurvetoQuadraticSmoothAbs_ self x y
  = liftIO
      (void (js_createSVGPathSegCurvetoQuadraticSmoothAbs (self) x y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs documentation> 
createSVGPathSegCurvetoQuadraticSmoothAbsUnsafe ::
                                                (MonadIO m, HasCallStack) =>
                                                  SVGPathElement ->
                                                    Float ->
                                                      Float -> m SVGPathSegCurvetoQuadraticSmoothAbs
createSVGPathSegCurvetoQuadraticSmoothAbsUnsafe self x y
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGPathSegCurvetoQuadraticSmoothAbs (self) x y))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs documentation> 
createSVGPathSegCurvetoQuadraticSmoothAbsUnchecked ::
                                                   (MonadIO m) =>
                                                     SVGPathElement ->
                                                       Float ->
                                                         Float ->
                                                           m SVGPathSegCurvetoQuadraticSmoothAbs
createSVGPathSegCurvetoQuadraticSmoothAbsUnchecked self x y
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel documentation> 
createSVGPathSegCurvetoQuadraticSmoothRel_ ::
                                           (MonadIO m) => SVGPathElement -> Float -> Float -> m ()
createSVGPathSegCurvetoQuadraticSmoothRel_ self x y
  = liftIO
      (void (js_createSVGPathSegCurvetoQuadraticSmoothRel (self) x y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel documentation> 
createSVGPathSegCurvetoQuadraticSmoothRelUnsafe ::
                                                (MonadIO m, HasCallStack) =>
                                                  SVGPathElement ->
                                                    Float ->
                                                      Float -> m SVGPathSegCurvetoQuadraticSmoothRel
createSVGPathSegCurvetoQuadraticSmoothRelUnsafe self x y
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGPathSegCurvetoQuadraticSmoothRel (self) x y))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel documentation> 
createSVGPathSegCurvetoQuadraticSmoothRelUnchecked ::
                                                   (MonadIO m) =>
                                                     SVGPathElement ->
                                                       Float ->
                                                         Float ->
                                                           m SVGPathSegCurvetoQuadraticSmoothRel
createSVGPathSegCurvetoQuadraticSmoothRelUnchecked self x y
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createSVGPathSegCurvetoQuadraticSmoothRel (self) x y))
 
foreign import javascript unsafe "$1[\"pathLength\"]"
        js_getPathLength ::
        SVGPathElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathLength Mozilla SVGPathElement.pathLength documentation> 
getPathLength ::
              (MonadIO m) => SVGPathElement -> m (Maybe SVGAnimatedNumber)
getPathLength self
  = liftIO (nullableToMaybe <$> (js_getPathLength (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathLength Mozilla SVGPathElement.pathLength documentation> 
getPathLengthUnsafe ::
                    (MonadIO m, HasCallStack) => SVGPathElement -> m SVGAnimatedNumber
getPathLengthUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPathLength (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathLength Mozilla SVGPathElement.pathLength documentation> 
getPathLengthUnchecked ::
                       (MonadIO m) => SVGPathElement -> m SVGAnimatedNumber
getPathLengthUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getPathLength (self)))
 
foreign import javascript unsafe "$1[\"pathSegList\"]"
        js_getPathSegList :: SVGPathElement -> IO (Nullable SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathSegList Mozilla SVGPathElement.pathSegList documentation> 
getPathSegList ::
               (MonadIO m) => SVGPathElement -> m (Maybe SVGPathSegList)
getPathSegList self
  = liftIO (nullableToMaybe <$> (js_getPathSegList (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathSegList Mozilla SVGPathElement.pathSegList documentation> 
getPathSegListUnsafe ::
                     (MonadIO m, HasCallStack) => SVGPathElement -> m SVGPathSegList
getPathSegListUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPathSegList (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathSegList Mozilla SVGPathElement.pathSegList documentation> 
getPathSegListUnchecked ::
                        (MonadIO m) => SVGPathElement -> m SVGPathSegList
getPathSegListUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getPathSegList (self)))
 
foreign import javascript unsafe "$1[\"normalizedPathSegList\"]"
        js_getNormalizedPathSegList ::
        SVGPathElement -> IO (Nullable SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.normalizedPathSegList Mozilla SVGPathElement.normalizedPathSegList documentation> 
getNormalizedPathSegList ::
                         (MonadIO m) => SVGPathElement -> m (Maybe SVGPathSegList)
getNormalizedPathSegList self
  = liftIO (nullableToMaybe <$> (js_getNormalizedPathSegList (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.normalizedPathSegList Mozilla SVGPathElement.normalizedPathSegList documentation> 
getNormalizedPathSegListUnsafe ::
                               (MonadIO m, HasCallStack) => SVGPathElement -> m SVGPathSegList
getNormalizedPathSegListUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getNormalizedPathSegList (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.normalizedPathSegList Mozilla SVGPathElement.normalizedPathSegList documentation> 
getNormalizedPathSegListUnchecked ::
                                  (MonadIO m) => SVGPathElement -> m SVGPathSegList
getNormalizedPathSegListUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getNormalizedPathSegList (self)))
 
foreign import javascript unsafe "$1[\"animatedPathSegList\"]"
        js_getAnimatedPathSegList ::
        SVGPathElement -> IO (Nullable SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedPathSegList Mozilla SVGPathElement.animatedPathSegList documentation> 
getAnimatedPathSegList ::
                       (MonadIO m) => SVGPathElement -> m (Maybe SVGPathSegList)
getAnimatedPathSegList self
  = liftIO (nullableToMaybe <$> (js_getAnimatedPathSegList (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedPathSegList Mozilla SVGPathElement.animatedPathSegList documentation> 
getAnimatedPathSegListUnsafe ::
                             (MonadIO m, HasCallStack) => SVGPathElement -> m SVGPathSegList
getAnimatedPathSegListUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAnimatedPathSegList (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedPathSegList Mozilla SVGPathElement.animatedPathSegList documentation> 
getAnimatedPathSegListUnchecked ::
                                (MonadIO m) => SVGPathElement -> m SVGPathSegList
getAnimatedPathSegListUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getAnimatedPathSegList (self)))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedNormalizedPathSegList Mozilla SVGPathElement.animatedNormalizedPathSegList documentation> 
getAnimatedNormalizedPathSegListUnsafe ::
                                       (MonadIO m, HasCallStack) =>
                                         SVGPathElement -> m SVGPathSegList
getAnimatedNormalizedPathSegListUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAnimatedNormalizedPathSegList (self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedNormalizedPathSegList Mozilla SVGPathElement.animatedNormalizedPathSegList documentation> 
getAnimatedNormalizedPathSegListUnchecked ::
                                          (MonadIO m) => SVGPathElement -> m SVGPathSegList
getAnimatedNormalizedPathSegListUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getAnimatedNormalizedPathSegList (self)))