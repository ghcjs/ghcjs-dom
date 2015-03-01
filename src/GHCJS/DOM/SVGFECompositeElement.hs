{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFECompositeElement
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
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

pattern SVG_FECOMPOSITE_OPERATOR_UNKNOWN = 0
pattern SVG_FECOMPOSITE_OPERATOR_OVER = 1
pattern SVG_FECOMPOSITE_OPERATOR_IN = 2
pattern SVG_FECOMPOSITE_OPERATOR_OUT = 3
pattern SVG_FECOMPOSITE_OPERATOR_ATOP = 4
pattern SVG_FECOMPOSITE_OPERATOR_XOR = 5
pattern SVG_FECOMPOSITE_OPERATOR_ARITHMETIC = 6
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        JSRef SVGFECompositeElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in1 Mozilla SVGFECompositeElement.in1 documentation> 
getIn1 ::
       (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedString)
getIn1 self
  = liftIO ((js_getIn1 (unSVGFECompositeElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"in2\"]" js_getIn2 ::
        JSRef SVGFECompositeElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.in2 Mozilla SVGFECompositeElement.in2 documentation> 
getIn2 ::
       (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedString)
getIn2 self
  = liftIO ((js_getIn2 (unSVGFECompositeElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"operator\"]" js_getOperator
        :: JSRef SVGFECompositeElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.operator Mozilla SVGFECompositeElement.operator documentation> 
getOperator ::
            (MonadIO m) =>
              SVGFECompositeElement -> m (Maybe SVGAnimatedEnumeration)
getOperator self
  = liftIO
      ((js_getOperator (unSVGFECompositeElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"k1\"]" js_getK1 ::
        JSRef SVGFECompositeElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k1 Mozilla SVGFECompositeElement.k1 documentation> 
getK1 ::
      (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK1 self
  = liftIO ((js_getK1 (unSVGFECompositeElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"k2\"]" js_getK2 ::
        JSRef SVGFECompositeElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k2 Mozilla SVGFECompositeElement.k2 documentation> 
getK2 ::
      (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK2 self
  = liftIO ((js_getK2 (unSVGFECompositeElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"k3\"]" js_getK3 ::
        JSRef SVGFECompositeElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k3 Mozilla SVGFECompositeElement.k3 documentation> 
getK3 ::
      (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK3 self
  = liftIO ((js_getK3 (unSVGFECompositeElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"k4\"]" js_getK4 ::
        JSRef SVGFECompositeElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement.k4 Mozilla SVGFECompositeElement.k4 documentation> 
getK4 ::
      (MonadIO m) => SVGFECompositeElement -> m (Maybe SVGAnimatedNumber)
getK4 self
  = liftIO ((js_getK4 (unSVGFECompositeElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.SVGFECompositeElement (
  ) where
#endif
