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
        js_getType, getType, js_getValues, getValues,
        SVGFEColorMatrixElement(..), gTypeSVGFEColorMatrixElement)
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
pattern SVG_FECOLORMATRIX_TYPE_UNKNOWN = 0
pattern SVG_FECOLORMATRIX_TYPE_MATRIX = 1
pattern SVG_FECOLORMATRIX_TYPE_SATURATE = 2
pattern SVG_FECOLORMATRIX_TYPE_HUEROTATE = 3
pattern SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA = 4
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFEColorMatrixElement -> IO SVGAnimatedString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.in1 Mozilla SVGFEColorMatrixElement.in1 documentation> 
getIn1 ::
       (MonadIO m) => SVGFEColorMatrixElement -> m SVGAnimatedString
getIn1 self = liftIO (js_getIn1 self)
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        SVGFEColorMatrixElement -> IO SVGAnimatedEnumeration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.type Mozilla SVGFEColorMatrixElement.type documentation> 
getType ::
        (MonadIO m) => SVGFEColorMatrixElement -> m SVGAnimatedEnumeration
getType self = liftIO (js_getType self)
 
foreign import javascript unsafe "$1[\"values\"]" js_getValues ::
        SVGFEColorMatrixElement -> IO SVGAnimatedNumberList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.values Mozilla SVGFEColorMatrixElement.values documentation> 
getValues ::
          (MonadIO m) => SVGFEColorMatrixElement -> m SVGAnimatedNumberList
getValues self = liftIO (js_getValues self)