{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFETurbulenceElement
       (pattern SVG_TURBULENCE_TYPE_UNKNOWN,
        pattern SVG_TURBULENCE_TYPE_FRACTALNOISE,
        pattern SVG_TURBULENCE_TYPE_TURBULENCE,
        pattern SVG_STITCHTYPE_UNKNOWN, pattern SVG_STITCHTYPE_STITCH,
        pattern SVG_STITCHTYPE_NOSTITCH, js_getBaseFrequencyX,
        getBaseFrequencyX, getBaseFrequencyXUnsafe,
        getBaseFrequencyXUnchecked, js_getBaseFrequencyY,
        getBaseFrequencyY, getBaseFrequencyYUnsafe,
        getBaseFrequencyYUnchecked, js_getNumOctaves, getNumOctaves,
        getNumOctavesUnsafe, getNumOctavesUnchecked, js_getSeed, getSeed,
        getSeedUnsafe, getSeedUnchecked, js_getStitchTiles, getStitchTiles,
        getStitchTilesUnsafe, getStitchTilesUnchecked, js_getType, getType,
        getTypeUnsafe, getTypeUnchecked, SVGFETurbulenceElement(..),
        gTypeSVGFETurbulenceElement)
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
pattern SVG_TURBULENCE_TYPE_UNKNOWN = 0
pattern SVG_TURBULENCE_TYPE_FRACTALNOISE = 1
pattern SVG_TURBULENCE_TYPE_TURBULENCE = 2
pattern SVG_STITCHTYPE_UNKNOWN = 0
pattern SVG_STITCHTYPE_STITCH = 1
pattern SVG_STITCHTYPE_NOSTITCH = 2
 
foreign import javascript unsafe "$1[\"baseFrequencyX\"]"
        js_getBaseFrequencyX ::
        SVGFETurbulenceElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyX Mozilla SVGFETurbulenceElement.baseFrequencyX documentation> 
getBaseFrequencyX ::
                  (MonadIO m) =>
                    SVGFETurbulenceElement -> m (Maybe SVGAnimatedNumber)
getBaseFrequencyX self
  = liftIO (nullableToMaybe <$> (js_getBaseFrequencyX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyX Mozilla SVGFETurbulenceElement.baseFrequencyX documentation> 
getBaseFrequencyXUnsafe ::
                        (MonadIO m, HasCallStack) =>
                          SVGFETurbulenceElement -> m SVGAnimatedNumber
getBaseFrequencyXUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getBaseFrequencyX (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyX Mozilla SVGFETurbulenceElement.baseFrequencyX documentation> 
getBaseFrequencyXUnchecked ::
                           (MonadIO m) => SVGFETurbulenceElement -> m SVGAnimatedNumber
getBaseFrequencyXUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getBaseFrequencyX (self)))
 
foreign import javascript unsafe "$1[\"baseFrequencyY\"]"
        js_getBaseFrequencyY ::
        SVGFETurbulenceElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyY Mozilla SVGFETurbulenceElement.baseFrequencyY documentation> 
getBaseFrequencyY ::
                  (MonadIO m) =>
                    SVGFETurbulenceElement -> m (Maybe SVGAnimatedNumber)
getBaseFrequencyY self
  = liftIO (nullableToMaybe <$> (js_getBaseFrequencyY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyY Mozilla SVGFETurbulenceElement.baseFrequencyY documentation> 
getBaseFrequencyYUnsafe ::
                        (MonadIO m, HasCallStack) =>
                          SVGFETurbulenceElement -> m SVGAnimatedNumber
getBaseFrequencyYUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getBaseFrequencyY (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyY Mozilla SVGFETurbulenceElement.baseFrequencyY documentation> 
getBaseFrequencyYUnchecked ::
                           (MonadIO m) => SVGFETurbulenceElement -> m SVGAnimatedNumber
getBaseFrequencyYUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getBaseFrequencyY (self)))
 
foreign import javascript unsafe "$1[\"numOctaves\"]"
        js_getNumOctaves ::
        SVGFETurbulenceElement -> IO (Nullable SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.numOctaves Mozilla SVGFETurbulenceElement.numOctaves documentation> 
getNumOctaves ::
              (MonadIO m) =>
                SVGFETurbulenceElement -> m (Maybe SVGAnimatedInteger)
getNumOctaves self
  = liftIO (nullableToMaybe <$> (js_getNumOctaves (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.numOctaves Mozilla SVGFETurbulenceElement.numOctaves documentation> 
getNumOctavesUnsafe ::
                    (MonadIO m, HasCallStack) =>
                      SVGFETurbulenceElement -> m SVGAnimatedInteger
getNumOctavesUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getNumOctaves (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.numOctaves Mozilla SVGFETurbulenceElement.numOctaves documentation> 
getNumOctavesUnchecked ::
                       (MonadIO m) => SVGFETurbulenceElement -> m SVGAnimatedInteger
getNumOctavesUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getNumOctaves (self)))
 
foreign import javascript unsafe "$1[\"seed\"]" js_getSeed ::
        SVGFETurbulenceElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.seed Mozilla SVGFETurbulenceElement.seed documentation> 
getSeed ::
        (MonadIO m) =>
          SVGFETurbulenceElement -> m (Maybe SVGAnimatedNumber)
getSeed self = liftIO (nullableToMaybe <$> (js_getSeed (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.seed Mozilla SVGFETurbulenceElement.seed documentation> 
getSeedUnsafe ::
              (MonadIO m, HasCallStack) =>
                SVGFETurbulenceElement -> m SVGAnimatedNumber
getSeedUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSeed (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.seed Mozilla SVGFETurbulenceElement.seed documentation> 
getSeedUnchecked ::
                 (MonadIO m) => SVGFETurbulenceElement -> m SVGAnimatedNumber
getSeedUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getSeed (self)))
 
foreign import javascript unsafe "$1[\"stitchTiles\"]"
        js_getStitchTiles ::
        SVGFETurbulenceElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.stitchTiles Mozilla SVGFETurbulenceElement.stitchTiles documentation> 
getStitchTiles ::
               (MonadIO m) =>
                 SVGFETurbulenceElement -> m (Maybe SVGAnimatedEnumeration)
getStitchTiles self
  = liftIO (nullableToMaybe <$> (js_getStitchTiles (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.stitchTiles Mozilla SVGFETurbulenceElement.stitchTiles documentation> 
getStitchTilesUnsafe ::
                     (MonadIO m, HasCallStack) =>
                       SVGFETurbulenceElement -> m SVGAnimatedEnumeration
getStitchTilesUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getStitchTiles (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.stitchTiles Mozilla SVGFETurbulenceElement.stitchTiles documentation> 
getStitchTilesUnchecked ::
                        (MonadIO m) => SVGFETurbulenceElement -> m SVGAnimatedEnumeration
getStitchTilesUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getStitchTiles (self)))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        SVGFETurbulenceElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.type Mozilla SVGFETurbulenceElement.type documentation> 
getType ::
        (MonadIO m) =>
          SVGFETurbulenceElement -> m (Maybe SVGAnimatedEnumeration)
getType self = liftIO (nullableToMaybe <$> (js_getType (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.type Mozilla SVGFETurbulenceElement.type documentation> 
getTypeUnsafe ::
              (MonadIO m, HasCallStack) =>
                SVGFETurbulenceElement -> m SVGAnimatedEnumeration
getTypeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getType (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.type Mozilla SVGFETurbulenceElement.type documentation> 
getTypeUnchecked ::
                 (MonadIO m) => SVGFETurbulenceElement -> m SVGAnimatedEnumeration
getTypeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getType (self)))