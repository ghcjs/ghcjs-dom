{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFETurbulenceElement
       (pattern SVG_TURBULENCE_TYPE_UNKNOWN,
        pattern SVG_TURBULENCE_TYPE_FRACTALNOISE,
        pattern SVG_TURBULENCE_TYPE_TURBULENCE,
        pattern SVG_STITCHTYPE_UNKNOWN, pattern SVG_STITCHTYPE_STITCH,
        pattern SVG_STITCHTYPE_NOSTITCH, js_getBaseFrequencyX,
        getBaseFrequencyX, js_getBaseFrequencyY, getBaseFrequencyY,
        js_getNumOctaves, getNumOctaves, js_getSeed, getSeed,
        js_getStitchTiles, getStitchTiles, js_getType, getType,
        SVGFETurbulenceElement, castToSVGFETurbulenceElement,
        gTypeSVGFETurbulenceElement)
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
 
foreign import javascript unsafe "$1[\"baseFrequencyY\"]"
        js_getBaseFrequencyY ::
        SVGFETurbulenceElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyY Mozilla SVGFETurbulenceElement.baseFrequencyY documentation> 
getBaseFrequencyY ::
                  (MonadIO m) =>
                    SVGFETurbulenceElement -> m (Maybe SVGAnimatedNumber)
getBaseFrequencyY self
  = liftIO (nullableToMaybe <$> (js_getBaseFrequencyY (self)))
 
foreign import javascript unsafe "$1[\"numOctaves\"]"
        js_getNumOctaves ::
        SVGFETurbulenceElement -> IO (Nullable SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.numOctaves Mozilla SVGFETurbulenceElement.numOctaves documentation> 
getNumOctaves ::
              (MonadIO m) =>
                SVGFETurbulenceElement -> m (Maybe SVGAnimatedInteger)
getNumOctaves self
  = liftIO (nullableToMaybe <$> (js_getNumOctaves (self)))
 
foreign import javascript unsafe "$1[\"seed\"]" js_getSeed ::
        SVGFETurbulenceElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.seed Mozilla SVGFETurbulenceElement.seed documentation> 
getSeed ::
        (MonadIO m) =>
          SVGFETurbulenceElement -> m (Maybe SVGAnimatedNumber)
getSeed self = liftIO (nullableToMaybe <$> (js_getSeed (self)))
 
foreign import javascript unsafe "$1[\"stitchTiles\"]"
        js_getStitchTiles ::
        SVGFETurbulenceElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.stitchTiles Mozilla SVGFETurbulenceElement.stitchTiles documentation> 
getStitchTiles ::
               (MonadIO m) =>
                 SVGFETurbulenceElement -> m (Maybe SVGAnimatedEnumeration)
getStitchTiles self
  = liftIO (nullableToMaybe <$> (js_getStitchTiles (self)))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        SVGFETurbulenceElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.type Mozilla SVGFETurbulenceElement.type documentation> 
getType ::
        (MonadIO m) =>
          SVGFETurbulenceElement -> m (Maybe SVGAnimatedEnumeration)
getType self = liftIO (nullableToMaybe <$> (js_getType (self)))