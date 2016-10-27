{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEColorMatrixElement
       (pattern SVG_FECOLORMATRIX_TYPE_UNKNOWN,
        pattern SVG_FECOLORMATRIX_TYPE_MATRIX,
        pattern SVG_FECOLORMATRIX_TYPE_SATURATE,
        pattern SVG_FECOLORMATRIX_TYPE_HUEROTATE,
        pattern SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA, js_getIn1, getIn1,
        getIn1Unsafe, getIn1Unchecked, js_getType, getType, getTypeUnsafe,
        getTypeUnchecked, js_getValues, getValues, getValuesUnsafe,
        getValuesUnchecked, SVGFEColorMatrixElement(..),
        gTypeSVGFEColorMatrixElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.in1 Mozilla SVGFEColorMatrixElement.in1 documentation> 
getIn1Unsafe ::
             (MonadIO m, HasCallStack) =>
               SVGFEColorMatrixElement -> m SVGAnimatedString
getIn1Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getIn1 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.in1 Mozilla SVGFEColorMatrixElement.in1 documentation> 
getIn1Unchecked ::
                (MonadIO m) => SVGFEColorMatrixElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        SVGFEColorMatrixElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.type Mozilla SVGFEColorMatrixElement.type documentation> 
getType ::
        (MonadIO m) =>
          SVGFEColorMatrixElement -> m (Maybe SVGAnimatedEnumeration)
getType self = liftIO (nullableToMaybe <$> (js_getType (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.type Mozilla SVGFEColorMatrixElement.type documentation> 
getTypeUnsafe ::
              (MonadIO m, HasCallStack) =>
                SVGFEColorMatrixElement -> m SVGAnimatedEnumeration
getTypeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getType (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.type Mozilla SVGFEColorMatrixElement.type documentation> 
getTypeUnchecked ::
                 (MonadIO m) => SVGFEColorMatrixElement -> m SVGAnimatedEnumeration
getTypeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"values\"]" js_getValues ::
        SVGFEColorMatrixElement -> IO (Nullable SVGAnimatedNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.values Mozilla SVGFEColorMatrixElement.values documentation> 
getValues ::
          (MonadIO m) =>
            SVGFEColorMatrixElement -> m (Maybe SVGAnimatedNumberList)
getValues self = liftIO (nullableToMaybe <$> (js_getValues (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.values Mozilla SVGFEColorMatrixElement.values documentation> 
getValuesUnsafe ::
                (MonadIO m, HasCallStack) =>
                  SVGFEColorMatrixElement -> m SVGAnimatedNumberList
getValuesUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getValues (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.values Mozilla SVGFEColorMatrixElement.values documentation> 
getValuesUnchecked ::
                   (MonadIO m) => SVGFEColorMatrixElement -> m SVGAnimatedNumberList
getValuesUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getValues (self)))