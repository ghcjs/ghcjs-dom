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
        getBaseFrequencyX, js_getBaseFrequencyY, getBaseFrequencyY,
        js_getNumOctaves, getNumOctaves, js_getSeed, getSeed,
        js_getStitchTiles, getStitchTiles, js_getType, getType,
        SVGFETurbulenceElement(..), gTypeSVGFETurbulenceElement)
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
pattern SVG_TURBULENCE_TYPE_UNKNOWN = 0
pattern SVG_TURBULENCE_TYPE_FRACTALNOISE = 1
pattern SVG_TURBULENCE_TYPE_TURBULENCE = 2
pattern SVG_STITCHTYPE_UNKNOWN = 0
pattern SVG_STITCHTYPE_STITCH = 1
pattern SVG_STITCHTYPE_NOSTITCH = 2
 
foreign import javascript unsafe "$1[\"baseFrequencyX\"]"
        js_getBaseFrequencyX ::
        SVGFETurbulenceElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyX Mozilla SVGFETurbulenceElement.baseFrequencyX documentation> 
getBaseFrequencyX ::
                  (MonadIO m) => SVGFETurbulenceElement -> m SVGAnimatedNumber
getBaseFrequencyX self = liftIO (js_getBaseFrequencyX self)
 
foreign import javascript unsafe "$1[\"baseFrequencyY\"]"
        js_getBaseFrequencyY ::
        SVGFETurbulenceElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyY Mozilla SVGFETurbulenceElement.baseFrequencyY documentation> 
getBaseFrequencyY ::
                  (MonadIO m) => SVGFETurbulenceElement -> m SVGAnimatedNumber
getBaseFrequencyY self = liftIO (js_getBaseFrequencyY self)
 
foreign import javascript unsafe "$1[\"numOctaves\"]"
        js_getNumOctaves :: SVGFETurbulenceElement -> IO SVGAnimatedInteger

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.numOctaves Mozilla SVGFETurbulenceElement.numOctaves documentation> 
getNumOctaves ::
              (MonadIO m) => SVGFETurbulenceElement -> m SVGAnimatedInteger
getNumOctaves self = liftIO (js_getNumOctaves self)
 
foreign import javascript unsafe "$1[\"seed\"]" js_getSeed ::
        SVGFETurbulenceElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.seed Mozilla SVGFETurbulenceElement.seed documentation> 
getSeed ::
        (MonadIO m) => SVGFETurbulenceElement -> m SVGAnimatedNumber
getSeed self = liftIO (js_getSeed self)
 
foreign import javascript unsafe "$1[\"stitchTiles\"]"
        js_getStitchTiles ::
        SVGFETurbulenceElement -> IO SVGAnimatedEnumeration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.stitchTiles Mozilla SVGFETurbulenceElement.stitchTiles documentation> 
getStitchTiles ::
               (MonadIO m) => SVGFETurbulenceElement -> m SVGAnimatedEnumeration
getStitchTiles self = liftIO (js_getStitchTiles self)
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        SVGFETurbulenceElement -> IO SVGAnimatedEnumeration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.type Mozilla SVGFETurbulenceElement.type documentation> 
getType ::
        (MonadIO m) => SVGFETurbulenceElement -> m SVGAnimatedEnumeration
getType self = liftIO (js_getType self)