{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEGaussianBlurElement
       (js_setStdDeviation, setStdDeviation, pattern SVG_EDGEMODE_UNKNOWN,
        pattern SVG_EDGEMODE_DUPLICATE, pattern SVG_EDGEMODE_WRAP,
        pattern SVG_EDGEMODE_NONE, js_getIn1, getIn1, js_getStdDeviationX,
        getStdDeviationX, js_getStdDeviationY, getStdDeviationY,
        js_getEdgeMode, getEdgeMode, SVGFEGaussianBlurElement(..),
        gTypeSVGFEGaussianBlurElement)
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
 
foreign import javascript unsafe "$1[\"setStdDeviation\"]($2, $3)"
        js_setStdDeviation ::
        SVGFEGaussianBlurElement ->
          Optional Float -> Optional Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.setStdDeviation Mozilla SVGFEGaussianBlurElement.setStdDeviation documentation> 
setStdDeviation ::
                (MonadIO m) =>
                  SVGFEGaussianBlurElement -> Maybe Float -> Maybe Float -> m ()
setStdDeviation self stdDeviationX stdDeviationY
  = liftIO
      (js_setStdDeviation self (maybeToOptional stdDeviationX)
         (maybeToOptional stdDeviationY))
pattern SVG_EDGEMODE_UNKNOWN = 0
pattern SVG_EDGEMODE_DUPLICATE = 1
pattern SVG_EDGEMODE_WRAP = 2
pattern SVG_EDGEMODE_NONE = 3
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFEGaussianBlurElement -> IO SVGAnimatedString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.in1 Mozilla SVGFEGaussianBlurElement.in1 documentation> 
getIn1 ::
       (MonadIO m) => SVGFEGaussianBlurElement -> m SVGAnimatedString
getIn1 self = liftIO (js_getIn1 self)
 
foreign import javascript unsafe "$1[\"stdDeviationX\"]"
        js_getStdDeviationX ::
        SVGFEGaussianBlurElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.stdDeviationX Mozilla SVGFEGaussianBlurElement.stdDeviationX documentation> 
getStdDeviationX ::
                 (MonadIO m) => SVGFEGaussianBlurElement -> m SVGAnimatedNumber
getStdDeviationX self = liftIO (js_getStdDeviationX self)
 
foreign import javascript unsafe "$1[\"stdDeviationY\"]"
        js_getStdDeviationY ::
        SVGFEGaussianBlurElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.stdDeviationY Mozilla SVGFEGaussianBlurElement.stdDeviationY documentation> 
getStdDeviationY ::
                 (MonadIO m) => SVGFEGaussianBlurElement -> m SVGAnimatedNumber
getStdDeviationY self = liftIO (js_getStdDeviationY self)
 
foreign import javascript unsafe "$1[\"edgeMode\"]" js_getEdgeMode
        :: SVGFEGaussianBlurElement -> IO SVGAnimatedEnumeration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.edgeMode Mozilla SVGFEGaussianBlurElement.edgeMode documentation> 
getEdgeMode ::
            (MonadIO m) => SVGFEGaussianBlurElement -> m SVGAnimatedEnumeration
getEdgeMode self = liftIO (js_getEdgeMode self)