{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
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
        SVGFECompositeElement, castToSVGFECompositeElement,
        gTypeSVGFECompositeElement)
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
pattern SVG_FECOMPOSITE_OPERATOR_UNKNOWN = 0
pattern SVG_FECOMPOSITE_OPERATOR_OVER = 1
pattern SVG_FECOMPOSITE_OPERATOR_IN = 2
pattern SVG_FECOMPOSITE_OPERATOR_OUT = 3
pattern SVG_FECOMPOSITE_OPERATOR_ATOP = 4
pattern SVG_FECOMPOSITE_OPERATOR_XOR = 5
pattern SVG_FECOMPOSITE_OPERATOR_ARITHMETIC = 6
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFECompositeElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in1 Mozilla SVGFECompositeElement.in1 documentation> 
getIn1 ::
       (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftIO (nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"in2\"]" js_getIn2 ::
        SVGFECompositeElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in2 Mozilla SVGFECompositeElement.in2 documentation> 
getIn2 ::
       (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedString)
getIn2 self = liftIO (nullableToMaybe <$> (js_getIn2 (self)))
 
foreign import javascript unsafe "$1[\"operator\"]" js_getOperator
        :: SVGFECompositeElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.operator Mozilla SVGFECompositeElement.operator documentation> 
getOperator ::
            (MonadIO m) =>
              SVGFECompositeElement -> m (Maybe SVGAnimatedEnumeration)
getOperator self
  = liftIO (nullableToMaybe <$> (js_getOperator (self)))
 
foreign import javascript unsafe "$1[\"k1\"]" js_getK1 ::
        SVGFECompositeElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k1 Mozilla SVGFECompositeElement.k1 documentation> 
getK1 ::
      (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK1 self = liftIO (nullableToMaybe <$> (js_getK1 (self)))
 
foreign import javascript unsafe "$1[\"k2\"]" js_getK2 ::
        SVGFECompositeElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k2 Mozilla SVGFECompositeElement.k2 documentation> 
getK2 ::
      (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK2 self = liftIO (nullableToMaybe <$> (js_getK2 (self)))
 
foreign import javascript unsafe "$1[\"k3\"]" js_getK3 ::
        SVGFECompositeElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k3 Mozilla SVGFECompositeElement.k3 documentation> 
getK3 ::
      (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK3 self = liftIO (nullableToMaybe <$> (js_getK3 (self)))
 
foreign import javascript unsafe "$1[\"k4\"]" js_getK4 ::
        SVGFECompositeElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k4 Mozilla SVGFECompositeElement.k4 documentation> 
getK4 ::
      (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK4 self = liftIO (nullableToMaybe <$> (js_getK4 (self)))