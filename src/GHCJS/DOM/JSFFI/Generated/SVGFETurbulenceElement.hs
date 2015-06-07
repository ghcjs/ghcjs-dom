{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFETurbulenceElement
       (pattern SVG_TURBULENCE_TYPE_UNKNOWN,
        pattern SVG_TURBULENCE_TYPE_FRACTALNOISE,
        pattern SVG_TURBULENCE_TYPE_TURBULENCE,
        pattern SVG_STITCHTYPE_UNKNOWN, pattern SVG_STITCHTYPE_STITCH,
        pattern SVG_STITCHTYPE_NOSTITCH, js_getBaseFrequencyX,
        getBaseFrequencyX, js_getBaseFrequencyY, getBaseFrequencyY,
        js_getNumOctaves, getNumOctaves, js_getSeed, getSeed,
        js_getStitchTiles, getStitchTiles, SVGFETurbulenceElement,
        castToSVGFETurbulenceElement, gTypeSVGFETurbulenceElement)
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
pattern SVG_TURBULENCE_TYPE_UNKNOWN = 0
pattern SVG_TURBULENCE_TYPE_FRACTALNOISE = 1
pattern SVG_TURBULENCE_TYPE_TURBULENCE = 2
pattern SVG_STITCHTYPE_UNKNOWN = 0
pattern SVG_STITCHTYPE_STITCH = 1
pattern SVG_STITCHTYPE_NOSTITCH = 2
 
foreign import javascript unsafe "$1[\"baseFrequencyX\"]"
        js_getBaseFrequencyX ::
        JSRef SVGFETurbulenceElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyX Mozilla SVGFETurbulenceElement.baseFrequencyX documentation> 
getBaseFrequencyX ::
                  (MonadIO m) =>
                    SVGFETurbulenceElement -> m (Maybe SVGAnimatedNumber)
getBaseFrequencyX self
  = liftIO
      ((js_getBaseFrequencyX (unSVGFETurbulenceElement self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"baseFrequencyY\"]"
        js_getBaseFrequencyY ::
        JSRef SVGFETurbulenceElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyY Mozilla SVGFETurbulenceElement.baseFrequencyY documentation> 
getBaseFrequencyY ::
                  (MonadIO m) =>
                    SVGFETurbulenceElement -> m (Maybe SVGAnimatedNumber)
getBaseFrequencyY self
  = liftIO
      ((js_getBaseFrequencyY (unSVGFETurbulenceElement self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"numOctaves\"]"
        js_getNumOctaves ::
        JSRef SVGFETurbulenceElement -> IO (JSRef SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.numOctaves Mozilla SVGFETurbulenceElement.numOctaves documentation> 
getNumOctaves ::
              (MonadIO m) =>
                SVGFETurbulenceElement -> m (Maybe SVGAnimatedInteger)
getNumOctaves self
  = liftIO
      ((js_getNumOctaves (unSVGFETurbulenceElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"seed\"]" js_getSeed ::
        JSRef SVGFETurbulenceElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.seed Mozilla SVGFETurbulenceElement.seed documentation> 
getSeed ::
        (MonadIO m) =>
          SVGFETurbulenceElement -> m (Maybe SVGAnimatedNumber)
getSeed self
  = liftIO
      ((js_getSeed (unSVGFETurbulenceElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"stitchTiles\"]"
        js_getStitchTiles ::
        JSRef SVGFETurbulenceElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.stitchTiles Mozilla SVGFETurbulenceElement.stitchTiles documentation> 
getStitchTiles ::
               (MonadIO m) =>
                 SVGFETurbulenceElement -> m (Maybe SVGAnimatedEnumeration)
getStitchTiles self
  = liftIO
      ((js_getStitchTiles (unSVGFETurbulenceElement self)) >>= fromJSRef)