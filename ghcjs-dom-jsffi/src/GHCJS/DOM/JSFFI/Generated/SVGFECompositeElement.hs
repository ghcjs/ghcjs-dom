{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFECompositeElement
       (pattern SVG_FECOMPOSITE_OPERATOR_UNKNOWN,
        pattern SVG_FECOMPOSITE_OPERATOR_OVER,
        pattern SVG_FECOMPOSITE_OPERATOR_IN,
        pattern SVG_FECOMPOSITE_OPERATOR_OUT,
        pattern SVG_FECOMPOSITE_OPERATOR_ATOP,
        pattern SVG_FECOMPOSITE_OPERATOR_XOR,
        pattern SVG_FECOMPOSITE_OPERATOR_ARITHMETIC, js_getIn1, getIn1,
        js_getIn2, getIn2, js_getOperator, getOperator, js_getK1, getK1,
        js_getK2, getK2, js_getK3, getK3, js_getK4, getK4,
        SVGFECompositeElement(..), gTypeSVGFECompositeElement)
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
pattern SVG_FECOMPOSITE_OPERATOR_UNKNOWN = 0
pattern SVG_FECOMPOSITE_OPERATOR_OVER = 1
pattern SVG_FECOMPOSITE_OPERATOR_IN = 2
pattern SVG_FECOMPOSITE_OPERATOR_OUT = 3
pattern SVG_FECOMPOSITE_OPERATOR_ATOP = 4
pattern SVG_FECOMPOSITE_OPERATOR_XOR = 5
pattern SVG_FECOMPOSITE_OPERATOR_ARITHMETIC = 6
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFECompositeElement -> IO SVGAnimatedString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in1 Mozilla SVGFECompositeElement.in1 documentation> 
getIn1 ::
       (MonadIO m) => SVGFECompositeElement -> m SVGAnimatedString
getIn1 self = liftIO (js_getIn1 self)
 
foreign import javascript unsafe "$1[\"in2\"]" js_getIn2 ::
        SVGFECompositeElement -> IO SVGAnimatedString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in2 Mozilla SVGFECompositeElement.in2 documentation> 
getIn2 ::
       (MonadIO m) => SVGFECompositeElement -> m SVGAnimatedString
getIn2 self = liftIO (js_getIn2 self)
 
foreign import javascript unsafe "$1[\"operator\"]" js_getOperator
        :: SVGFECompositeElement -> IO SVGAnimatedEnumeration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.operator Mozilla SVGFECompositeElement.operator documentation> 
getOperator ::
            (MonadIO m) => SVGFECompositeElement -> m SVGAnimatedEnumeration
getOperator self = liftIO (js_getOperator self)
 
foreign import javascript unsafe "$1[\"k1\"]" js_getK1 ::
        SVGFECompositeElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k1 Mozilla SVGFECompositeElement.k1 documentation> 
getK1 ::
      (MonadIO m) => SVGFECompositeElement -> m SVGAnimatedNumber
getK1 self = liftIO (js_getK1 self)
 
foreign import javascript unsafe "$1[\"k2\"]" js_getK2 ::
        SVGFECompositeElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k2 Mozilla SVGFECompositeElement.k2 documentation> 
getK2 ::
      (MonadIO m) => SVGFECompositeElement -> m SVGAnimatedNumber
getK2 self = liftIO (js_getK2 self)
 
foreign import javascript unsafe "$1[\"k3\"]" js_getK3 ::
        SVGFECompositeElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k3 Mozilla SVGFECompositeElement.k3 documentation> 
getK3 ::
      (MonadIO m) => SVGFECompositeElement -> m SVGAnimatedNumber
getK3 self = liftIO (js_getK3 self)
 
foreign import javascript unsafe "$1[\"k4\"]" js_getK4 ::
        SVGFECompositeElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k4 Mozilla SVGFECompositeElement.k4 documentation> 
getK4 ::
      (MonadIO m) => SVGFECompositeElement -> m SVGAnimatedNumber
getK4 self = liftIO (js_getK4 self)