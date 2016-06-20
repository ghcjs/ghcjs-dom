{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEColorMatrixElement
       (pattern SVG_FECOLORMATRIX_TYPE_UNKNOWN,
        pattern SVG_FECOLORMATRIX_TYPE_MATRIX,
        pattern SVG_FECOLORMATRIX_TYPE_SATURATE,
        pattern SVG_FECOLORMATRIX_TYPE_HUEROTATE,
        pattern SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA, js_getIn1, getIn1,
        js_getType, getType, js_getValues, getValues,
        SVGFEColorMatrixElement, castToSVGFEColorMatrixElement,
        gTypeSVGFEColorMatrixElement)
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
pattern SVG_FECOLORMATRIX_TYPE_UNKNOWN = 0
pattern SVG_FECOLORMATRIX_TYPE_MATRIX = 1
pattern SVG_FECOLORMATRIX_TYPE_SATURATE = 2
pattern SVG_FECOLORMATRIX_TYPE_HUEROTATE = 3
pattern SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA = 4
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFEColorMatrixElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.in1 Mozilla SVGFEColorMatrixElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFEColorMatrixElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftIO (nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        SVGFEColorMatrixElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.type Mozilla SVGFEColorMatrixElement.type documentation> 
getType ::
        (MonadIO m) =>
          SVGFEColorMatrixElement -> m (Maybe SVGAnimatedEnumeration)
getType self = liftIO (nullableToMaybe <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"values\"]" js_getValues ::
        SVGFEColorMatrixElement -> IO (Nullable SVGAnimatedNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.values Mozilla SVGFEColorMatrixElement.values documentation> 
getValues ::
          (MonadIO m) =>
            SVGFEColorMatrixElement -> m (Maybe SVGAnimatedNumberList)
getValues self = liftIO (nullableToMaybe <$> (js_getValues (self)))